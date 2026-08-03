---
name: dt-sdlc
description: Orchestrate a conversational project from Design Thinking discovery through SDLC implementation, verification, and delivery. Use when a user wants to go from an idea or teaching case to a complete tested product with stage approvals, saved decisions, change control, traceability, and final acceptance. Coordinates the dt and sdlc skills when installed.
---

# DT to SDLC Orchestrator

Coordinate `$dt` first, then `$sdlc`. Keep this skill thin: use the sibling skills for method details and use this skill for state, handoff, gates, and completion decisions.

## Select an interaction mode

- **guided** — pause for explicit user approval at every major gate; default for teaching and uncertain requirements.
- **checkpoint** — work within a phase and pause at DT handoff, design approval, release readiness, and final acceptance.
- **continuous** — continue while requirements are clear and actions are safe; pause for material ambiguity, cost, external publication, destructive action, or expanded authority.
- **teaching** — use guided behavior and add method explanations, reflection questions, and assessment criteria.

Record the chosen mode in `project-state.yaml`.

## Fast start

Use this path before the lifecycle on the first turn of a new project and when resuming an existing project:

1. Inspect the user's request. Read only `project-state.yaml` and the current brief when they already exist; do not recursively scan the workspace.
2. Infer the goal and interaction mode, then give a concise interpretation and ask at most three decisions that can materially change the work.
3. Do not browse, perform external research, load sibling-skill references, design architecture, prototype, or create a specification and supporting logs during the first turn unless the user explicitly requested that exact work.
4. In `guided` and `teaching` modes, stop after the initial questions. In `checkpoint` mode, stop when an answer can change the problem or scope. In `continuous` mode, continue only when the brief is already clear, and load only the next phase's material.
5. Resume an existing project from `current_phase`; never reinitialize it or repeat completed research and gates.

After the initial baseline is confirmed, create at most the missing state artifact and begin one phase at a time. This startup boundary takes priority over the lifecycle sequence below.

## Lifecycle

1. Complete the fast-start baseline, then initialize missing project state from `assets/project-state-template.yaml` without overwriting existing state.
2. Apply `$dt` one approved phase at a time through Empathize, Define, Ideate, Prototype, and Test; load only the material needed for the current phase.
3. Validate the DT handoff against `references/handoff-contract.md`.
4. Require explicit approval before setting `dt_handoff: approved` in guided or checkpoint mode.
5. Apply `$sdlc` through Requirements, Design, Build, Verify, Release, and Operate.
6. Maintain `decision-log.md`, `change-log.md`, and traceability using `assets/traceability-template.md`.
7. On a changed approved requirement, record impact, increment the requirements version, and reopen affected gates.
8. Run `scripts/validate_lifecycle.py <project-state.yaml>` before claiming the project is complete.
9. Request final user acceptance and record known limitations and deferred work.

If `$dt` or `$sdlc` is unavailable, stop and explain which dependency is missing. Do not silently replace a missing sibling skill with an improvised process.

## Conversation contract

Ask one to three decision-focused questions at a time. At every gate provide confirmed facts, assumptions, open questions, artifacts, evidence, and the proposed next phase. Offer approve, revise, or pause. Never fabricate approval.

Adapt question depth to uncertainty, complexity, and risk. First infer answers from the user's request and existing artifacts. For a simple low-risk request, confirm a short interpretation instead of running a questionnaire. Ask progressively deeper questions only when an answer could materially change scope, user experience, architecture, security, deployment, cost, or acceptance. Recommend a sensible default when the user has no preference.

When a user decision is required, prefer numbered multiple-choice questions:

1. List every plausible option you can infer; group equivalent choices instead of omitting meaningful alternatives.
2. Mark the recommended option when one exists, but keep the other plausible choices visible.
3. Number the options and state the reply format. For multiple questions, use a compact format such as `1-2, 2-1`.
4. Include `0. Other (enter text)` so the user can answer in their own words when no option fits.
5. Ask for free text directly only when the answer cannot be represented as meaningful choices, such as a unique path, value, evidence, or narrative.

At a gate, default to `1. Approve`, `2. Revise`, `3. Pause`, and `0. Other (enter text)`. This numbered-choice rule overrides conflicting sibling-skill defaults while `$dt-sdlc` is orchestrating the project.

Read `references/quality-gates.md` before defining or evaluating stage exit criteria.
