# HLC22 — 復職、復工與狀態恢復

> Relationship states：active、termination_pending
> Primary authorities：HR／Health／HSE／Resource／IT Authority

## 模組目的

處理 return request、適能、工作調整、clearance、決定與通知。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC22-001 | Return Request | `form` | `submission` | HX-TRG-HLC22-001 | Workforce Member | HR Authority | TW-WF-LEAVE-001 | 個案待法律審查 |
| HX-ART-HLC22-002 | Return Fitness Assessment | `assessment` | `authority-approval` | HX-TRG-HLC22-002 | Health HSE | Health Authority | TW-WF-HEALTH-001,TW-WF-DATA-002 | 個案待法律審查 |
| HX-ART-HLC22-003 | Return Work Adjustment Assessment | `assessment` | `authority-approval` | HX-TRG-HLC22-002 | HR HSE Resource | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC22-004 | Return Clearance Checklist | `checklist` | `authority-approval` | HX-TRG-HLC22-002 | HR HSE Resource IT | Respective Authority | TW-WF-OSH-004,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC22-005 | Return Decision | `decision` | `authority-approval` | HX-TRG-HLC22-003 | HR Resource | Employer Authority | TW-WF-LEAVE-001 | 個案待法律審查 |
| HX-ART-HLC22-006 | Return Notice | `notice` | `delivery-receipt` | HX-TRG-HLC22-003 | HR | Employer Authority | TW-WF-LEAVE-001 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC22-001 | 提出復職或 return event | overlay 結束條件可能成立 | 預定 return 前 | HX-ART-HLC22-001 | 健康資料不得過度揭露 |
| HX-TRG-HLC22-002 | 執行 return clearance | 工作、健康、資格、權限與 assignment 已知 | 實際 return 前 | HX-ART-HLC22-002, HX-ART-HLC22-003, HX-ART-HLC22-004 | 任一 blocking gate 未完成 |
| HX-TRG-HLC22-003 | 作成 return decision | clearance 完成 | return 前 | HX-ART-HLC22-005, HX-ART-HLC22-006 | 不得自動恢復過期授權 |

## Gate 與輸出

- 到期資格、授權、存取及 assignment 不得自動恢復。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
