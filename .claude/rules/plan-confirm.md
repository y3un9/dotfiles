# Plan, Confirm, Then Edit

When a task calls for editing files, resolve the requirements and implementation approach before writing the plan. Present the plan and wait until the user confirms **and** says to start. After editing, report in plain language and compare it to the plan.

Why: edits are hard to undo in a shared tree, and the user wants to approve direction before anything changes.

Read-only questions skip this rule.

## Before planning

1. **Clarify the requirements.** Check the relevant code and documentation first. For each remaining ambiguity that affects scope, behaviour, or the expected result, present the plausible interpretations together and explain what each would deliver. Ask which one the user means and wait for the answer before planning. Use decisions the user has already made.
2. **Check existing implementations before proposing new work.** In frontend and backend work, trace comparable features and inspect shared code. Check behaviour and caller contracts, including relevant validation, permissions, transactions, and side effects. Reuse the existing implementation when it fits. For similar behaviour with separate reasons to change, follow the existing pattern and reuse its building blocks. When an existing implementation has a gap, compare extending it with a separate implementation based on caller impact and verification cost.
3. **Compare implementation approaches.** Once the requirements are clear, present the viable approaches that differ in meaningful ways. For each, explain its benefits and drawbacks, including relevant effects on existing behaviour, scope, migration, and verification. Recommend one with a reason where useful. Wait for the user's choice before writing the per-file plan. If the user already chose an approach, use it. If only one approach is viable, explain why and plan it.

In an interactive Claude Code session, use `AskUserQuestion` when available to present the choices. Put any context or tradeoffs that need more room in the accompanying message. When the tool is unavailable, use the same format in plain text and wait for the user's reply.

### Decision prompt templates

**Clarify the requirement**

```text
[Relevant context]
[Question about the unresolved requirement]

- [Option] — [Interpretation and effect on the outcome]
  [Repeat for each plausible interpretation]

[Ask the user to choose or describe another interpretation]
```

**Compare implementation approaches**

```text
[Confirmed goal and relevant constraints]

- [Approach] — [How it works]
  - Benefits: [Benefits]
  - Drawbacks: [Drawbacks and relevant risks]
  [Repeat for each viable approach]

[Recommendation and reason, if useful]
[Ask the user to choose an approach]
```

After the user chooses an approach, present the per-file plan below and ask for confirmation and an explicit instruction to start. A choice in either prompt is a decision for the plan.

## Before editing (stop)

Write the plan for the chosen approach in this order:

1. The decision: what will be true for the user.
2. What already exists, and where you checked it. Name the relevant files or implementations and say what the plan will reuse or follow. When proposing new code, explain the gap in the existing candidates or state that you found no comparable implementation. Note what can still be reused. Only include facts that change the plan. Mark verified facts and judgments. For behaviour changes, trace the affected workflow and data flow from the trigger to the result. Show who calls or hands data to whom, the key inputs and outputs at each relevant step, and any branches or state changes that matter. Point to the code or configuration you checked and mark anything unverified.
3. Where the new fact lives, who writes it, who reads it. If two repos are involved, which ships first, and what breaks if that order flips.
4. A table, one row per file. Columns: repo, path, what changes. Same grain on every row: what that file stores, checks, or shows. A row that only lists filenames is not done.
5. Direction and goal of each change. Identify which steps or data handoffs will change and what inputs, outputs, or state you expect afterward.
6. Risks. Existing behaviour that might change, and what fails if this change is wrong. One risk per line. Write "none" only after checking.
7. Who is blocked, who is not, and which existing path now hits the new step.
8. Stop. Do not checkout, commit, or edit yet.

Short means no extra prose around this list. The table is the plan.

## Start only on explicit go

Edit only after the user confirms the presented plan **and** says to start (e.g. "开始改", "go", "start"). Choosing an approach alone does not authorize edits. If the plan has already been presented, the user can confirm it and authorize the start in the same reply.

After approval, handle routine implementation adjustments within the chosen approach and scope. If new evidence or a user request makes a material change necessary, revisit the affected decisions, present the revised plan, and wait for confirmation and an explicit start before doing the affected work. See autonomous-agent for how to review and correct course during implementation.

## After editing

Explain as if to a non-engineer:

- What changed
- How that compares to the planned goals (matched / missed / extra)
- For behaviour changes, compare the before and after flows from the same trigger. Identify the calls or handoffs that changed. Put representative old and new inputs and outputs next to the relevant steps, including request, response, event, or stored data examples where they help explain the change. Include relevant branch, state, or failure-path changes and say which paths were actually verified.
- What existing behaviour is affected, or that nothing else is
- Commit messages (see commit-message). Say whether anything was committed or PR'd — default is no.

In both the plan and the report, trace the boundaries that matter to the change, whether they are functions, modules, APIs, external services, queues, or databases. Use plain text, arrows, a table, or a diagram, whichever makes the affected flow easiest to follow.

This report is the exception to concise-answers: prefer plain language over brevity.
