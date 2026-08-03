# Interface skill routing

Use the smallest set of installed interface skills that materially improves the deliverable. Check current availability and version before relying on an external skill.

## Installation approval

When an interface capability is needed but no suitable skill is installed, do not install one immediately. Present a short review list, normally two or three candidates, containing:

- skill name and authoritative source;
- the capability it adds and why it matches the current requirement;
- license, current reviewed version or update status, runtime prerequisites, and important risks;
- whether it is required or optional, and the fallback if it is not installed.

Recommend one candidate and explain the choice briefly. Ask the user to approve the exact skill and source before installation. Install only the approved candidate, using its official or trusted installation path. Never bundle the external skill into this project. If the user declines, continue with the best available capability and disclose the quality limitation.

## Recommended roles

1. Use a design-intelligence skill such as `ui-ux-pro-max` when the project needs product-specific palettes, typography, style comparison, design tokens, chart selection, stack guidance, or a persisted design system. Its upstream project is `nextlevelbuilder/ui-ux-pro-max-skill`; preserve its MIT license and attribution, and install or update it from the upstream source rather than vendoring it into this project.
2. Use an implementation and art-direction skill such as OpenAI's curated `frontend-skill` when building a visually strong website, landing page, app, prototype, dashboard, or frontend component. Apply its hierarchy, composition, imagery, copy, responsive layout, and motion checks to the actual implementation.
3. Add an accessibility specialist only when the installed design skill does not provide sufficient WCAG, keyboard, focus, semantic, contrast, reduced-motion, and assistive-technology validation for the product risk.
4. Use image-generation capability only when original raster assets materially improve the interface. Do not substitute generated decoration for information hierarchy or usability.

## Selection rules

- Do not load interface skills for outputs with no user-facing interface.
- Prefer existing brand guidelines and design-system assets over generic style generation.
- Treat external recommendations as inputs, not unquestionable rules. Resolve conflicts in favor of user needs, accessibility, platform conventions, performance, security, and the approved requirements.
- Pin a reviewed upstream version for reproducible production work. Review release notes before updating; do not auto-update unreviewed third-party instructions in a production workflow.
- Never copy third-party skill files into the delivered repository unless their license permits redistribution and the required license and attribution are included.
- Never silently install or update an external skill. Treat a version update as a new approval when it materially changes instructions, scripts, permissions, dependencies, or network behavior.

## UI delivery gate

Before acceptance, verify visual hierarchy, readable typography, responsive behavior, keyboard and focus operation, contrast, reduced motion where relevant, loading, empty, error, offline or retry states, content clarity, touch targets, performance, and consistency with the approved design direction. Capture screenshots or other evidence at representative viewport sizes when practical.
