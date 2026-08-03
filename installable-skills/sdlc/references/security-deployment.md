# Security and deployment review

Use only the sections triggered by the product. Scale evidence to likelihood and impact; do not turn a low-risk prototype into a full compliance exercise.

## Deployment decision

Confirm or recommend the target: public web, internal web, mobile app, desktop app, API, or other environment. Record environments, hosting ownership, domain and HTTPS needs, identity and authorization, data location and retention, expected usage, cost boundary, monitoring, backup, rollback, support, and maintenance ownership when consequential.

## Secrets and external APIs

- Never place a long-lived secret in browser code, HTML, a mobile or desktop bundle, logs, or a public repository.
- Route secret-bearing calls through a controlled backend or serverless function. Store secrets in the deployment platform's secret manager or protected configuration.
- Treat a browser-visible identifier as public unless the provider explicitly defines it as publishable. Apply provider-supported origin, scope, quota, and expiration restrictions.
- Add authentication and authorization where needed, input validation, rate and spending limits, safe errors, audit signals, rotation, revocation, and leak response.
- If a static-only design requires a secret, stop at the design gate and revise the architecture.

## Security and privacy

Review least privilege, sensitive-data minimization, encryption in transit, injection and browser risks, file uploads, dependencies and supply chain, retention and deletion, backups, auditability, abuse controls, and incident response in proportion to risk. Do not expose secrets or sensitive data in telemetry or error messages.

## Human and public safety

For location, contact, community, marketplace, or vulnerable-user features, assess stalking, harassment, fraud, impersonation, unwanted contact, precise-location exposure, unsafe transactions, and harmful content. Consider location blurring or delay, consent and visibility controls, report and block functions, moderation, age protections, trusted-contact or emergency escalation, and human review for high-impact decisions.

Record mitigations, evidence, owner, residual risk, and the decision to accept, revise, or block release. Do not claim that risk is eliminated.
