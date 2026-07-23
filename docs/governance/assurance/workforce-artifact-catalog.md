# Helix Workforce Artifact Catalog

> 狀態：Draft / Candidate inventory
> 重建基準日：2026-07-23
> Canonical modules：[Helix Workforce Lifecycle Model](../models/workforce-lifecycle-model.md)

> [!IMPORTANT]
> 每列只代表一種未來實體文件、表單、決定、通知、申報或紀錄。這些項目仍是 Candidate schema，不是可直接簽署的正式模板，也不證明公司已完成法律或操作遵循。

## 1. Atomic Artifact Contract

```yaml
artifact_id: HX-ART-GOV-NNN | HX-ART-HLCxx-NNN
title:
primary_hlc: GOV | HLC00..HLC29
related_hlcs: []
artifact_type: policy | standard | procedure | plan | agreement | notice | form | checklist | assessment | decision | authorization | work-item | record | register | case-record | external-filing
execution_mode: no-signature | submission | delivery-receipt | acknowledgement | consent | bilateral-signature | authority-approval | external-filing
trigger_ids: []
owner_role:
approver_role:
legal_evidence_ids: []
legal_status: 依法必須 | 公司政策選擇 | 個案待法律審查
template_status: Candidate
```

同一列禁止使用 `or`、複數 artifact type、複數 execution mode 或 `mixed`。一個 procedure 可以描述多個步驟，但其申請、決定、通知、外部申報與完成紀錄必須各有 Artifact ID。Register 只索引同質 record／work item，不取代被索引的 artifacts。

## 2. Enterprise Governance

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-GOV-001 | Helix Organization Charter | `standard` | `authority-approval` | HX-TRG-GOV-001 | Corporate Governance | Employer Authority | — | 公司政策選擇 |  | Candidate |
| HX-ART-GOV-002 | Decision Rights Register | `register` | `authority-approval` | HX-TRG-GOV-001 | Corporate Governance | Employer Authority | — | 公司政策選擇 |  | Candidate |
| HX-ART-GOV-003 | Delegation Register | `register` | `authority-approval` | HX-TRG-GOV-001 | Corporate Governance | Employer Authority | — | 公司政策選擇 |  | Candidate |
| HX-ART-GOV-004 | Technical Governance Standard | `standard` | `authority-approval` | HX-TRG-GOV-002 | Technical Authority | Corporate Authority | TW-WF-OSH-001 | 公司政策選擇 | HLC05,HLC06,HLC07,HLC08,HLC09,HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-GOV-005 | Technical Deviation Procedure | `procedure` | `authority-approval` | HX-TRG-GOV-002 | Technical Authority | Corporate Authority | TW-WF-OSH-001 | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-GOV-006 | Technical Hold Procedure | `procedure` | `authority-approval` | HX-TRG-GOV-002 | Technical Authority | Corporate Authority | TW-WF-OSH-003 | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-GOV-007 | Resource Allocation Standard | `standard` | `authority-approval` | HX-TRG-GOV-003 | Resource Governance | Employer Authority | TW-WF-TRANSFER-001,TW-WF-TIME-001 | 公司政策選擇 | HLC05,HLC08,HLC09,HLC23 | Candidate |
| HX-ART-GOV-008 | Resource Conflict Procedure | `procedure` | `authority-approval` | HX-TRG-GOV-003 | Resource Governance | Employer Authority | TW-WF-TIME-001 | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13,HLC23 | Candidate |
| HX-ART-GOV-009 | Shared Engineering Platform Service Standard | `standard` | `authority-approval` | HX-TRG-GOV-004 | Platform Owner | Corporate Authority | TW-WF-DATA-003,TW-WF-TRADE-001 | 公司政策選擇 | HLC05,HLC08,HLC09,HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-GOV-010 | Speak-up Policy | `policy` | `authority-approval` | HX-TRG-GOV-005 | Independent Case Governance | Employer Authority | TW-WF-COMPLAINT-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-GOV-011 | Investigation Procedure | `procedure` | `authority-approval` | HX-TRG-GOV-005 | Independent Case Governance | Employer Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-GOV-012 | Workplace Harassment Prevention Policy | `policy` | `authority-approval` | HX-TRG-GOV-005 | HR Compliance | Employer Authority | TW-WF-HARASS-001,TW-WF-HARASS-002 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-GOV-013 | Workplace Bullying Prevention Policy | `policy` | `authority-approval` | HX-TRG-GOV-005 | HSE Compliance | Employer Authority | TW-WF-BULLY-001,TW-WF-BULLY-002 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-GOV-014 | Anti-retaliation Standard | `standard` | `authority-approval` | HX-TRG-GOV-005 | Independent Case Governance | Employer Authority | TW-WF-COMPLAINT-001,TW-WF-BULLY-002 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |

## 3. HLC00 — 人力需求與職位治理

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC00-001 | Workforce Demand Request | `form` | `submission` | HX-TRG-HLC00-001 | Business Owner | Resource Authority | — | 公司政策選擇 | HLC00,HLC01 | Candidate |
| HX-ART-HLC00-002 | Workforce Demand Decision | `decision` | `authority-approval` | HX-TRG-HLC00-001 | Resource Governance | Budget Authority | — | 公司政策選擇 | HLC00,HLC01 | Candidate |
| HX-ART-HLC00-003 | Position Scope Description | `plan` | `authority-approval` | HX-TRG-HLC00-002 | Hiring Owner | Employer Authority | TW-WF-RECRUIT-001,TW-WF-OSH-001 | 個案待法律審查 | HLC00,HLC01 | Candidate |
| HX-ART-HLC00-004 | Relationship Classification Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-003 | HR Procurement | Legal Authority | TW-WF-REL-001,TW-WF-REL-002,TW-WF-REL-003 | 個案待法律審查 | HLC00,HLC01 | Candidate |
| HX-ART-HLC00-005 | Fixed-term Contract Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-003 | HR | Legal Authority | TW-WF-CONTRACT-001 | 個案待法律審查 | HLC00,HLC01,HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC00-006 | Position Hazard Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-004 | HSE | HSE Authority | TW-WF-OSH-001,TW-WF-HEALTH-001 | 個案待法律審查 | HLC00,HLC01 | Candidate |
| HX-ART-HLC00-007 | Qualification Requirement Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-004 | CoE HSE | Technical Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC00,HLC01 | Candidate |
| HX-ART-HLC00-008 | Health Requirement Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-004 | HSE | Health Authority | TW-WF-HEALTH-001,TW-WF-DATA-002 | 個案待法律審查 | HLC00,HLC01 | Candidate |

## 4. HLC01 — 招募、甄選與候選人結案

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC01-001 | Recruitment Privacy Notice | `notice` | `delivery-receipt` | HX-TRG-HLC01-001 | Recruitment Privacy | Data Authority | TW-WF-DATA-001,TW-WF-DATA-003 | 依法必須 | HLC00,HLC01 | Candidate |
| HX-ART-HLC01-002 | Candidate Evaluation Record | `record` | `no-signature` | HX-TRG-HLC01-002 | Recruitment | Hiring Approver | TW-WF-RECRUIT-001,TW-WF-RECRUIT-003 | 個案待法律審查 | HLC00,HLC01 | Candidate |
| HX-ART-HLC01-003 | Selection Conflict Declaration | `form` | `submission` | HX-TRG-HLC01-002 | Evaluator | Hiring Approver | — | 公司政策選擇 | HLC00,HLC01 | Candidate |
| HX-ART-HLC01-004 | Candidate Disposition Decision | `decision` | `authority-approval` | HX-TRG-HLC01-002 | Recruitment | Hiring Approver | TW-WF-RECRUIT-001,TW-WF-DATA-004 | 個案待法律審查 | HLC00,HLC01 | Candidate |

