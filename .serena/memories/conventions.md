# Conventions

- Use Taiwan Traditional Chinese. English is limited to identifiers, established role names, and metadata.
- HLC module IDs are HLC00–HLC14. Do not encode a person, title, site, relationship type, equipment, or applicability conclusion into an HLC ID.
- HLC00–HLC02 are entry modules; HLC03–HLC12 are concurrent and reentrant; HLC13–HLC14 are relationship-ending paths with parallel closeout.
- Keep relationship type, relationship state, HLC module, assignment, overlay, case, work item, and task/hazard selectors separate.
- Each module records purpose, allowed relationship state, trigger, required decisions, Candidate artifacts, evidence, Owner/Authority, and Legal Evidence IDs.
- Each decision or state change records occurred, recorded, approved, notified, received, and effective timestamps where applicable.
- Helix assignment distinguishes Employer, CoE, People, Delivery, Work Priority, Technical, Resource, and HSE roles; one decision has one accountable role.
- Candidate artifacts remain `Candidate` and receive no permanent production document ID until company review and approval.
- Signature semantics distinguish receipt, acknowledgement, consent, bilateral signature, authority approval, and external filing.
- Store only governance fields, empty structures, and evidence definitions; never store named personal data in the repository.
- Legal conclusions use official Taiwan sources and one evidence record per independently verifiable requirement.
- Mark unresolved legal questions `pending`; do not fill gaps with company convention or contract labels.
- Policies state required or prohibited outcomes. Procedures state who acts, when, how, exceptions, and retained evidence.
- Performance, disciplinary action, project release, Bench, or termination is never an automatic document result; preserve independent review, proportionality, protected-state checks, and mandatory-law review.
