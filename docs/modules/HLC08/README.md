# HLC08 — 工地動員、危害與專案存取

> Relationship states：active
> Primary authorities：Project／Site／HSE／Technical／Data Authority

## 模組目的

處理動員、危害告知、資格、設備、permit、客戶資料及系統存取。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC08-001 | Site Mobilization Checklist | `checklist` | `authority-approval` | HX-TRG-HLC08-001 | Site HSE | HSE Authority | TW-WF-OSH-001,TW-WF-OSH-002 | 個案待法律審查 |
| HX-ART-HLC08-002 | Site Hazard Notice | `notice` | `acknowledgement` | HX-TRG-HLC08-002 | Site HSE | HSE Authority | TW-WF-OSH-001,TW-WF-OSH-003 | 個案待法律審查 |
| HX-ART-HLC08-003 | Site Qualification Clearance | `decision` | `authority-approval` | HX-TRG-HLC08-003 | Site HSE | HSE Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC08-004 | Equipment Clearance | `decision` | `authority-approval` | HX-TRG-HLC08-003 | Equipment HSE | HSE Authority | TW-WF-OSH-002 | 個案待法律審查 |
| HX-ART-HLC08-005 | Work Permit Clearance | `decision` | `authority-approval` | HX-TRG-HLC08-003 | Site HSE | HSE Authority | TW-WF-OSH-001 | 個案待法律審查 |
| HX-ART-HLC08-006 | Client Data Authorization | `authorization` | `authority-approval` | HX-TRG-HLC08-004 | Project Data | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC08-007 | Client System Authorization | `authorization` | `authority-approval` | HX-TRG-HLC08-004 | Project IT | Data Authority | TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC08-008 | Project Conflict Declaration | `form` | `submission` | HX-TRG-HLC08-005 | Workforce Member | Compliance Authority | — | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC08-001 | 啟動 site mobilization | 現場、承攬層級、設備與人口已知 | 進場前 | HX-ART-HLC08-001 | 未完成必要 selector |
| HX-TRG-HLC08-002 | 執行危害告知 | 工作者將接觸已辨識危害 | 作業前 | HX-ART-HLC08-002 | 告知不得取代控制與訓練 |
| HX-TRG-HLC08-003 | 執行 site clearance | 資格、設備、permit 與訓練可查 | 作業前 | HX-ART-HLC08-003, HX-ART-HLC08-004, HX-ART-HLC08-005 | 任一 blocking gate 未通過 |
| HX-TRG-HLC08-004 | 授予客戶資料或系統權限 | 專案需要且最小權限已定 | 存取前 | HX-ART-HLC08-006, HX-ART-HLC08-007 | 保密或資料 gate 未完成 |
| HX-TRG-HLC08-005 | 申報專案利益衝突 | 存在實際或潛在衝突 | 接觸決定或資料前 | HX-ART-HLC08-008 | 未完成 review |

## Gate 與輸出

- 任一現場或存取 gate blocked 時不得開始相應工作。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