## 5. HLC02 — Offer 與契約成立

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC02-001 | Employment Offer Notice | `notice` | `delivery-receipt` | HX-TRG-HLC02-001 | HR | Employer Authority | TW-WF-OFFER-P001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC02-002 | Service Proposal Notice | `notice` | `delivery-receipt` | HX-TRG-HLC02-002 | Procurement | Contract Authority | TW-WF-REL-001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC02-003 | Offer Response Record | `record` | `no-signature` | HX-TRG-HLC02-003 | HR Procurement | Relationship Authority | TW-WF-OFFER-P001,TW-WF-ESIGN-001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC02-004 | Employment Contract | `agreement` | `bilateral-signature` | HX-TRG-HLC02-004 | HR | Employer Authority | TW-WF-REL-001,TW-WF-CONTRACT-001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC02-005 | Service Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-005 | Procurement | Contract Authority | TW-WF-REL-001,TW-WF-REL-003 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC02-006 | Employment Condition Notice | `notice` | `delivery-receipt` | HX-TRG-HLC02-004 | HR Payroll | Employer Authority | TW-WF-WAGE-001,TW-WF-TIME-001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC02-007 | Employment Condition Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-004 | HR | Employer Authority | TW-WF-WAGE-001,TW-WF-TIME-001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC02-008 | Confidentiality Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-006 | Legal | Employer Authority | TW-WF-TRADE-001 | 個案待法律審查 | HLC02,HLC03,HLC15,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC02-009 | Work Product Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-006 | Legal IP | Employer Authority | — | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC02-010 | Noncompete Applicability Assessment | `assessment` | `authority-approval` | HX-TRG-HLC02-007 | Legal HR | Employer Authority | TW-WF-CONTRACT-002 | 個案待法律審查 | HLC02,HLC03,HLC15,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC02-011 | Post-employment Noncompete Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-007 | Legal HR | Employer Authority | TW-WF-CONTRACT-002 | 個案待法律審查 | HLC02,HLC03,HLC15,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC02-012 | Service-period Applicability Assessment | `assessment` | `authority-approval` | HX-TRG-HLC02-008 | HR Training Legal | Employer Authority | TW-WF-CONTRACT-003 | 個案待法律審查 | HLC02,HLC03,HLC15,HLC17 | Candidate |
| HX-ART-HLC02-013 | Minimum Service-period Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-008 | HR Training | Employer Authority | TW-WF-CONTRACT-003 | 個案待法律審查 | HLC02,HLC03,HLC15,HLC17 | Candidate |
| HX-ART-HLC02-014 | Offer Outcome Record | `record` | `no-signature` | HX-TRG-HLC02-009 | HR Procurement | Relationship Authority | TW-WF-OFFER-P001,TW-WF-DATA-004 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |

## 6. HLC03 — 開始前法定與風險 Clearance

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC03-001 | Identity Clearance Record | `record` | `no-signature` | HX-TRG-HLC03-001 | HR Procurement | Relationship Authority | TW-WF-DATA-003 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC03-002 | Work Eligibility Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HR Procurement | Relationship Authority | TW-WF-FOREIGN-P001,TW-WF-MINOR-P001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC03-003 | Contract Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HR Legal | Relationship Authority | TW-WF-CONTRACT-001,TW-WF-OFFER-P001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC03-004 | Payroll Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | Payroll | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 | HLC02,HLC03,HLC15 | Candidate |
| HX-ART-HLC03-005 | Insurance Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HR | Employer Authority | TW-WF-INS-001,TW-WF-NHI-001 | 依法必須 | HLC02,HLC03,HLC04,HLC05,HLC15 | Candidate |
| HX-ART-HLC03-006 | Pension Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HR Payroll | Employer Authority | TW-WF-PENSION-001 | 依法必須 | HLC02,HLC03,HLC04,HLC05,HLC15 | Candidate |
| HX-ART-HLC03-007 | Fitness Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HSE Health | Health Authority | TW-WF-HEALTH-001,TW-WF-DATA-002 | 個案待法律審查 | HLC02,HLC03,HLC04,HLC05,HLC15 | Candidate |
| HX-ART-HLC03-008 | Qualification Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | CoE HSE | Technical Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC02,HLC03,HLC04,HLC05,HLC15 | Candidate |
| HX-ART-HLC03-009 | Site Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | Site HSE | HSE Authority | TW-WF-OSH-001 | 個案待法律審查 | HLC02,HLC03,HLC05,HLC08,HLC09,HLC15 | Candidate |
| HX-ART-HLC03-010 | Data Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | Privacy IT | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 | HLC02,HLC03,HLC04,HLC05,HLC15 | Candidate |
| HX-ART-HLC03-011 | Pre-start Clearance Register | `register` | `no-signature` | HX-TRG-HLC03-001 | HR Procurement | Relationship Authority | — | 公司政策選擇 | HLC02,HLC03,HLC15 | Candidate |

## 7. HLC04 — 實際開始與行政 Onboarding

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC04-001 | Actual Work Start Record | `record` | `no-signature` | HX-TRG-HLC04-001 | HR Delivery | Employer Authority | TW-WF-TRIAL-002,TW-WF-INS-002 | 依法必須 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-002 | Administrative Onboarding Completion Record | `record` | `authority-approval` | HX-TRG-HLC04-007 | HR | Employer Authority | — | 公司政策選擇 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-003 | Personnel Data Form | `form` | `submission` | HX-TRG-HLC04-002 | HR | Data Authority | TW-WF-RECORD-001,TW-WF-DATA-001 | 依法必須 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-004 | Emergency Contact Form | `form` | `submission` | HX-TRG-HLC04-002 | HR | Data Authority | TW-WF-DATA-001,TW-WF-DATA-003 | 個案待法律審查 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-005 | Work Rules Notice | `notice` | `delivery-receipt` | HX-TRG-HLC04-003 | HR | Employer Authority | TW-WF-WORKRULE-001 | 個案待法律審查 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-006 | Policy Notice | `notice` | `delivery-receipt` | HX-TRG-HLC04-004 | Policy Owner | Employer Authority | — | 公司政策選擇 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-007 | Asset Issue Record | `record` | `acknowledgement` | HX-TRG-HLC04-005 | Asset Owner | Asset Authority | TW-WF-DATA-005 | 公司政策選擇 | HLC04,HLC05,HLC23,HLC24,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC04-008 | PPE Issue Record | `record` | `acknowledgement` | HX-TRG-HLC04-005 | HSE | HSE Authority | TW-WF-OSH-001 | 個案待法律審查 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-009 | Account Authorization | `authorization` | `authority-approval` | HX-TRG-HLC04-005 | IT Data | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-010 | Occupational Insurance Enrollment Filing | `external-filing` | `external-filing` | HX-TRG-HLC04-006 | HR | Employer Authority | TW-WF-INS-001,TW-WF-INS-002 | 依法必須 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-011 | NHI Enrollment Filing | `external-filing` | `external-filing` | HX-TRG-HLC04-006 | HR | Employer Authority | TW-WF-NHI-001,TW-WF-NHI-002 | 依法必須 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-012 | Labor Pension Enrollment Filing | `external-filing` | `external-filing` | HX-TRG-HLC04-006 | HR Payroll | Employer Authority | TW-WF-PENSION-001,TW-WF-PENSION-002 | 依法必須 | HLC04,HLC05 | Candidate |
| HX-ART-HLC04-013 | Onboarding Work-item Register | `register` | `no-signature` | HX-TRG-HLC04-007 | HR Site | Employer Authority | — | 公司政策選擇 | HLC04,HLC05 | Candidate |

