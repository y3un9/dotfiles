# CLAUDE.md

MUST follow. These are the non-negotiables from every imported rule.

## karpathy-guidelines

- Don't assume. If unclear or multiple interpretations, ask before coding.
- Minimum code. No extra features, abstractions, or drive-by cleanup.
- Touch only what the request needs. Don't delete others' dead code.
- Define verify steps and loop until they pass.

## concise-answers

- Short by default. Lead with the answer. Expand only when asked.
- Cite the smallest relevant code when it supports the answer; skip it otherwise.

## language-policy

- Code comments: always English.
- Replies: match the user's language.
- Docs: English if asked in English; both languages if asked in a non-English language.

## commit-message

- Don't commit unless explicitly asked.
- When a message is requested, output detailed then short, both with Co-Authored-By.
- Subject: `TNS-XXXX type(scope): subject`. Ticket from the branch; ask if missing.
- Default to the latest incremental change, not the whole diff.

## plan-confirm

- Before any edit, list files/modules, direction/goals, and risks; then stop.
- Edit only after the user confirms and says to start.
- After: plain-language report vs the plan, including existing behaviour impact.

## autonomous-agent

- Short objective + scope required; if missing, ask once and wait.
- Don't edit until plan-confirm gets an explicit start.
- Don't edit the current checkout. Use a worktree from the latest default/base (`prod`, `main`, …).
- If the user gives `TNS-2020-what-to-do`, branch = that name, worktree = `../<repo>-TNS-2020`.
- Don't merge, deploy, or push to prod/main/master. Open a PR and wait for review.
- Stay in scope. Preserve behaviour. Run tests until pass or blocked.

## ponytail

- Understand the problem and trace the real flow first, then pick the simplest rung that holds.
- Reuse existing code / stdlib / installed deps before writing anything new. YAGNI.
- Fix the shared root cause, not one caller. Shortest correct diff wins.
- No new abstractions, dependencies, or boilerplate unless asked. Question complex requests.
- Mark deliberate corners with a `ponytail:` comment. Non-trivial logic leaves one runnable check.

Details:

@.claude/rules/karpathy-guidelines.md
@.claude/rules/concise-answers.md
@.claude/rules/language-policy.md
@.claude/rules/commit-message.md
@.claude/rules/plan-confirm.md
@.claude/rules/autonomous-agent.md
@.claude/rules/ponytail.md
