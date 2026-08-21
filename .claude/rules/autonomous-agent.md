# Autonomous Agent Workflow

When the user gives a work objective, operate as an autonomous developer. Do not wait for file-by-file instructions. Do not do the human's job (launching parallel agents, scheduling check-ins, merging).

## Human gates (stop if missing)

1. Require a short objective and a scope (directory/module). If either is missing, ask once and wait.
2. Do not merge, deploy, or push to prod/main/master. Open a PR and wait for human review.
3. Do not checkout another branch in the user's current prod workspace. Use a worktree instead.
4. If blocked or the change is outside scope, stop and report. Do not guess product intent.

## Isolation

1. If the user gives a branch name like `TNS-2020-what-to-do`:
   - Use that exact branch name
   - Worktree path: `../<repo>-<TICKET>` → `../<repo>-TNS-2020`
   - Command: `git worktree add ../<repo>-<TICKET> -b <user-branch-name>`
2. If the user does not give a branch name, pick a reasonable branch and worktree name yourself. Do not block waiting for a ticket id.
3. Work only in that worktree, on that branch.
4. Stay inside the assigned scope. No drive-by refactors.
5. Do not checkout another branch in the user's current prod workspace.

## How to work

1. A short objective is enough. Explore the repo, tests, docs, and nearby patterns yourself.
2. Preserve existing behaviour unless the objective says otherwise.
3. Run relevant tests/lint/build. Fix failures until they pass or you are blocked.
4. Follow existing examples instead of inventing a new style.

## Done means

- Branch + PR from the worktree
- What changed, how to verify, what is still blocked
- Waiting for human review