## 8. HLC05 — Assignment 與角色治理

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC05-001 | Initial Helix Assignment Authorization | `authorization` | `authority-approval` | HX-TRG-HLC05-001 | HR Resource | Employer Authority | — | 公司政策選擇 | HLC04,HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC05-002 | Project Assignment Request | `form` | `submission` | HX-TRG-HLC05-002 | Delivery Resource | Resource Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC05-003 | Project Assignment Decision | `decision` | `authority-approval` | HX-TRG-HLC05-002 | Resource Governance | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC05-004 | Project Assignment Notice | `notice` | `acknowledgement` | HX-TRG-HLC05-002 | HR Resource | Employer Authority | TW-WF-TRANSFER-001,TW-WF-TIME-001 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC05-005 | Project Organization Plan | `plan` | `authority-approval` | HX-TRG-HLC05-003 | Project Governance | Project Authority | — | 公司政策選擇 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC05-006 | Project RACI Matrix | `register` | `authority-approval` | HX-TRG-HLC05-003 | Project Governance | Project Authority | — | 公司政策選擇 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC05-007 | Project Decision Rights Register | `register` | `authority-approval` | HX-TRG-HLC05-003 | Project Governance | Project Authority | — | 公司政策選擇 | HLC05,HLC08,HLC09 | Candidate |

## 9. HLC06 — 能力基線與公司職級

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC06-001 | Competency Framework | `standard` | `authority-approval` | HX-TRG-HLC06-001 | CoE | Capability Authority | — | 公司政策選擇 | HLC06,HLC07 | Candidate |
| HX-ART-HLC06-002 | Initial Competency Assessment | `assessment` | `authority-approval` | HX-TRG-HLC06-001 | CoE | Capability Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC06,HLC07 | Candidate |
| HX-ART-HLC06-003 | Periodic Competency Assessment | `assessment` | `authority-approval` | HX-TRG-HLC06-002 | CoE | Capability Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC06,HLC07 | Candidate |
| HX-ART-HLC06-004 | Professional Grade Decision | `decision` | `authority-approval` | HX-TRG-HLC06-003 | CoE HR | Grade Authority | — | 公司政策選擇 | HLC06,HLC07,HLC16 | Candidate |

## 10. HLC07 — 技術授權生命週期

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC07-001 | Technical Authorization Request | `form` | `submission` | HX-TRG-HLC07-001 | Technical Owner | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC06,HLC07 | Candidate |
| HX-ART-HLC07-002 | Technical Authorization Decision | `authorization` | `authority-approval` | HX-TRG-HLC07-001 | Technical Authority | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC06,HLC07 | Candidate |
| HX-ART-HLC07-003 | Technical Authorization Register | `register` | `no-signature` | HX-TRG-HLC07-001 | Technical Governance | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC06,HLC07 | Candidate |
| HX-ART-HLC07-004 | Technical Authorization Suspension Decision | `decision` | `authority-approval` | HX-TRG-HLC07-002 | Technical HSE | Authorization Authority | TW-WF-OSH-003 | 個案待法律審查 | HLC06,HLC07 | Candidate |
| HX-ART-HLC07-005 | Technical Authorization Revocation Decision | `decision` | `authority-approval` | HX-TRG-HLC07-003 | Technical HSE | Authorization Authority | TW-WF-OSH-003 | 個案待法律審查 | HLC06,HLC07 | Candidate |
| HX-ART-HLC07-006 | Technical Authorization Restoration Decision | `decision` | `authority-approval` | HX-TRG-HLC07-004 | Technical HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC06,HLC07 | Candidate |

## 11. HLC08 — 工地動員、危害與專案存取

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC08-001 | Site Mobilization Checklist | `checklist` | `authority-approval` | HX-TRG-HLC08-001 | Site HSE | HSE Authority | TW-WF-OSH-001,TW-WF-OSH-002 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC08-002 | Site Hazard Notice | `notice` | `acknowledgement` | HX-TRG-HLC08-002 | Site HSE | HSE Authority | TW-WF-OSH-001,TW-WF-OSH-003 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC08-003 | Site Qualification Clearance | `decision` | `authority-approval` | HX-TRG-HLC08-003 | Site HSE | HSE Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC08-004 | Equipment Clearance | `decision` | `authority-approval` | HX-TRG-HLC08-003 | Equipment HSE | HSE Authority | TW-WF-OSH-002 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC08-005 | Work Permit Clearance | `decision` | `authority-approval` | HX-TRG-HLC08-003 | Site HSE | HSE Authority | TW-WF-OSH-001 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC08-006 | Client Data Authorization | `authorization` | `authority-approval` | HX-TRG-HLC08-004 | Project Data | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC08-007 | Client System Authorization | `authorization` | `authority-approval` | HX-TRG-HLC08-004 | Project IT | Data Authority | TW-WF-DATA-005 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC08-008 | Project Conflict Declaration | `form` | `submission` | HX-TRG-HLC08-005 | Workforce Member | Compliance Authority | — | 公司政策選擇 | HLC05,HLC08,HLC09 | Candidate |

## 12. HLC09 — 派任條件、調動與工作條件變更

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC09-001 | Project Condition Notice | `notice` | `delivery-receipt` | HX-TRG-HLC09-001 | HR Project | Employer Authority | TW-WF-WAGE-001,TW-WF-TIME-001 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC09-002 | Project Condition Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC09-002 | HR Project | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |
| HX-ART-HLC09-003 | Transfer Assessment | `assessment` | `authority-approval` | HX-TRG-HLC09-003 | HR Resource | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-004 | Secondment Assessment | `assessment` | `authority-approval` | HX-TRG-HLC09-004 | HR Legal | Employer Authority | TW-WF-REL-001,TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-005 | Work Condition Change Assessment | `assessment` | `authority-approval` | HX-TRG-HLC09-005 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-006 | Employee Change Input | `form` | `submission` | HX-TRG-HLC09-006 | Employee | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-007 | Condition Delta Record | `record` | `no-signature` | HX-TRG-HLC09-005 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-008 | Consent Requirement Decision | `decision` | `authority-approval` | HX-TRG-HLC09-007, HX-TRG-HLC09-008 | HR Legal | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-009 | Change Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC09-007 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-010 | Change Decision | `decision` | `authority-approval` | HX-TRG-HLC09-007, HX-TRG-HLC09-008 | HR Resource | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-011 | Change Notice | `notice` | `delivery-receipt` | HX-TRG-HLC09-008 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-012 | Assignment Handover Record | `record` | `acknowledgement` | HX-TRG-HLC09-009 | Delivery Resource | Resource Authority | TW-WF-DATA-003 | 公司政策選擇 | HLC09 | Candidate |
| HX-ART-HLC09-013 | Access Change Authorization | `authorization` | `authority-approval` | HX-TRG-HLC09-009 | IT Data | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-014 | Change Re-clearance Checklist | `checklist` | `authority-approval` | HX-TRG-HLC09-010 | HR HSE CoE | Respective Authority | TW-WF-OSH-001,TW-WF-HEALTH-001 | 個案待法律審查 | HLC09 | Candidate |
| HX-ART-HLC09-015 | New Assignment Authorization | `authorization` | `authority-approval` | HX-TRG-HLC09-011 | HR Resource | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC05,HLC08,HLC09 | Candidate |

