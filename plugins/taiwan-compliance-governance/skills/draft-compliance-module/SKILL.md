---
name: draft-compliance-module
description: Draft or revise one evidence-linked D00-D12 domain compliance module with Core, Role-Based, or Conditional applicability for this Taiwan electromechanical and lifting project. Use after legal applicability and effective status have been verified, when creating module Markdown, related procedures, registers, acknowledgement rules, or trigger and end conditions. Do not use to research unresolved law, draft an entire policy portfolio at once, or claim legal compliance.
---

# Draft Compliance Module

## Purpose

Draft the smallest approved module and keep policy, procedure, register, form, and site-specific controls distinct.

## Preconditions

1. Confirm the Primary Domain, proposed module ID or `pending`, one or more applicability rules, audience, owner, and requested output.
2. Require verified legal-register evidence for every legal claim. If evidence is missing or stale, use `$verify-taiwan-compliance-law` first.
3. Read the repository `AGENTS.md`, Serena `core`, the relevant README section, the target module, and only the legal-register rows linked to the module.
4. Read [references/module-design.md](references/module-design.md).

## Workflow

1. Read `docs/governance/domain-matrix.md`, assign exactly one D00-D12 Primary Domain, and define the module's responsibility and explicit exclusions.
2. Define one or more `Core`, `Role-Based`, or `Conditional` applicability rules from actual audience and trigger facts. Give each rule a unique `AR-nnn`, keep selector and evidence separate, and bind it to Requirement IDs with `applies_to`.
3. Separate stable rules from operational steps, forms, training materials, equipment registers, and project or site addenda.
4. Draft only the sections needed from the required structure below; use `不適用` with a reason instead of silently omitting a safety-critical section.
5. Link every legal claim to a verified evidence ID. Mark unresolved claims `待驗證` and do not turn them into mandatory employee obligations.
6. If the responsibility boundary is approved, allocate and validate the `Dxx-Mnnn` ID; otherwise keep it `pending`. Validate Primary Domain, Rule IDs, AND/OR semantics, Requirement ID mappings, trigger and end conditions, owner, records, exception handling, and revision metadata.
7. Inspect the actual diff and report assumptions, residual risks, and unfinished legal review.

## Required Module Structure

- Document Control
- Purpose and responsibility boundary
- Scope, audience, and exclusions
- Definitions
- Activation triggers and end conditions
- Required conduct and controls
- Prohibited conduct
- Disclosure, approval, and conflict-handling process
- Required qualifications, authorization, training, or inspection
- Records, retention owner, and evidence
- Reporting, non-retaliation, escalation, and stop-work authority where relevant
- Exceptions and who may approve them
- Consequences stated without automatic or unlawful sanctions
- Related procedures, forms, modules, and legal evidence IDs
- Revision history and effective date

## Guardrails

- A matched Role-Based or Conditional rule may add controls but may not reduce an obligation activated by another applicable rule.
- A module has exactly one Primary Domain. Cross-domain controls use references and may not duplicate the authoritative rule.
- A module may have multiple applicability rules. Do not collapse Role-Based and Conditional selectors into one ambiguous rule.
- Employee acknowledgement is evidence of communication, not a substitute for consultation, training, inspection, consent, or another legal prerequisite.
- Do not draft automatic dismissal, blanket wage deductions, unrestricted monitoring, or post-employment non-compete language without verified legal grounds and case-specific review.
- Do not permit exceptions to statutory qualifications, machinery inspection, stop-work rights, incident reporting, or non-retaliation duties.
- Keep detailed work methods and rapidly changing equipment steps in controlled procedures, not in the stable code of conduct.
- Do not claim that a well-formed module proves implementation or compliance.
