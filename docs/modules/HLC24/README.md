# HLC24 — 自請離職表示與生效

> Relationship states：active、termination_pending
> Primary authorities：Employee／HR／Employer Authority

## 模組目的

處理離職表示、收受、預告、最後工作日、工作免除、撤回及交接。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC24-001 | Resignation Statement | `form` | `submission` | HX-TRG-HLC24-001 | Employee | HR Authority | TW-WF-RESIGN-001 | 個案待法律審查 |
| HX-ART-HLC24-002 | Resignation Receipt Record | `record` | `delivery-receipt` | HX-TRG-HLC24-001 | HR | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 |
| HX-ART-HLC24-003 | Resignation Notice Assessment | `assessment` | `authority-approval` | HX-TRG-HLC24-002 | HR | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 |
| HX-ART-HLC24-004 | Last Workday Decision | `decision` | `authority-approval` | HX-TRG-HLC24-002 | HR | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 |
| HX-ART-HLC24-005 | Work Exemption Decision | `decision` | `authority-approval` | HX-TRG-HLC24-003 | HR | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 |
| HX-ART-HLC24-006 | Resignation Withdrawal Request | `form` | `submission` | HX-TRG-HLC24-004 | Employee | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 |
| HX-ART-HLC24-007 | Resignation Withdrawal Decision | `decision` | `authority-approval` | HX-TRG-HLC24-004 | HR Legal | Employer Authority | TW-WF-RESIGN-001 | 個案待法律審查 |
| HX-ART-HLC24-008 | Resignation Handover Record | `record` | `acknowledgement` | HX-TRG-HLC24-005 | Employee Delivery | Delivery Authority | — | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC24-001 | 收到自請離職表示 | 可識別表示人、內容與時間 | 收到時 | HX-ART-HLC24-001, HX-ART-HLC24-002 | 意思不明須個案確認 |
| HX-TRG-HLC24-002 | 判斷預告與最後工作日 | 已知年資、表示與雙方安排 | 收到後 | HX-ART-HLC24-003, HX-ART-HLC24-004 | 不得用行政日改寫 effective date |
| HX-TRG-HLC24-003 | 決定工作免除 | 預告期間存在且公司擬免除工作 | 免除前 | HX-ART-HLC24-005 | 工資與權益未處理 |
| HX-TRG-HLC24-004 | 收到撤回請求 | 終止尚未生效或存在爭議 | 收到時 | HX-ART-HLC24-006, HX-ART-HLC24-007 | 撤回法律效果個案審查 |
| HX-TRG-HLC24-005 | 執行離職交接 | last workday 已定 | 關係結束前後 | HX-ART-HLC24-008 | 不得以未交接扣留法定給付 |

## Gate 與輸出

- 含糊談話、專案釋放或未到班不得自動推定離職。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