## 13. HLC10 — 工時、出勤、請假與加班

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC10-001 | Shift Schedule Notice | `notice` | `delivery-receipt` | HX-TRG-HLC10-001 | Delivery HR | Time Authority | TW-WF-TIME-001 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC10-002 | Attendance Record | `record` | `no-signature` | HX-TRG-HLC10-001 | Delivery HR | Time Authority | TW-WF-RECORD-002,TW-WF-TIME-001 | 依法必須 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC10-003 | Leave Request | `form` | `submission` | HX-TRG-HLC10-002 | Employee | HR Authority | TW-WF-LEAVE-001 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13,HLC21,HLC22 | Candidate |
| HX-ART-HLC10-004 | Leave Decision | `decision` | `authority-approval` | HX-TRG-HLC10-002 | HR | Employer Authority | TW-WF-LEAVE-001 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13,HLC21,HLC22 | Candidate |
| HX-ART-HLC10-005 | Overtime Request | `form` | `submission` | HX-TRG-HLC10-003 | Delivery Owner | Time Authority | TW-WF-TIME-002 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC10-006 | Overtime Decision | `decision` | `authority-approval` | HX-TRG-HLC10-003 | Time Authority | Employer Authority | TW-WF-TIME-002 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC10-007 | Overtime Work Record | `record` | `no-signature` | HX-TRG-HLC10-003 | Delivery HR | Time Authority | TW-WF-TIME-001,TW-WF-WAGE-001 | 依法必須 | HLC10,HLC11,HLC12,HLC13 | Candidate |

## 14. HLC11 — 工作排序與資源衝突

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC11-001 | Work Package Record | `record` | `no-signature` | HX-TRG-HLC11-001 | Work Priority Owner | Delivery Authority | — | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC11-002 | Work Priority Decision | `decision` | `authority-approval` | HX-TRG-HLC11-001 | Work Priority Owner | Delivery Authority | TW-WF-TIME-001 | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC11-003 | Resource Conflict Request | `form` | `submission` | HX-TRG-HLC11-002 | Delivery Resource | Resource Authority | TW-WF-TIME-001 | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC11-004 | Resource Conflict Decision | `decision` | `authority-approval` | HX-TRG-HLC11-002 | Resource Governance | Resource Authority | TW-WF-TIME-001 | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |

## 15. HLC12 — 技術交付控制

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC12-001 | Design Review Record | `record` | `authority-approval` | HX-TRG-HLC12-001 | Technical Reviewer | Technical Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC12-002 | Technical Query Record | `record` | `no-signature` | HX-TRG-HLC12-002 | Delivery Technical | Technical Authority | — | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC12-003 | Technical Deviation Request | `form` | `submission` | HX-TRG-HLC12-003 | Delivery Technical | Technical Authority | TW-WF-OSH-001 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC12-004 | Technical Deviation Decision | `decision` | `authority-approval` | HX-TRG-HLC12-003 | Technical Authority | Authorization Authority | TW-WF-OSH-001,TW-WF-OSH-003 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC12-005 | Technical Hold Decision | `decision` | `authority-approval` | HX-TRG-HLC12-004 | Technical HSE | Authorization Authority | TW-WF-OSH-003 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC12-006 | Technical Hold Release Decision | `decision` | `authority-approval` | HX-TRG-HLC12-004 | Technical HSE | Authorization Authority | TW-WF-OSH-003 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |

## 16. HLC13 — 品質、HSE 檢查與事件

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC13-001 | Quality Nonconformance Record | `record` | `no-signature` | HX-TRG-HLC13-001 | Quality | Quality Authority | — | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC13-002 | Corrective Action Verification | `record` | `authority-approval` | HX-TRG-HLC13-001 | Quality Owner | Quality Authority | — | 公司政策選擇 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC13-003 | HSE Inspection Record | `record` | `authority-approval` | HX-TRG-HLC13-002 | HSE | HSE Authority | TW-WF-OSH-001,TW-WF-OSH-002 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |
| HX-ART-HLC13-004 | Incident Report | `case-record` | `submission` | HX-TRG-HLC13-003 | Reporter HSE | HSE Authority | TW-WF-OSH-003 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13,HLC18,HLC19,HLC20,HLC21,HLC22 | Candidate |
| HX-ART-HLC13-005 | External Incident Filing | `external-filing` | `external-filing` | HX-TRG-HLC13-003 | HSE | Employer Authority | TW-WF-OSH-003 | 個案待法律審查 | HLC10,HLC11,HLC12,HLC13 | Candidate |

## 17. HLC14 — 績效目標、評估與改善

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC14-001 | Annual Goal Plan | `plan` | `acknowledgement` | HX-TRG-HLC14-001 | Performance Owner | Performance Authority | — | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-002 | Project Goal Plan | `plan` | `acknowledgement` | HX-TRG-HLC14-002 | Delivery Manager | Performance Authority | — | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-003 | Delivery Assessment Input | `record` | `no-signature` | HX-TRG-HLC14-003 | Delivery Manager | Performance Governance | TW-WF-DATA-003 | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-004 | Capability Assessment Input | `record` | `no-signature` | HX-TRG-HLC14-003 | People Manager | Performance Governance | TW-WF-DATA-003 | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-005 | Conduct Assessment Input | `record` | `no-signature` | HX-TRG-HLC14-003 | Compliance Owner | Performance Governance | TW-WF-DATA-003 | 個案待法律審查 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-006 | Performance Calibration Record | `record` | `authority-approval` | HX-TRG-HLC14-004 | Performance Governance | Performance Authority | — | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-007 | Performance Decision | `decision` | `authority-approval` | HX-TRG-HLC14-004 | Performance Governance | Performance Authority | — | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-008 | Performance Result Notice | `notice` | `delivery-receipt` | HX-TRG-HLC14-004 | HR Performance | Performance Authority | TW-WF-DATA-003 | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-009 | Performance Improvement Plan | `plan` | `acknowledgement` | HX-TRG-HLC14-005 | Manager HR | Performance Authority | TW-WF-TERM-001 | 個案待法律審查 | HLC14,HLC15,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC14-010 | Employee Performance Statement | `form` | `submission` | HX-TRG-HLC14-006 | Employee | Performance Authority | TW-WF-DATA-003 | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-011 | Performance Appeal Request | `form` | `submission` | HX-TRG-HLC14-007 | Employee | Appeal Authority | — | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC14-012 | Performance Appeal Decision | `decision` | `authority-approval` | HX-TRG-HLC14-007 | Appeal Reviewer | Appeal Authority | — | 公司政策選擇 | HLC14,HLC15 | Candidate |

