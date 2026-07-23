# HLC00 — 人力需求與職位治理

> Relationship states：planning
> Primary authorities：Business／Resource／Budget／Employer Authority

## 模組目的

建立需求、職位範圍、關係類型、危害及資格條件，作為招募或採購的上游 gate。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC00-001 | Workforce Demand Request | `form` | `submission` | HX-TRG-HLC00-001 | Business Owner | Resource Authority | — | 公司政策選擇 |
| HX-ART-HLC00-002 | Workforce Demand Decision | `decision` | `authority-approval` | HX-TRG-HLC00-001 | Resource Governance | Budget Authority | — | 公司政策選擇 |
| HX-ART-HLC00-003 | Position Scope Description | `plan` | `authority-approval` | HX-TRG-HLC00-002 | Hiring Owner | Employer Authority | TW-WF-RECRUIT-001,TW-WF-OSH-001 | 個案待法律審查 |
| HX-ART-HLC00-004 | Relationship Classification Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-003 | HR Procurement | Legal Authority | TW-WF-REL-001,TW-WF-REL-002,TW-WF-REL-003 | 個案待法律審查 |
| HX-ART-HLC00-005 | Fixed-term Contract Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-003 | HR | Legal Authority | TW-WF-CONTRACT-001 | 個案待法律審查 |
| HX-ART-HLC00-006 | Position Hazard Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-004 | HSE | HSE Authority | TW-WF-OSH-001,TW-WF-HEALTH-001 | 個案待法律審查 |
| HX-ART-HLC00-007 | Qualification Requirement Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-004 | CoE HSE | Technical Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC00-008 | Health Requirement Assessment | `assessment` | `authority-approval` | HX-TRG-HLC00-004 | HSE | Health Authority | TW-WF-HEALTH-001,TW-WF-DATA-002 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC00-001 | 提出 workforce demand | 已知需求 owner、期間、預算與內部供給狀態 | 招募或採購前 | HX-ART-HLC00-001, HX-ART-HLC00-002 | 需求未核准 |
| HX-TRG-HLC00-002 | 建立職務或工作範圍 | 已知工作、地點、工時、設備與基本責任 | 發布職缺或詢價前 | HX-ART-HLC00-003 | 職務必要性不明 |
| HX-TRG-HLC00-003 | 選擇關係或契約類型 | 直聘、派遣、承攬、顧問、實習或定期契約任一候選 | 接觸候選人或供應商前 | HX-ART-HLC00-004, HX-ART-HLC00-005 | 從屬性或契約類型 unresolved |
| HX-TRG-HLC00-004 | 建立職位風險與資格需求 | 已知任務、危害、設備、場所與人口 | 甄選條件發布前 | HX-ART-HLC00-006, HX-ART-HLC00-007, HX-ART-HLC00-008 | 不得自行假設健康或法定資格 |

## Gate 與輸出

- 需求、職位、關係、危害與資格任一未定，不得進入招募或提案。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
