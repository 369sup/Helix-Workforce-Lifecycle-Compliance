# HLC05 — Assignment 與角色治理

> Relationship states：active
> Primary authorities：Resource／Project／Employer／Work Priority Authority

## 模組目的

建立 Helix assignment、專案治理與每一類 authority 邊界。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC05-001 | Initial Helix Assignment Authorization | `authorization` | `authority-approval` | HX-TRG-HLC05-001 | HR Resource | Employer Authority | — | 公司政策選擇 |
| HX-ART-HLC05-002 | Project Assignment Request | `form` | `submission` | HX-TRG-HLC05-002 | Delivery Resource | Resource Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC05-003 | Project Assignment Decision | `decision` | `authority-approval` | HX-TRG-HLC05-002 | Resource Governance | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC05-004 | Project Assignment Notice | `notice` | `acknowledgement` | HX-TRG-HLC05-002 | HR Resource | Employer Authority | TW-WF-TRANSFER-001,TW-WF-TIME-001 | 個案待法律審查 |
| HX-ART-HLC05-005 | Project Organization Plan | `plan` | `authority-approval` | HX-TRG-HLC05-003 | Project Governance | Project Authority | — | 公司政策選擇 |
| HX-ART-HLC05-006 | Project RACI Matrix | `register` | `authority-approval` | HX-TRG-HLC05-003 | Project Governance | Project Authority | — | 公司政策選擇 |
| HX-ART-HLC05-007 | Project Decision Rights Register | `register` | `authority-approval` | HX-TRG-HLC05-003 | Project Governance | Project Authority | — | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC05-001 | 建立初始 Helix assignment | active relationship 且工作可指派 | 工作指派前 | HX-ART-HLC05-001 | 八類角色或 Priority Owner 缺失 |
| HX-TRG-HLC05-002 | 提出或核准 project assignment | active relationship、capacity、角色與期間已知 | 工作分派前 | HX-ART-HLC05-002, HX-ART-HLC05-003, HX-ART-HLC05-004 | Priority Owner 或 Employer 缺失 |
| HX-TRG-HLC05-003 | 建立 project governance | 專案交付介面與 authority 已知 | 專案啟動前 | HX-ART-HLC05-005, HX-ART-HLC05-006, HX-ART-HLC05-007 | 不得取代 Employer 或 HSE authority |

## Gate 與輸出

- Employer、Priority Owner、Technical、HSE 與 Delivery authority 不得合併推定。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