## 18. HLC15 — 試用約定、評估、延長與結果

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC15-001 | Trial Applicability Assessment | `assessment` | `authority-approval` | HX-TRG-HLC15-001 | HR Performance | Employer Authority | TW-WF-TRIAL-001 | 公司政策選擇 | HLC02,HLC03,HLC14,HLC15 | Candidate |
| HX-ART-HLC15-002 | Trial Period Reasonableness Decision | `decision` | `authority-approval` | HX-TRG-HLC15-001 | HR Performance | Employer Authority | TW-WF-TRIAL-006 | 個案待法律審查 | HLC02,HLC03,HLC14,HLC15 | Candidate |
| HX-ART-HLC15-003 | Trial Terms Annex | `agreement` | `bilateral-signature` | HX-TRG-HLC15-001 | HR | Employer Authority | TW-WF-TRIAL-002,TW-WF-TRIAL-006 | 個案待法律審查 | HLC02,HLC03,HLC14,HLC15 | Candidate |
| HX-ART-HLC15-004 | Trial Evaluation Plan | `plan` | `acknowledgement` | HX-TRG-HLC15-001 | Performance Owner | Performance Authority | TW-WF-TRIAL-006 | 公司政策選擇 | HLC02,HLC03,HLC14,HLC15 | Candidate |
| HX-ART-HLC15-005 | Trial Checkpoint Assessment | `assessment` | `authority-approval` | HX-TRG-HLC15-002 | Performance Owner | Performance Authority | TW-WF-TRIAL-002,TW-WF-TRIAL-006 | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC15-006 | Trial Extension Assessment | `assessment` | `authority-approval` | HX-TRG-HLC15-003 | HR Performance | Employer Authority | TW-WF-TRIAL-003 | 個案待法律審查 | HLC14,HLC15 | Candidate |
| HX-ART-HLC15-007 | Trial Extension Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC15-003 | HR | Employer Authority | TW-WF-TRIAL-003 | 個案待法律審查 | HLC14,HLC15 | Candidate |
| HX-ART-HLC15-008 | Trial Pass Decision | `decision` | `authority-approval` | HX-TRG-HLC15-004 | Performance Governance | Employer Authority | TW-WF-TRIAL-002,TW-WF-TRIAL-004 | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC15-009 | Continued Relationship Notice | `notice` | `delivery-receipt` | HX-TRG-HLC15-004 | HR | Employer Authority | TW-WF-TRIAL-004 | 公司政策選擇 | HLC14,HLC15 | Candidate |
| HX-ART-HLC15-010 | Trial Non-pass Assessment | `assessment` | `authority-approval` | HX-TRG-HLC15-005 | Performance Governance | Employer Authority | TW-WF-TRIAL-005 | 個案待法律審查 | HLC14,HLC15,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC15-011 | Employer Termination Review Request | `form` | `submission` | HX-TRG-HLC15-005 | HR Performance | Employer Authority | TW-WF-TRIAL-005,TW-WF-TERM-001 | 個案待法律審查 | HLC14,HLC15,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |

## 19. HLC16 — 晉升、職級、薪酬與職涯變動

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC16-001 | Promotion Assessment | `assessment` | `authority-approval` | HX-TRG-HLC16-001 | CoE HR | Promotion Authority | — | 公司政策選擇 | HLC16 | Candidate |
| HX-ART-HLC16-002 | Promotion Decision | `decision` | `authority-approval` | HX-TRG-HLC16-001 | Promotion Governance | Promotion Authority | — | 公司政策選擇 | HLC16 | Candidate |
| HX-ART-HLC16-003 | Promotion Notice | `notice` | `delivery-receipt` | HX-TRG-HLC16-001 | HR | Employer Authority | — | 公司政策選擇 | HLC16 | Candidate |
| HX-ART-HLC16-004 | Grade Adjustment Assessment | `assessment` | `authority-approval` | HX-TRG-HLC16-002 | CoE HR | Grade Authority | — | 公司政策選擇 | HLC16 | Candidate |
| HX-ART-HLC16-005 | Grade Adjustment Decision | `decision` | `authority-approval` | HX-TRG-HLC16-002 | Grade Governance | Grade Authority | — | 公司政策選擇 | HLC16 | Candidate |
| HX-ART-HLC16-006 | Grade Adjustment Notice | `notice` | `delivery-receipt` | HX-TRG-HLC16-002 | HR | Employer Authority | — | 公司政策選擇 | HLC16 | Candidate |
| HX-ART-HLC16-007 | Compensation Assessment | `assessment` | `authority-approval` | HX-TRG-HLC16-003, HX-TRG-HLC16-004 | HR Compensation | Compensation Authority | TW-WF-WAGE-001 | 個案待法律審查 | HLC16 | Candidate |
| HX-ART-HLC16-008 | Compensation Decision | `decision` | `authority-approval` | HX-TRG-HLC16-003, HX-TRG-HLC16-004 | Compensation Governance | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 | HLC16 | Candidate |
| HX-ART-HLC16-009 | Compensation Notice | `notice` | `delivery-receipt` | HX-TRG-HLC16-003 | HR | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 | HLC16 | Candidate |
| HX-ART-HLC16-010 | Compensation Change Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC16-004 | HR | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 | HLC16 | Candidate |
| HX-ART-HLC16-011 | Role Change Decision | `decision` | `authority-approval` | HX-TRG-HLC16-005, HX-TRG-HLC16-006 | HR CoE | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09,HLC16 | Candidate |
| HX-ART-HLC16-012 | Role Change Notice | `notice` | `delivery-receipt` | HX-TRG-HLC16-005 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC16 | Candidate |
| HX-ART-HLC16-013 | Role Change Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC16-006 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC09,HLC16 | Candidate |
| HX-ART-HLC16-014 | Authorization Change Decision | `authorization` | `authority-approval` | HX-TRG-HLC16-007 | Technical Authority | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC06,HLC07,HLC16 | Candidate |

## 20. HLC17 — 訓練、發展與資格證照

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC17-001 | Training Requirement Assessment | `assessment` | `authority-approval` | HX-TRG-HLC17-001 | CoE HSE | Training Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC17 | Candidate |
| HX-ART-HLC17-002 | Annual Development Plan | `plan` | `acknowledgement` | HX-TRG-HLC17-002 | People Manager | Capability Authority | — | 公司政策選擇 | HLC17 | Candidate |
| HX-ART-HLC17-003 | Training Request | `form` | `submission` | HX-TRG-HLC17-003 | Workforce Member | Training Authority | — | 公司政策選擇 | HLC17 | Candidate |
| HX-ART-HLC17-004 | Training Cost Decision | `decision` | `authority-approval` | HX-TRG-HLC17-003 | Training HR | Budget Authority | TW-WF-CONTRACT-003 | 個案待法律審查 | HLC17 | Candidate |
| HX-ART-HLC17-005 | Training Attendance Record | `record` | `no-signature` | HX-TRG-HLC17-004 | Training Owner | Training Authority | TW-WF-TIME-001 | 個案待法律審查 | HLC17 | Candidate |
| HX-ART-HLC17-006 | Training Assessment Record | `assessment` | `authority-approval` | HX-TRG-HLC17-004 | Assessor | Training Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC17 | Candidate |
| HX-ART-HLC17-007 | Credential Record | `record` | `no-signature` | HX-TRG-HLC17-005 | CoE HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC17 | Candidate |
| HX-ART-HLC17-008 | Credential Use Authorization | `authorization` | `authority-approval` | HX-TRG-HLC17-005 | Technical HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC06,HLC07,HLC17 | Candidate |
| HX-ART-HLC17-009 | Credential Renewal Request | `form` | `submission` | HX-TRG-HLC17-006 | Credential Holder | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC17 | Candidate |
| HX-ART-HLC17-010 | Credential Renewal Decision | `decision` | `authority-approval` | HX-TRG-HLC17-006 | CoE HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC17 | Candidate |
| HX-ART-HLC17-011 | Credential Suspension Decision | `decision` | `authority-approval` | HX-TRG-HLC17-007 | CoE HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC17 | Candidate |
| HX-ART-HLC17-012 | Credential Revocation Decision | `decision` | `authority-approval` | HX-TRG-HLC17-008 | CoE HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 | HLC17 | Candidate |

