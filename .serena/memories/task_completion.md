# Task Completion

Documentation work is complete only when:

- HLC module, relationship state, trigger, end condition, Owner/Authority, evidence, related procedure, and Legal Evidence IDs are present where applicable.
- All 15 module packages exist under `docs/modules/HLC00` through `docs/modules/HLC14`, and their artifact references match the canonical catalog.
- All six enterprise governance artifacts are indexed and use the same signature semantics as lifecycle artifacts.
- Helix assignments distinguish Employer, CoE, People, Delivery, Work Priority, Technical, Resource, and HSE roles.
- Taiwan legal claims have an official source, verification date, effective-status check, classification, and explicit unresolved selectors.
- Markdown headings, relative links, HLC, `WF-GAP-*`, `TW-LAW-*`, `TOP-*`, `TW-WF-*`, and `HX-ART-*` IDs and cross-file references are internally consistent.
- Scenarios verify concurrent modules, distinct start dates, overlays, case independence, project release/Bench, parallel closeout, termination restoration, and rehire as a new instance.
- The law catalog and topic matrix are never reported as verified legal evidence.
- `git diff --check`, focused diff review, link validation, ID uniqueness checks, and `git status --short --branch` pass.
- `mem:current_work_state` is updated and read back at the end of a substantial slice.
- Operational or legal compliance is never reported without evidence of required filing, consultation, training, qualification, inspection, risk assessment, permits, site controls, and records.
