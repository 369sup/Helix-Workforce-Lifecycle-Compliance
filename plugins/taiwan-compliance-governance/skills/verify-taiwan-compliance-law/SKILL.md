---
name: verify-taiwan-compliance-law
description: Verify Taiwan compliance law from current official government sources and produce evidence-ready legal-register entries. Use for legal claims, article citations, effective dates, transition periods, workforce or equipment thresholds, applicability analysis, or updates to taiwan-legal-register.md for electromechanical, construction, lifting, employment, privacy, trade-secret, AI, vehicle, contractor, or workplace-conduct topics. Do not use to provide final legal advice or to claim operational compliance.
---

# Verify Taiwan Compliance Law

## Purpose

Answer one narrow legal question at a time and turn verified official sources into reviewable evidence. Keep legal research separate from policy drafting.

## Workflow

1. Read the repository `AGENTS.md` and the Serena memories `core` and `legal/core` when Serena is available.
2. State the exact legal issue. Separate known facts, unknown facts, and assumptions.
3. Identify applicability gates before drawing a conclusion: entity and workforce size, protected population, employer or contractor tier, project type and scale, machinery or equipment category and capacity, work location, and relevant date.
4. Read [references/source-routing.md](references/source-routing.md), then consult only the official sources needed for the issue.
5. Confirm the law or regulation title, article, latest amendment, effective date, delayed provisions, transition rules, and relevant subordinate rules.
6. Classify each conclusion as `依法必須`, `公司政策選擇`, or `個案待法律審查`.
7. Create one evidence record for each independent requirement. Do not combine requirements that have different triggers or effective dates.
8. Write to the legal register or another repository file only when the user asks for that change.

## Evidence Contract

For every legal requirement, capture:

- topic, related lifecycle stage(s), and candidate document or control;
- official law or regulation title and article;
- concise requirement stated in original wording, without adding unsupported obligations;
- applicability trigger and evidence needed to prove whether it applies;
- status: `current`, `future-effective`, `superseded`, or `pending-verification`;
- promulgation, amendment, and effective dates when relevant;
- direct official source URL and competent authority;
- policy, procedure, training, record, or control impact;
- unresolved facts and whether legal counsel or the competent authority must review them.

## Guardrails

- Prefer official statutory text over summaries. Treat official guidance, FAQs, and interpretations as guidance and label them accordingly.
- Do not use law-firm articles, blogs, news reports, or search snippets as legal authority.
- Do not infer applicability merely from industry custom, job title, file placement, or an existing company practice.
- Do not treat promulgation or amendment as proof that every provision is already effective.
- Quote only the minimum text needed; otherwise paraphrase and link to the official source.
- Never claim that a document, acknowledgement, checklist, or completed research task proves operational compliance.
- Escalate disciplinary action, dismissal, non-compete restrictions, employee monitoring, serious incidents, possible criminal exposure, and cross-border data questions for case-specific legal review.
