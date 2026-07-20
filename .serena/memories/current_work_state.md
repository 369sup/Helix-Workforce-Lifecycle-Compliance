# Current Work State

## Checkpoint

- Date: 2026-07-20.
- Branch: `main`; lifecycle-first rearchitecture is present as uncommitted working-tree changes.
- Canonical governance is now `docs/governance/workforce-lifecycle-model.md` with LC00–LC10, relationship branches, transition rules, cross-stage events, scenario expectations, and a candidate-document inventory.
- `docs/governance/taiwan-legal-register.md` contains eight verified evidence records for trial arrangements and rights, agreed extension, seniority, trial-period termination, substantive labor-contract classification, dispatch relationships, and dispatch-versus-contracting identification.
- The superseded control-domain matrix and its drafting skill were removed. `README.md`, `AGENTS.md`, tests guidance, the legal-verification skill, and plugin metadata now use lifecycle-first terminology.
- Repository plugin source is version 0.3.0. The already installed 0.2.3 cache was intentionally not overwritten; using the new source requires a later plugin reinstall or refresh and a Codex restart.

## Validation Completed

- Lifecycle checks passed for 11 unique stages, 23 allowed-transition rows, eight verified evidence records, and 13 required scenario assertions.
- All stage rows have entry evidence, exit evidence, allowed-next values, Owner, and Approver.
- Relative Markdown links and trailing whitespace checks passed for the canonical documents.
- The remaining legal-verification skill passed quick validation.
- The source plugin passed plugin validation.
- `git diff --check` exited successfully; line-ending conversion warnings remain informational for several pre-existing CRLF working-copy paths.

## Boundaries and Risks

- Every listed document remains `Candidate`; no permanent document IDs or production templates were created.
- The repository contains no named workforce records.
- Offer Letter effects, fixed-term and part-time rules, internship classification, personal-data handling, operational onboarding duties, transfers, leave, termination, closeout, and post-employment duties still require focused legal evidence.
- Owner and Approver values are role placeholders, not named assignments.
- Functional, qualification, authority, equipment, task, and site-control taxonomy remains deferred until lifecycle approval.
- This model does not establish that any company, document, process, or individual case complies with Taiwan law.

## Next Smallest Slice

1. Review and approve the LC00–LC10 model, transition rules, relationship branches, and role placeholders.
2. Select LC02–LC05 as the first vertical slice only after its pending legal questions and actual relationship variants are confirmed.
3. Draft specific Offer, pre-start, onboarding, and trial artifacts one at a time from verified evidence.
4. Design functional and operational controls later, activating them from actual start, authority, or task assignment rather than confirmation after trial.

Supporting memories: `mem:core` and `mem:conventions`.