---
name: sdlc
description: Convert approved requirements into designed, implemented, tested, documented, and releasable software. Use for system specifications, architecture, implementation planning, coding, verification, deployment preparation, traceability, maintenance planning, or teaching software development life-cycle practices.
---

# Software Development Life Cycle

Start from an approved project brief or establish a requirements baseline. Preserve existing user work and keep requirements, implementation, and tests traceable.

## Workflow

1. **Initiate** — establish goal, scope, stakeholders, constraints, risks, and delivery context.
2. **Requirements** — write functional and non-functional requirements, data contracts, error behavior, acceptance criteria, and non-goals.
3. **Design** — select architecture, interfaces, configuration strategy, security boundaries, and operational model. Record consequential decisions.
4. **Plan and build** — divide work into verifiable increments. Implement the smallest end-to-end slice first.
5. **Verify** — run unit, integration, system, regression, performance, security, reproducibility, and user acceptance checks in proportion to risk.
6. **Release and operate** — provide installation, migration, rollback, monitoring, support, and maintenance material.

## Stage gates

At every gate, show completed artifacts, test evidence, open risks, changed requirements, and the next decision. Use progress updates for internal gates and continue under existing authorization. Request approve, revise, or pause only at explicitly agreed guided checkpoints or when a material user decision or new authority is required. Do not claim completion while required tests or user acceptance remain outstanding.

Use `assets/system-spec-template.md` for a new specification and `assets/traceability-template.md` to map each requirement to implementation and test evidence. Read `references/sdlc-gates.md` when designing quality gates or teaching SDLC.

## Completion-first execution

For implementation or completion requests, continue until the approved scope meets its applicable acceptance criteria. Incremental implementation is a working method, not permission to hand off an unfinished batch.

- Maintain a concrete list of required work, verification evidence, and blockers. Before any final response, review every unfinished item: if any safe, authorized, actionable work remains, perform it and verify the result instead of ending the turn.
- Partial milestones, a green build, content counts, elapsed effort, a long task, or a list of remaining work are not completion conditions. Do not repeatedly return "this batch is done; the rest is pending" when the rest is still within reach.
- Give concise progress updates while continuing. Do not ask the user to repeat "continue" or approve an unchanged, already-authorized next increment.
- Preserve the original quality gates. Do not shrink scope, lower standards, replace required content with placeholders, or label untested work complete to reach a stopping point.
- If one item needs unavailable external input, credentials, permission, an independent reviewer, or actual user participation, first complete all other unblocked work. Then report the exact blocker, checks and safe alternatives attempted, remaining acceptance criteria, and the smallest action needed from the user. This is a blocked-status handoff, not a completion claim. Never manufacture external review or test evidence.
- Respect explicit user pauses, changed scope, requested review checkpoints, and read-only requests. Persistence does not authorize new external writes, paid services, deployment targets, permission changes, or indefinite retrying.
- If an actual platform interruption or hard execution limit prevents continuation, save the precise current state and next actionable step when possible; report the interruption honestly, not as completed work. Do not promise unattended continuation without a supported, authorized mechanism.
- Final delivery is appropriate only after the requested outcome is verified, the user explicitly stops or narrows the work, an agreed checkpoint requires their decision, or no meaningful authorized progress remains without resolving a concrete blocker.

## Make product decisions adaptively

- Ask whether the deliverable is a specification, prototype, or deployable product only when ambiguous.
- Derive web, mobile, desktop, API, CLI, or document delivery from the use context. If no preference exists, recommend one stack with a short rationale and at most two meaningful alternatives.
- For user-facing products, infer brand constraints first. Offer two or three concrete visual directions only when style is consequential and unresolved. Include accessibility, responsive behavior, empty states, and error states in acceptance criteria.
- Load an installed specialist skill when its capability materially improves the requested artifact. Do not search for skills speculatively or claim an unavailable skill was used. Explain a missing dependency when it blocks quality.
- Read `references/security-deployment.md` for external APIs, credentials, personal or sensitive data, authentication, public deployment, user-generated content, location, contact, transaction, or other elevated-risk features.
- Read `references/interface-skill-routing.md` when a deliverable includes a user interface or visual design. Use specialist skills as independent dependencies; do not copy them into this skill or remove their license and attribution.
