# HLC18 — 案件受理、分類與獨立路由

> Relationship states：candidate 至 ended 均可
> Primary authorities：Independent Case／HSE／Employer Authority

## 模組目的

處理 intake、緊急風險、案件分類、衝突檢查及替代或外部路徑。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC18-001 | Case Intake Record | `case-record` | `no-signature` | HX-TRG-HLC18-001 | Independent Case Owner | Case Authority | TW-WF-COMPLAINT-001,TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 |
| HX-ART-HLC18-002 | Emergency Risk Assessment | `assessment` | `authority-approval` | HX-TRG-HLC18-001 | Case HSE | HSE Authority | TW-WF-OSH-003 | 個案待法律審查 |
| HX-ART-HLC18-003 | Case Classification Decision | `decision` | `authority-approval` | HX-TRG-HLC18-002 | Independent Case Owner | Case Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 |
| HX-ART-HLC18-004 | Case Conflict Check | `checklist` | `authority-approval` | HX-TRG-HLC18-002 | Independent Case Owner | Case Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 |
| HX-ART-HLC18-005 | Alternate Route Decision | `decision` | `authority-approval` | HX-TRG-HLC18-003 | Independent Case Governance | Employer Authority | TW-WF-HARASS-002,TW-WF-BULLY-001 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC18-001 | 收到申訴、通報或職場事件 | 任一 intake channel 收到資訊 | 立即 | HX-ART-HLC18-001, HX-ART-HLC18-002 | 緊急安全或保護需求未評估 |
| HX-TRG-HLC18-002 | 分類案件並檢查衝突 | 已知事件、人口、被申訴人與可能制度 | 受理後立即 | HX-ART-HLC18-003, HX-ART-HLC18-004 | 最高負責人或管理線衝突未處理 |
| HX-TRG-HLC18-003 | 決定替代或外部路徑 | 內部 authority 衝突或法律要求外部處理 | 調查開始前 | HX-ART-HLC18-005 | 不得由涉案管理線結案 |

## Gate 與輸出

- 被申訴人、最高負責人或涉案管理線不得控制自身案件路由。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