## 21. HLC18 — 案件受理、分類與獨立路由

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC18-001 | Case Intake Record | `case-record` | `no-signature` | HX-TRG-HLC18-001 | Independent Case Owner | Case Authority | TW-WF-COMPLAINT-001,TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC18-002 | Emergency Risk Assessment | `assessment` | `authority-approval` | HX-TRG-HLC18-001 | Case HSE | HSE Authority | TW-WF-OSH-003 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC18-003 | Case Classification Decision | `decision` | `authority-approval` | HX-TRG-HLC18-002 | Independent Case Owner | Case Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC18-004 | Case Conflict Check | `checklist` | `authority-approval` | HX-TRG-HLC18-002 | Independent Case Owner | Case Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC18-005 | Alternate Route Decision | `decision` | `authority-approval` | HX-TRG-HLC18-003 | Independent Case Governance | Employer Authority | TW-WF-HARASS-002,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |

## 22. HLC19 — 調查、證據與暫時措施

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC19-001 | Case Scope Notice | `notice` | `acknowledgement` | HX-TRG-HLC19-001 | Investigator | Case Authority | TW-WF-DATA-002,TW-WF-DATA-003 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC19-002 | Interview Record | `case-record` | `no-signature` | HX-TRG-HLC19-002 | Investigator | Case Authority | TW-WF-DATA-002,TW-WF-DATA-003 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC19-003 | Case Evidence Index | `register` | `no-signature` | HX-TRG-HLC19-003 | Investigator | Case Authority | TW-WF-DATA-002,TW-WF-DATA-005 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC19-004 | Case Recusal Declaration | `form` | `submission` | HX-TRG-HLC19-003 | Case Participant | Case Authority | — | 公司政策選擇 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC19-005 | Interim Measure Assessment | `assessment` | `authority-approval` | HX-TRG-HLC19-004 | Case HR HSE | Case Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC19-006 | Interim Measure Decision | `decision` | `authority-approval` | HX-TRG-HLC19-004 | Case Authority | Employer Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC19-007 | Interim Measure Notice | `notice` | `delivery-receipt` | HX-TRG-HLC19-004 | Case HR | Case Authority | TW-WF-DATA-003 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC19-008 | Investigation Findings | `case-record` | `authority-approval` | HX-TRG-HLC19-005 | Investigator | Case Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |

## 23. HLC20 — 案件決定、申復與反報復

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC20-001 | Case Rule Review | `assessment` | `authority-approval` | HX-TRG-HLC20-001 | HR Legal | Decision Authority | TW-WF-COMPLAINT-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC20-002 | Case Action Decision | `decision` | `authority-approval` | HX-TRG-HLC20-001 | Decision Authority | Employer Authority | TW-WF-COMPLAINT-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC20-003 | Case Decision Notice | `notice` | `delivery-receipt` | HX-TRG-HLC20-001 | Case Owner | Decision Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC20-004 | Case Appeal Request | `form` | `submission` | HX-TRG-HLC20-002 | Case Party | Appeal Authority | — | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC20-005 | Case Appeal Decision | `decision` | `authority-approval` | HX-TRG-HLC20-002 | Independent Reviewer | Appeal Authority | — | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC20-006 | Anti-retaliation Plan | `plan` | `authority-approval` | HX-TRG-HLC20-003 | Independent Case Owner | Case Authority | TW-WF-COMPLAINT-001,TW-WF-BULLY-002 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC20-007 | Anti-retaliation Review | `assessment` | `authority-approval` | HX-TRG-HLC20-003 | Independent Reviewer | Case Authority | TW-WF-COMPLAINT-001,TW-WF-BULLY-002 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |
| HX-ART-HLC20-008 | Case Closure Decision | `decision` | `authority-approval` | HX-TRG-HLC20-004 | Independent Case Owner | Case Authority | TW-WF-DATA-004 | 個案待法律審查 | HLC18,HLC19,HLC20 | Candidate |

## 24. HLC21 — 關係暫停 Overlay

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC21-001 | Overlay Request | `form` | `submission` | HX-TRG-HLC21-001 | Workforce Member | HR Authority | TW-WF-LEAVE-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-002 | Overlay Event Record | `case-record` | `no-signature` | HX-TRG-HLC21-002 | HR Case HSE | Respective Authority | TW-WF-HEALTH-001,TW-WF-INS-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-003 | Overlay Eligibility Assessment | `assessment` | `authority-approval` | HX-TRG-HLC21-001, HX-TRG-HLC21-002 | HR Case HSE | Respective Authority | TW-WF-LEAVE-001,TW-WF-HEALTH-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-004 | Overlay Decision | `decision` | `authority-approval` | HX-TRG-HLC21-003 | HR Case HSE | Respective Authority | TW-WF-LEAVE-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-005 | Overlay Notice | `notice` | `delivery-receipt` | HX-TRG-HLC21-003 | HR | Respective Authority | TW-WF-LEAVE-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-006 | Wage Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | Payroll | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-007 | Insurance Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | HR | Employer Authority | TW-WF-INS-002,TW-WF-NHI-002 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-008 | Pension Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | HR Payroll | Employer Authority | TW-WF-PENSION-002 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-009 | Assignment Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | Resource | Resource Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-010 | Access Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | IT Data | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-011 | Asset Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | Asset Owner | Asset Authority | — | 公司政策選擇 | HLC21,HLC22 | Candidate |
| HX-ART-HLC21-012 | Overlay Review Record | `record` | `authority-approval` | HX-TRG-HLC21-005 | HR Case HSE | Respective Authority | TW-WF-DATA-002 | 個案待法律審查 | HLC21,HLC22 | Candidate |

## 25. HLC22 — 復職、復工與狀態恢復

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC22-001 | Return Request | `form` | `submission` | HX-TRG-HLC22-001 | Workforce Member | HR Authority | TW-WF-LEAVE-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC22-002 | Return Fitness Assessment | `assessment` | `authority-approval` | HX-TRG-HLC22-002 | Health HSE | Health Authority | TW-WF-HEALTH-001,TW-WF-DATA-002 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC22-003 | Return Work Adjustment Assessment | `assessment` | `authority-approval` | HX-TRG-HLC22-002 | HR HSE Resource | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC22-004 | Return Clearance Checklist | `checklist` | `authority-approval` | HX-TRG-HLC22-002 | HR HSE Resource IT | Respective Authority | TW-WF-OSH-004,TW-WF-DATA-005 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC22-005 | Return Decision | `decision` | `authority-approval` | HX-TRG-HLC22-003 | HR Resource | Employer Authority | TW-WF-LEAVE-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |
| HX-ART-HLC22-006 | Return Notice | `notice` | `delivery-receipt` | HX-TRG-HLC22-003 | HR | Employer Authority | TW-WF-LEAVE-001 | 個案待法律審查 | HLC21,HLC22 | Candidate |

