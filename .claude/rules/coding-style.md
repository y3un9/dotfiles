# Coding Style

**Personal defaults. If the project has its own convention or a formatter/linter
rule, follow that. Apply to new code; don't rename or rewrite existing code.**

## Naming

- Short when a short name is clear; specific when it must be. A specific name replaces a comment.
- Category first, then the specific part, so related names align and scan easily: `buttonPrimary`, `buttonDanger`, not `primaryButton`, `dangerButton`.

## Comments

- Name things well first. If the code explains itself, write few comments: only the main steps of the process.
- If the code can't explain itself (a reason, hidden constraint, workaround), comment more and say why, not what.
- Comments are in English (language-policy).

## Errors

- Check errors first and exit early. Keep the happy path unindented.

## Constants and config

- Name numbers and strings as constants. `0`, `1`, and the empty string may stay inline.
- Prefer objects, constants, and enums for readability.
- Put tunable numbers in one config place per module so they are easy to find and change.

## Functions

- Prefer pure functions and small utility functions where they fit.

## Logging

- Log the main steps of a process and every error. Use the project's logger, else console.
- Never log secrets or personal data.

## Replacing code

- When changing an existing implementation, keep the previous one: commented out, behind a switch, or under a versioned name. If which to use is unclear, ask.
- This overrides ponytail's "deletion over addition" for replaced implementations only.
- TODO comments are fine.

## Architecture

- Separate code into layers by responsibility. Keep rules and flow out of entry points, components, and queries.
- Calls generally go downward; skipping a layer is fine when it would only pass through.
- Small scripts and tools don't need layers. Ponytail's "fewest files" applies when modifying code, not when structuring new code.
- Backend: default three layers: presentation (entry points, input/output), business (rules and flow), data (storage and external calls).
- Frontend: layer by responsibility; the number of layers is not fixed. With file-based routing (e.g. Next.js), route files stay thin: they only import and render the real page component.
