# HLC15 — 試用約定、評估、延長與結果

> Relationship states：offer_pending、pre_start、active
> Primary authorities：HR／Performance／Employer Authority

## 模組目的

以獨立路徑處理試用選擇、合理期間、雙方約定、checkpoint、延長、通過及未通過。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC15-001 | Trial Applicability Assessment | `assessment` | `authority-approval` | HX-TRG-HLC15-001 | HR Performance | Employer Authority | TW-WF-TRIAL-001 | 公司政策選擇 |
| HX-ART-HLC15-002 | Trial Period Reasonableness Decision | `decision` | `authority-approval` | HX-TRG-HLC15-001 | HR Performance | Employer Authority | TW-WF-TRIAL-006 | 個案待法律審查 |
| HX-ART-HLC15-003 | Trial Terms Annex | `agreement` | `bilateral-signature` | HX-TRG-HLC15-001 | HR | Employer Authority | TW-WF-TRIAL-002,TW-WF-TRIAL-006 | 個案待法律審查 |
| HX-ART-HLC15-004 | Trial Evaluation Plan | `plan` | `acknowledgement` | HX-TRG-HLC15-001 | Performance Owner | Performance Authority | TW-WF-TRIAL-006 | 公司政策選擇 |
| HX-ART-HLC15-005 | Trial Checkpoint Assessment | `assessment` | `authority-approval` | HX-TRG-HLC15-002 | Performance Owner | Performance Authority | TW-WF-TRIAL-002,TW-WF-TRIAL-006 | 公司政策選擇 |
| HX-ART-HLC15-006 | Trial Extension Assessment | `assessment` | `authority-approval` | HX-TRG-HLC15-003 | HR Performance | Employer Authority | TW-WF-TRIAL-003 | 個案待法律審查 |
| HX-ART-HLC15-007 | Trial Extension Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC15-003 | HR | Employer Authority | TW-WF-TRIAL-003 | 個案待法律審查 |
| HX-ART-HLC15-008 | Trial Pass Decision | `decision` | `authority-approval` | HX-TRG-HLC15-004 | Performance Governance | Employer Authority | TW-WF-TRIAL-002,TW-WF-TRIAL-004 | 公司政策選擇 |
| HX-ART-HLC15-009 | Continued Relationship Notice | `notice` | `delivery-receipt` | HX-TRG-HLC15-004 | HR | Employer Authority | TW-WF-TRIAL-004 | 公司政策選擇 |
| HX-ART-HLC15-010 | Trial Non-pass Assessment | `assessment` | `authority-approval` | HX-TRG-HLC15-005 | Performance Governance | Employer Authority | TW-WF-TRIAL-005 | 個案待法律審查 |
| HX-ART-HLC15-011 | Employer Termination Review Request | `form` | `submission` | HX-TRG-HLC15-005 | HR Performance | Employer Authority | TW-WF-TRIAL-005,TW-WF-TERM-001 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC15-001 | 選擇試用安排 | 受僱、工作特性支持且公司擬約定試用 | 契約成立前 | HX-ART-HLC15-001, HX-ART-HLC15-002, HX-ART-HLC15-003, HX-ART-HLC15-004 | 合理性或雙方合意不足 |
| HX-TRG-HLC15-002 | 執行試用 checkpoint | 有效 Trial Terms Annex 與 Trial Evaluation Plan | 約定 checkpoint | HX-ART-HLC15-005 | 請假、資源或主管變更未做 integrity review |
| HX-TRG-HLC15-003 | 擬延長試用 | 原期間尚未屆滿且確有評估必要 | 原期限前 | HX-ART-HLC15-006, HX-ART-HLC15-007 | 未完成雙方合意不得延長 |
| HX-TRG-HLC15-004 | 試用評估通過 | checkpoint evidence 足以支持通過 | 原期限前或屆期 | HX-ART-HLC15-008, HX-ART-HLC15-009 | 不得重設年資 |
| HX-TRG-HLC15-005 | 試用評估未通過 | 存在具體 assessment facts | 原期限前或屆期 | HX-ART-HLC15-010, HX-ART-HLC15-011 | 只能送 HLC25 legal review |

## Gate 與輸出

- 未約定試用即不產生試用文件；未通過只能送 HLC25 法律審查。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