## 26. HLC23 — 專案釋放、Bench 與再配置

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC23-001 | Project Release Assessment | `assessment` | `authority-approval` | HX-TRG-HLC23-001 | Delivery Resource | Resource Authority | TW-WF-TERM-001 | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-002 | Project Release Decision | `decision` | `authority-approval` | HX-TRG-HLC23-001 | Resource Governance | Resource Authority | TW-WF-TERM-001 | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-003 | Project Release Notice | `notice` | `delivery-receipt` | HX-TRG-HLC23-001 | HR Resource | Resource Authority | TW-WF-TERM-001 | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-004 | Delivery Feedback Record | `record` | `no-signature` | HX-TRG-HLC23-002 | Delivery Manager | Project Authority | TW-WF-DATA-003 | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-005 | Capability Input Record | `record` | `no-signature` | HX-TRG-HLC23-002 | CoE | Capability Authority | TW-WF-DATA-003 | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-006 | Lessons Learned Record | `record` | `no-signature` | HX-TRG-HLC23-002 | Project CoE | Project Authority | TW-WF-DATA-003,TW-WF-TRADE-001 | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-007 | Project Document Handover | `record` | `acknowledgement` | HX-TRG-HLC23-003 | Project Owner | Project Authority | TW-WF-DATA-004,TW-WF-TRADE-001 | 個案待法律審查 | HLC23 | Candidate |
| HX-ART-HLC23-008 | Project Asset Return | `record` | `acknowledgement` | HX-TRG-HLC23-003 | Asset Owner | Asset Authority | — | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-009 | Client Access Revocation | `authorization` | `authority-approval` | HX-TRG-HLC23-003 | Project IT | Data Authority | TW-WF-DATA-004,TW-WF-DATA-005 | 個案待法律審查 | HLC23 | Candidate |
| HX-ART-HLC23-010 | Project Data Disposition | `decision` | `authority-approval` | HX-TRG-HLC23-003 | Project Data | Data Authority | TW-WF-DATA-004,TW-WF-TRADE-001 | 個案待法律審查 | HLC23 | Candidate |
| HX-ART-HLC23-011 | Bench Plan | `plan` | `acknowledgement` | HX-TRG-HLC23-004 | Resource CoE | Resource Authority | TW-WF-TIME-001 | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-012 | Bench Review | `assessment` | `authority-approval` | HX-TRG-HLC23-005 | Resource HR | Resource Authority | TW-WF-TERM-001 | 個案待法律審查 | HLC23 | Candidate |
| HX-ART-HLC23-013 | Reallocation Search Record | `record` | `no-signature` | HX-TRG-HLC23-006 | Resource Governance | Resource Authority | TW-WF-TRANSFER-001 | 公司政策選擇 | HLC23 | Candidate |
| HX-ART-HLC23-014 | Reallocation Decision | `decision` | `authority-approval` | HX-TRG-HLC23-006 | Resource Governance | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 | HLC05,HLC08,HLC09,HLC23 | Candidate |

## 27. HLC24 — 自請離職表示與生效

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC24-001 | Resignation Statement | `form` | `submission` | HX-TRG-HLC24-001 | Employee | HR Authority | TW-WF-RESIGN-001 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC24-002 | Resignation Receipt Record | `record` | `delivery-receipt` | HX-TRG-HLC24-001 | HR | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC24-003 | Resignation Notice Assessment | `assessment` | `authority-approval` | HX-TRG-HLC24-002 | HR | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC24-004 | Last Workday Decision | `decision` | `authority-approval` | HX-TRG-HLC24-002 | HR | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC24-005 | Work Exemption Decision | `decision` | `authority-approval` | HX-TRG-HLC24-003 | HR | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC24-006 | Resignation Withdrawal Request | `form` | `submission` | HX-TRG-HLC24-004 | Employee | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC24-007 | Resignation Withdrawal Decision | `decision` | `authority-approval` | HX-TRG-HLC24-004 | HR Legal | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC24-008 | Resignation Handover Record | `record` | `acknowledgement` | HX-TRG-HLC24-005 | Employee Delivery | Delivery Authority | — | 公司政策選擇 | HLC24,HLC27 | Candidate |

## 28. HLC25 — 雇主終止審查與決定

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC25-001 | Protected-period Assessment | `assessment` | `authority-approval` | HX-TRG-HLC25-001 | HR Legal | Employer Authority | TW-WF-TERM-003 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC25-002 | Termination Legal Review | `assessment` | `authority-approval` | HX-TRG-HLC25-001 | Legal | Employer Authority | TW-WF-TERM-001,TW-WF-TERM-002,TW-WF-TERM-003,TW-WF-TERM-004 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC25-003 | Suitable Work Search Record | `record` | `no-signature` | HX-TRG-HLC25-002 | HR Resource | Employer Authority | TW-WF-TERM-001 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC25-004 | Employer Termination Decision | `decision` | `authority-approval` | HX-TRG-HLC25-003 | HR Legal | Employer Authority | TW-WF-TERM-001,TW-WF-TERM-002 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC25-005 | Employer Termination Notice | `notice` | `delivery-receipt` | HX-TRG-HLC25-004 | HR Legal | Employer Authority | TW-WF-TERM-004 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC25-006 | Employer Termination Event Record | `record` | `no-signature` | HX-TRG-HLC25-004 | HR | Employer Authority | TW-WF-TERM-004 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC25-007 | Termination External Filing | `external-filing` | `external-filing` | HX-TRG-HLC25-005 | HR Legal | Employer Authority | TW-WF-MASSLAYOFF-P001 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC25-008 | Termination Withdrawal Decision | `decision` | `authority-approval` | HX-TRG-HLC25-006 | HR Legal | Employer Authority | — | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC25-009 | Relationship Restoration Plan | `plan` | `authority-approval` | HX-TRG-HLC25-006 | HR Payroll IT | Employer Authority | TW-WF-INS-002,TW-WF-NHI-002,TW-WF-PENSION-002 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |

## 29. HLC26 — 退休與合意終止

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC26-001 | Ending Path Assessment | `assessment` | `authority-approval` | HX-TRG-HLC26-001 | HR Legal | Employer Authority | TW-WF-TERM-001,TW-WF-TERM-002,TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC26-002 | Retirement Applicability Assessment | `assessment` | `authority-approval` | HX-TRG-HLC26-002 | HR Legal | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 | HLC26,HLC27 | Candidate |
| HX-ART-HLC26-003 | Retirement Decision | `decision` | `authority-approval` | HX-TRG-HLC26-002 | HR Legal | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC26-004 | Mutual Separation Assessment | `assessment` | `authority-approval` | HX-TRG-HLC26-003 | HR Legal | Employer Authority | TW-WF-TERM-001 | 個案待法律審查 | HLC26,HLC27 | Candidate |
| HX-ART-HLC26-005 | Mutual Separation Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC26-003 | HR Legal | Employer Authority | TW-WF-TERM-001,TW-WF-ESIGN-001 | 個案待法律審查 | HLC26,HLC27 | Candidate |
| HX-ART-HLC26-006 | Retirement Notice | `notice` | `delivery-receipt` | HX-TRG-HLC26-004 | HR | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 | HLC26,HLC27 | Candidate |
| HX-ART-HLC26-007 | Retirement End Event Record | `record` | `no-signature` | HX-TRG-HLC26-004 | HR | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 | HLC26,HLC27 | Candidate |
| HX-ART-HLC26-008 | Mutual Separation End Event Record | `record` | `no-signature` | HX-TRG-HLC26-005 | HR | Employer Authority | TW-WF-TERM-001 | 個案待法律審查 | HLC26,HLC27 | Candidate |

