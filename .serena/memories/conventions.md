# Conventions

- Use Taiwan Traditional Chinese. English is limited to names and metadata where useful.
- LC stage IDs are fixed as LC00–LC10. Do not encode a person, title, site, relationship type, equipment, or applicability category into an LC ID.
- Every stage records: entry event/evidence, applicable relationship, required decision, candidate documents, exit event/evidence, allowed next stage, Owner, Approver, and legal-evidence ID.
- Every transition records: source, trigger/decision, target, and required evidence.
- Keep relationship type, lifecycle stage, cross-stage event, and future functional controls as separate dimensions.
- LC05 is optional. An agreed extension remains in LC05 with evidence. A failed evaluation proceeds through LC08 and LC09. Rehire or renewed cooperation creates a new lifecycle instance.
- Candidate documents remain `Candidate` and receive no permanent document ID in the current slice.
- Store only governance fields, empty structures, and evidence definitions; never store named personal data in the repository.
- Legal conclusions use only official Taiwan government sources and one evidence record per independently verifiable requirement.
- Mark unverified legal questions `待驗證`; do not fill gaps with convention or contract labels.
- Policies state required or prohibited outcomes. Procedures state who acts, when, how, and what evidence remains.
- Disciplinary action or termination is never an automatic document result; preserve proportionality, procedure, work-rule review, and mandatory-law review.