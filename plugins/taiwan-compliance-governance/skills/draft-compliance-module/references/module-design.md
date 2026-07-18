# Compliance Module Design

## Canonical architecture

Read `docs/governance/domain-matrix.md` before assigning or changing a module. D00–D12 is the physical architecture; Core, Role-Based, Conditional, and Local Addendum are applicability dimensions.

Do not invent a new Domain or reuse a retired ID. If no Domain boundary fits, report the gap for governance review instead of guessing.

## Domain and applicability answer different questions

| Dimension | Question it answers | Stable result |
| --- | --- | --- |
| Primary Domain | Which durable control purpose and Owner owns the module? | Exactly one of D00–D12 |
| Core rule | Which defined population follows this continuously? | Population and effective version |
| Role-Based rule | Who has added responsibility because of authority, qualification, or function? | Role, qualification, assignment and handover evidence |
| Conditional rule | When, where, or under what assignment does an extra rule activate? | Trigger, start, end, revocation and evidence |
| Local Addendum rule | Which site, client, contract, or location overlays the module? | Scope, period, approver and conflict rule |

A module can contain multiple applicability rules. Role-Based and Conditional can apply together. A lifting supervisor's continuing accountability answers `who`; the approved lift, equipment, capacity, location, and work conditions answer `when`. Keep them as separate rules with separate evidence.

## Applicability rule contract

- Give every rule a module-local, permanent `AR-nnn` Rule ID.
- Bind every rule to one or more Requirement IDs through `applies_to`.
- Selectors within a rule default to `match: all`; use `match: any` only when explicitly intended.
- Separate rules default to OR for module applicability. If multiple rules match, their Requirement IDs are additive and form a union.
- Store `Module ID + Rule ID` in assignment and audit records.
- A Role-Based rule records assignment, qualification where relevant, handover, and revocation evidence.
- A Conditional rule records trigger, effective start, end, revocation, and corresponding evidence.

## High-risk boundary checks

| Related Domains | Primary boundary |
| --- | --- |
| D03 / D04 / D08 | D03 owns payment and financial separation; D04 owns sell-side bids and customer conduct; D08 owns buy-side sourcing and third-party selection |
| D04 / D05 | D04 owns commercial pricing and external quotations; D05 owns technical quantities, resource needs, and engineering cost estimates |
| D05 / D06 / D07 / D10 | D05 sets engineering method; D06 defines measurement requirements and verifies quality evidence; D07 controls work hazards and permits; D10 owns calibration execution, equipment status, isolation, return to service, and lifecycle |
| D07 / D08 | D08 owns contractor selection and contract; D07 owns site entry and joint-operation safety |
| D07 / D09 / D10 | D07 owns exposure and safe work; D09 owns material custody and movement; D10 owns machinery and vehicle condition |
| D11 / D12 | D11 owns identity, data, privacy and cybersecurity; D12 owns AI approval, automation and algorithmic decision risk |

## Document-type boundary

| Document | Stable responsibility |
| --- | --- |
| Policy or code module | Principles, accountabilities, prohibitions, decision rights, escalation, and required records |
| Procedure or work instruction | Operational sequence, checks, methods, and hand-offs |
| Form or register | Repeatable evidence fields, approvals, inspections, assignments, and retention metadata |
| Project or site addendum | Local hazards, client conditions, emergency contacts, access rules, and temporary controls |

## Drafting rules

- One module has one Primary Domain, one primary responsibility, and explicit exclusions.
- Use `pending` while drafting a new responsibility boundary. Allocate a `Dxx-Mnnn` ID only after that boundary is approved.
- Keep applicability in metadata; do not encode Core, role, condition, job title, equipment, or site into the permanent ID.
- Give every Conditional rule observable activation, end, and revocation conditions.
- Give every Role-Based rule a named role, qualification or authority gate, and handover rule.
- Reference related Domains and modules instead of copying shared obligations.
- Put volatile technical values and equipment-specific steps in controlled procedures or registers.
- State the owner of each approval, record, review, and exception.
- Preserve legal evidence identifiers so later legal updates can identify affected modules.