## 30. HLC27 — 關係結清、申報與 Closeout

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC27-001 | Final Wage Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | Payroll | Employer Authority | TW-WF-WAGE-001 | 依法必須 | HLC24,HLC27 | Candidate |
| HX-ART-HLC27-002 | Leave Balance Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | HR Payroll | Employer Authority | TW-WF-LEAVE-002 | 依法必須 | HLC24,HLC27 | Candidate |
| HX-ART-HLC27-003 | Insurance Withdrawal Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | HR | Employer Authority | TW-WF-INS-002,TW-WF-NHI-002 | 依法必須 | HLC24,HLC27 | Candidate |
| HX-ART-HLC27-004 | Pension Cessation Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | HR Payroll | Employer Authority | TW-WF-PENSION-002 | 依法必須 | HLC24,HLC27 | Candidate |
| HX-ART-HLC27-005 | Asset Return Work Item | `work-item` | `acknowledgement` | HX-TRG-HLC27-001 | Asset Owner | Asset Authority | — | 公司政策選擇 | HLC24,HLC27 | Candidate |
| HX-ART-HLC27-006 | Access Removal Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | IT Data | Data Authority | TW-WF-DATA-004,TW-WF-DATA-005 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC27-007 | Workforce Data Disposition Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | HR Data | Data Authority | TW-WF-DATA-004 | 個案待法律審查 | HLC24,HLC27 | Candidate |
| HX-ART-HLC27-008 | Resignation Closeout Register | `register` | `no-signature` | HX-TRG-HLC27-001 | HR | Employer Authority | — | 公司政策選擇 | HLC24,HLC27 | Candidate |
| HX-ART-HLC27-009 | Severance Calculation Record | `record` | `authority-approval` | HX-TRG-HLC27-002 | Payroll HR | Employer Authority | TW-WF-SEVERANCE-001 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-010 | Severance Payment Record | `record` | `no-signature` | HX-TRG-HLC27-002 | Payroll | Employer Authority | TW-WF-SEVERANCE-001 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-011 | Retirement Benefit Calculation Record | `record` | `authority-approval` | HX-TRG-HLC27-004 | Payroll HR | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-012 | Retirement Benefit Payment Record | `record` | `no-signature` | HX-TRG-HLC27-004 | Payroll | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-013 | Final Wage Calculation Record | `record` | `authority-approval` | HX-TRG-HLC27-005 | Payroll | Employer Authority | TW-WF-WAGE-001 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-014 | Final Wage Payment Record | `record` | `no-signature` | HX-TRG-HLC27-005 | Payroll | Employer Authority | TW-WF-WAGE-001 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-015 | Unused Leave Calculation Record | `record` | `authority-approval` | HX-TRG-HLC27-006 | HR Payroll | Employer Authority | TW-WF-LEAVE-002 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-016 | Unused Leave Payment Record | `record` | `no-signature` | HX-TRG-HLC27-006 | Payroll | Employer Authority | TW-WF-LEAVE-002 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-017 | Insurance Withdrawal Filing | `external-filing` | `external-filing` | HX-TRG-HLC27-003 | HR | Employer Authority | TW-WF-INS-002 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-018 | NHI Withdrawal Filing | `external-filing` | `external-filing` | HX-TRG-HLC27-003 | HR | Employer Authority | TW-WF-NHI-002 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-019 | Pension Cessation Filing | `external-filing` | `external-filing` | HX-TRG-HLC27-003 | HR Payroll | Employer Authority | TW-WF-PENSION-002 | 依法必須 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-020 | Asset Return Record | `record` | `acknowledgement` | HX-TRG-HLC27-007 | Asset Owner | Asset Authority | — | 公司政策選擇 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-021 | Account Closure Authorization | `authorization` | `authority-approval` | HX-TRG-HLC27-007 | IT | Data Authority | TW-WF-DATA-004,TW-WF-DATA-005 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-022 | Access Removal Authorization | `authorization` | `authority-approval` | HX-TRG-HLC27-007 | IT Security | Data Authority | TW-WF-DATA-004,TW-WF-DATA-005 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-023 | Workforce Data Disposition Decision | `decision` | `authority-approval` | HX-TRG-HLC27-007 | HR Data | Data Authority | TW-WF-DATA-004 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC27-024 | Employer Closeout Register | `register` | `no-signature` | HX-TRG-HLC27-007 | HR | Employer Authority | — | 公司政策選擇 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |

## 31. HLC28 — 離職後請求、義務與保存

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC28-001 | Service Certificate Request | `form` | `submission` | HX-TRG-HLC28-001 | Former Employee | Employer Authority | TW-WF-SERVICE-001 | 依法必須 | HLC24,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC28-002 | Service Certificate | `notice` | `authority-approval` | HX-TRG-HLC28-001 | HR | Employer Agent | TW-WF-SERVICE-001 | 依法必須 | HLC24,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC28-003 | Post-employment Confidentiality Notice | `notice` | `delivery-receipt` | HX-TRG-HLC28-002 | Legal HR | Employer Authority | TW-WF-TRADE-001 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC28-004 | Noncompete Compensation Record | `record` | `no-signature` | HX-TRG-HLC28-002 | Payroll Legal | Employer Authority | TW-WF-CONTRACT-002 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC28-005 | Post-employment Request Record | `case-record` | `no-signature` | HX-TRG-HLC28-002 | HR Legal | Employer Authority | TW-WF-SERVICE-001,TW-WF-DATA-004 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC28-006 | Post-employment Dispute Register | `register` | `no-signature` | HX-TRG-HLC28-002 | Legal HR | Legal Authority | — | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC28-007 | Retention Decision | `decision` | `authority-approval` | HX-TRG-HLC28-003 | Data Legal | Data Authority | TW-WF-DATA-004 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC28-008 | Legal Hold Decision | `decision` | `authority-approval` | HX-TRG-HLC28-003 | Legal Data | Legal Authority | TW-WF-DATA-004 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC28-009 | Legal Hold Release Decision | `decision` | `authority-approval` | HX-TRG-HLC28-003 | Legal Data | Legal Authority | TW-WF-DATA-004 | 個案待法律審查 | HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |

## 32. HLC29 — 再聘與新 Workforce Instance

| Artifact ID | Candidate Artifact | Type | Execution | Trigger IDs | Owner | Approver | Legal Evidence | Classification | Related HLC | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC29-001 | Rehire Assessment | `assessment` | `authority-approval` | HX-TRG-HLC29-001 | Hiring HR | Employer Authority | — | 個案待法律審查 | HLC00,HLC01,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |
| HX-ART-HLC29-002 | New Workforce Instance Reference | `record` | `no-signature` | HX-TRG-HLC29-001 | HR | Employer Authority | TW-WF-DATA-004 | 公司政策選擇 | HLC00,HLC01,HLC25,HLC26,HLC27,HLC28,HLC29 | Candidate |

## 使用限制

- Trigger Matrix 只依已知 facts 產出 Candidate artifact 清單；未知 selector 必須留下 blocker 或 `not-applicable` 理由。
- 法律 evidence 支持特定要求，不表示 artifact 文字已完成個案法律審查。
- 本 repo 不保存具名 workforce、健康、薪資、績效或案件資料。
