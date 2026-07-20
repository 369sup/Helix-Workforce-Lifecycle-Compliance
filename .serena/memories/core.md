# Project Core

- Authoritative repository root: `D:\\GitHub\\Compliance & Code of Ethics`.
- Scope: Taiwan workforce-lifecycle compliance and code-of-conduct governance for electromechanical and lifting operations.
- Current deliverable is documentation governance, empty schemas, and candidate artifacts. The repository must not store named applicant, employee, contractor, consultant, dispatched-worker, or intern data.
- The canonical first-layer architecture is LC00–LC10 in `docs/governance/workforce-lifecycle-model.md`.
- Relationship type, lifecycle stage, and cross-stage event are independent dimensions. Functional or task controls are deferred until the lifecycle model is approved.
- Future functional obligations activate when the person actually starts work, receives authority/access, or begins the relevant task; they do not wait for confirmation after trial.
- LC05 is an optional post-start evaluation state, not an independent employment relationship. Failure does not close a lifecycle directly; it must enter LC08 and then LC09.
- Non-employment labels do not control classification. Use the actual subordination, direction, supervision, and allocation of work.
- Taiwan legal facts require current official government sources and an explicit status: `依法必須`, `公司政策選擇`, or `個案待法律審查`.
- Publication, effective date, transition period, and verification date are distinct facts.
- Start with `README.md`, then the lifecycle model, then `docs/governance/taiwan-legal-register.md`, and follow `AGENTS.md`.
- Supporting memories: `mem:conventions` and `mem:current_work_state`.
- This documentation model is not legal advice and does not establish completed legal compliance.