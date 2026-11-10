# Plan, Confirm, Then Edit

Whenever the next step is to edit files: list the plan, stop, and wait. Do not edit until the user confirms **and** says to start. After editing, report in plain language and compare it to the plan.

Why: edits are hard to undo in a shared tree, and the user wants to approve direction before anything changes.

Read-only questions skip this rule.

## Before editing (stop)

This plan is the default before any edit. Write it in this order:

1. The decision: what will be true for the user.
2. What already exists, and where you checked it. Only facts that change the plan. Mark verified and mark our calls.
3. Where the new fact lives, who writes it, who reads it. If two repos are involved, which ships first, and what breaks if that order flips.
4. A table, one row per file. Columns: repo, path, what changes. Same grain on every row: what that file stores, checks, or shows. A row that only lists filenames is not done.
5. Direction and goal of each change.
6. Risks. Existing behaviour that might change, and what fails if this change is wrong. One risk per line. Write "none" only after checking.
7. Who is blocked, who is not, and which existing path now hits the new step.
8. Stop. Do not checkout, commit, or edit yet.

Short means no extra prose around this list. The table is the plan.

## Start only on explicit go

Edit only after the user confirms the plan **and** says to start (e.g. "开始改", "go", "start"). Approving the plan alone is not enough.

If they change the plan, re-list and wait again.

## After editing

Explain as if to a non-engineer:

- What changed
- How that compares to the planned goals (matched / missed / extra)
- What existing behaviour is affected, or that nothing else is
- Commit messages (see commit-message). Say whether anything was committed or PR'd — default is no.

This report is the exception to concise-answers: prefer plain language over brevity.
