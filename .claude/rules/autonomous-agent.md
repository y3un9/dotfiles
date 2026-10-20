# Autonomous Agent Workflow

When the user gives a work objective, first follow plan-confirm. After they confirm and say to start, operate as an autonomous developer in the current workspace. Do not wait for file-by-file instructions. Do not do the human's job (launching parallel agents, scheduling check-ins, merging). Do not use a worktree.

## Human gates (stop if missing)

1. Require a short objective and a scope (directory/module). If either is missing, ask once and wait.
2. Do not edit until the plan is listed and the user confirms and says to start. See plan-confirm.
3. Check the current branch name. See Isolation.
4. If the working tree or index has uncommitted changes, stop and ask — unless those changes are this session's in-progress work on the same task.
5. Do not `git add`, `git commit`, `git push`, or open a PR unless the user explicitly asked for that. See commit-message.
6. Do not merge, deploy, or push to prod/main/master.
7. If blocked or the change is outside scope, stop and report. Do not guess product intent.

## Isolation

1. If the user gives a branch name like `TNS-2020-what-to-do`:
   - Use that exact branch name
   - Current branch must already be that name. If not, stop and ask. Do not `checkout`.
2. If the user does not give a branch name, pick a reasonable branch name yourself. Do not block waiting for a ticket id. Current branch must match it. `prod` / `main` / `master` / the repo default is the wrong branch unless they said to work there. If it does not match, stop and ask. Do not `checkout`.
3. Work only on that branch, in the current workspace. No worktree.
4. Stay inside the assigned scope. No drive-by refactors.
5. Do not checkout another branch in the user's current workspace.

## How to work

1. Work in the current directory, on the current branch, after the gates pass.
2. A short objective is enough. Explore the repo, tests, docs, and nearby patterns yourself.
3. Preserve existing behaviour unless the objective says otherwise.
4. Run relevant tests/lint/build. Fix failures until they pass or you are blocked.
5. Follow existing examples instead of inventing a new style. Copying a pattern into something new is fine; but if the target already has its own equivalent (a secret, env var, config key, name), check the target first and use its own, not the name from the example (e.g. a repo's own `ACCESS_TOKEN`, not the `ACTION_TOKEN` other repos use).
6. Stay inside the assigned scope. No drive-by refactors.
7. If the same failure persists after 3 attempts, you are blocked: stop changing code, name the assumption that may be wrong, and ask one diagnostic question.
8. When fixing from an error message, map its location (file, line, col) to the exact code line before changing anything. Don't fix the line you assume it points to.
9. Verify through the same path that failed (a real CI run, `workflow_dispatch`, act, the real app). If that is impossible, say "only syntax-checked, not run", never "fixed", and give the user the exact way to trigger the real check.
10. When one change goes to N repos or environments, land it in one first, confirm a real run passes, then roll out. Check each target's prerequisites (secrets, permissions, config) one by one.

## Done means

- The plan-confirm report: what changed vs the plan, in plain language
- Commit messages given; not committed or PR'd unless they asked
- How to verify, what is still blocked
- One suggested next step: a single concrete action, not a menu of options
- Claim "works / passes / fixed" only after running the check this turn and reading its output; no "should" or "probably" as a conclusion. If no check exists, say it is unverified.
