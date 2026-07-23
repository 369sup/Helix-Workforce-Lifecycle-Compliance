# HLC10 — 工時、出勤、請假與加班

> Relationship states：active
> Primary authorities：Time／HR／Delivery／Employer Authority

## 模組目的

分開排班、實際出勤、請假申請與決定，以及加班申請、決定與事實。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC10-001 | Shift Schedule Notice | `notice` | `delivery-receipt` | HX-TRG-HLC10-001 | Delivery HR | Time Authority | TW-WF-TIME-001 | 個案待法律審查 |
| HX-ART-HLC10-002 | Attendance Record | `record` | `no-signature` | HX-TRG-HLC10-001 | Delivery HR | Time Authority | TW-WF-RECORD-002,TW-WF-TIME-001 | 依法必須 |
| HX-ART-HLC10-003 | Leave Request | `form` | `submission` | HX-TRG-HLC10-002 | Employee | HR Authority | TW-WF-LEAVE-001 | 個案待法律審查 |
| HX-ART-HLC10-004 | Leave Decision | `decision` | `authority-approval` | HX-TRG-HLC10-002 | HR | Employer Authority | TW-WF-LEAVE-001 | 個案待法律審查 |
| HX-ART-HLC10-005 | Overtime Request | `form` | `submission` | HX-TRG-HLC10-003 | Delivery Owner | Time Authority | TW-WF-TIME-002 | 個案待法律審查 |
| HX-ART-HLC10-006 | Overtime Decision | `decision` | `authority-approval` | HX-TRG-HLC10-003 | Time Authority | Employer Authority | TW-WF-TIME-002 | 個案待法律審查 |
| HX-ART-HLC10-007 | Overtime Work Record | `record` | `no-signature` | HX-TRG-HLC10-003 | Delivery HR | Time Authority | TW-WF-TIME-001,TW-WF-WAGE-001 | 依法必須 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC10-001 | 建立排班與出勤事實 | 受僱者執行工作 | 排班前及工作發生時 | HX-ART-HLC10-001, HX-ART-HLC10-002 | 不得由計畫工時覆蓋實際工時 |
| HX-TRG-HLC10-002 | 申請或決定請假 | 請假事件發生 | 依適用時點 | HX-ART-HLC10-003, HX-ART-HLC10-004 | 法定權利不得以未核准任意消滅 |
| HX-TRG-HLC10-003 | 申請或執行加班 | 超出正常工時之工作需求 | 工作前及工作後 | HX-ART-HLC10-005, HX-ART-HLC10-006, HX-ART-HLC10-007 | 實際工作仍須記錄與給付 |

## Gate 與輸出

- 計畫或核准紀錄不得覆蓋實際工作事實與法定權利。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
