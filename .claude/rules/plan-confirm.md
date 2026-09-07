# Plan, Confirm, Then Edit

Whenever the next step is to edit files: list the plan, stop, and wait. Do not edit until the user confirms **and** says to start. After editing, report in plain language and compare it to the plan.

Read-only questions skip this rule.

## Before editing (stop)

List:

- Files / modules / functions to touch
- Direction and goal of each change
- Risks, including existing behaviour that might be affected

Then stop. Do not checkout, commit, or edit yet.

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
