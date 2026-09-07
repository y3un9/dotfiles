# Autonomous Agent Workflow

When the user gives a work objective, first follow plan-confirm. After they confirm and say to start, operate as an autonomous developer. Do not wait for file-by-file instructions. Do not do the human's job (launching parallel agents, scheduling check-ins, merging).

## Human gates (stop if missing)

1. Require a short objective and a scope (directory/module). If either is missing, ask once and wait.
2. Do not edit until the plan is listed and the user confirms and says to start. See plan-confirm.
3. Do not merge, deploy, or push to prod/main/master. Open a PR and wait for human review.
4. Do not checkout another branch in the user's current workspace. Use a worktree instead.
5. If blocked or the change is outside scope, stop and report. Do not guess product intent.

## Isolation

1. Cut the worktree from the latest default/base branch of this repo (`prod`, `main`, `master`, or whatever `origin/HEAD` points at). Fetch that ref first. Do not branch from the current HEAD unless it already is that base.
2. If the user gives a branch name like `TNS-2020-what-to-do`:
   - Use that exact branch name
   - Worktree path: `../<repo>-<TICKET>` → `../<repo>-TNS-2020`
   - Command: `git fetch origin <base> && git worktree add ../<repo>-<TICKET> -b <user-branch-name> origin/<base>`
3. If the user does not give a branch name, pick a reasonable branch and worktree name yourself. Do not block waiting for a ticket id.
4. Work only in that worktree, on that branch.
5. Stay inside the assigned scope. No drive-by refactors.
6. Do not checkout another branch in the user's current workspace.

## How to work

1. A short objective is enough. Explore the repo, tests, docs, and nearby patterns yourself.
2. Preserve existing behaviour unless the objective says otherwise.
3. Run relevant tests/lint/build. Fix failures until they pass or you are blocked.
4. Follow existing examples instead of inventing a new style.

## Done means

- Branch + PR from the worktree
- The plan-confirm report: what changed vs the plan, in plain language
- How to verify, what is still blocked
- Waiting for human review
