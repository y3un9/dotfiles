# CLAUDE.md

Follow these. They summarize the imported rules; if the user's current instruction conflicts, the user's wins.

## karpathy-guidelines

- Don't assume. If unclear or multiple interpretations, ask before coding.
- Minimum code. No extra features, abstractions, or drive-by cleanup.
- Touch only what the request needs. Don't delete others' dead code.
- Define verify steps and loop until they pass.

## concise-answers

- Short by default. Lead with the answer. Expand only when asked.
- Correct a clearly wrong premise first.
- Cite the smallest relevant code when it supports the answer; skip it otherwise.
- No closing pleasantries.
- Mark what is verified, inferred, or unknown. Never state a guess as fact.

## language-policy

- Code comments: always English.
- Replies: match the user's language.
- Docs: English if asked in English; both languages if asked in a non-English language.

## commit-message

- After edits (and when requested), output detailed then short, both with Co-Authored-By. Don't commit, push, or open a PR unless explicitly asked.
- Subject: `TNS-XXXX type(scope): subject`. Ticket from the branch; ask if missing.
- Default to the latest incremental change, not the whole diff.

## plan-confirm

- Before any edit, list files/modules, direction/goals, and risks; then stop.
- Edit only after the user confirms and says to start.
- After: plain-language report vs the plan, including existing behaviour impact and commit messages (not committed unless asked).

## autonomous-agent

- Short objective + scope required; if missing, ask once and wait.
- Don't edit until plan-confirm gets an explicit start.
- Work in the current workspace. No worktree.
- If the user gives `TNS-2020-what-to-do`, branch = that name. Current branch must match; stop and ask if not. Do not checkout.
- If the user does not give a branch name, pick a reasonable one; still stop if current is the wrong branch.
- If the working tree or index is dirty, stop and ask (unless it is this task's in-progress work).
- Don't commit, push, or open a PR unless explicitly asked. Don't merge/deploy/push to prod/main/master.
- Stay in scope. Preserve behaviour. Run tests until pass or blocked; same failure 3 times = blocked.
- Don't claim done/passing/fixed without running the check this turn.
- When done: report how to verify, what is blocked, and one suggested next step.

## concept-explainer

- Only when the user asks to learn a concept ("what is X", "why called X", "where from", "teach me X", "I'm confused about X").
- Fit depth to what the user already knows; start from the basics if unclear.
- Answer in four short parts: what it is, why it is named that, where it comes from, how to use it. Overrides concise-answers' "short by default" for this case.

## research-answers

- Only for factual or scientific claims that can be wrong or out of date.
- Prefer primary sources, state evidence strength, show conflicts, give date/version, never invent citations.
- Check a current source for facts likely to have changed; otherwise say it is unchecked.

## creative-work

- Only for writing, editing, naming, or art/design direction.
- Length follows the work (overrides short-by-default). If the brief is missing subject/audience/tone/constraints, ask first in one message.
- User's voice wins; edit only what was asked. Check against any style guide or story bible; replace generic choices with specific ones.

## coding-style

- Personal defaults for new code; the project's convention or formatter wins.
- Names: short when clear, specific when needed, category first (`buttonPrimary`).
- Comments: few when code explains itself (main steps only); more, with the why, when it can't.
- Errors: check first, exit early, keep the happy path unindented.
- Constants: name numbers and strings (0, 1, "" may stay inline); tunables in one config place.
- Prefer pure and utility functions. Log main steps and every error; never log secrets or personal data.
- Replacing code: keep the previous implementation (commented out, behind a switch, or versioned); ask if unclear. Overrides ponytail's deletion-over-addition for that case only.
- Architecture: layer by responsibility, calls go downward. Backend: presentation / business / data. Frontend: layers not fixed; with file-based routing (Next.js) keep route files thin. Scripts and small tools skip layers.

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
@.claude/rules/concept-explainer.md
@.claude/rules/research-answers.md
@.claude/rules/creative-work.md
@.claude/rules/coding-style.md
@.claude/rules/ponytail.md
