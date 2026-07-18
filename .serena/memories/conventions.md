# Conventions

- Traditional Chinese prose; stable file identifiers remain English kebab-case.
- Domain IDs are permanently D00-D12. Module IDs use `Dxx-Mnnn` and are allocated only after the responsibility boundary is approved.
- Do not encode applicability, job title, equipment, site, or other mutable facts into a permanent Module ID.
- A module has exactly one Primary Domain and one primary responsibility boundary; cross-domain controls use references rather than duplicated rules.
- A module may have multiple Core, Role-Based, Conditional, or Local Addendum applicability rules.
- Applicability Rule IDs use module-local `AR-nnn`. Rule selectors default to AND, separate rules default to OR for module applicability, and matched Requirement IDs are additive.
- Assignment and audit records store `Module ID + Rule ID` plus the applied Requirement IDs and evidence.
- Conditional rules require trigger, effective date, end/revocation condition, evidence owner, acknowledgement/training requirement, and status.
- Policies specify obligations/prohibitions; procedures specify owner, timing, steps, escalation, and evidence.
- Legal register rows distinguish `依法必須`, `公司政策選擇`, and `個案待法律審查`.
- Use direct official Taiwan government URLs; avoid copying long statutory text into policy modules.
- Never write automatic dismissal as the consequence of a breach; retain proportionality, due process, work-rule alignment, and mandatory-law review.