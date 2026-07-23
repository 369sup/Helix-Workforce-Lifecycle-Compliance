# HLC23 — 專案釋放、Bench 與再配置

> Relationship states：active
> Primary authorities：Delivery／Resource／CoE／IT／Data Authority

## 模組目的

分開 project release、feedback、交接、Bench review、搜尋與再配置決定。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC23-001 | Project Release Assessment | `assessment` | `authority-approval` | HX-TRG-HLC23-001 | Delivery Resource | Resource Authority | TW-WF-TERM-001 | 公司政策選擇 |
| HX-ART-HLC23-002 | Project Release Decision | `decision` | `authority-approval` | HX-TRG-HLC23-001 | Resource Governance | Resource Authority | TW-WF-TERM-001 | 公司政策選擇 |
| HX-ART-HLC23-003 | Project Release Notice | `notice` | `delivery-receipt` | HX-TRG-HLC23-001 | HR Resource | Resource Authority | TW-WF-TERM-001 | 公司政策選擇 |
| HX-ART-HLC23-004 | Delivery Feedback Record | `record` | `no-signature` | HX-TRG-HLC23-002 | Delivery Manager | Project Authority | TW-WF-DATA-003 | 公司政策選擇 |
| HX-ART-HLC23-005 | Capability Input Record | `record` | `no-signature` | HX-TRG-HLC23-002 | CoE | Capability Authority | TW-WF-DATA-003 | 公司政策選擇 |
| HX-ART-HLC23-006 | Lessons Learned Record | `record` | `no-signature` | HX-TRG-HLC23-002 | Project CoE | Project Authority | TW-WF-DATA-003,TW-WF-TRADE-001 | 公司政策選擇 |
| HX-ART-HLC23-007 | Project Document Handover | `record` | `acknowledgement` | HX-TRG-HLC23-003 | Project Owner | Project Authority | TW-WF-DATA-004,TW-WF-TRADE-001 | 個案待法律審查 |
| HX-ART-HLC23-008 | Project Asset Return | `record` | `acknowledgement` | HX-TRG-HLC23-003 | Asset Owner | Asset Authority | — | 公司政策選擇 |
| HX-ART-HLC23-009 | Client Access Revocation | `authorization` | `authority-approval` | HX-TRG-HLC23-003 | Project IT | Data Authority | TW-WF-DATA-004,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC23-010 | Project Data Disposition | `decision` | `authority-approval` | HX-TRG-HLC23-003 | Project Data | Data Authority | TW-WF-DATA-004,TW-WF-TRADE-001 | 個案待法律審查 |
| HX-ART-HLC23-011 | Bench Plan | `plan` | `acknowledgement` | HX-TRG-HLC23-004 | Resource CoE | Resource Authority | TW-WF-TIME-001 | 公司政策選擇 |
| HX-ART-HLC23-012 | Bench Review | `assessment` | `authority-approval` | HX-TRG-HLC23-005 | Resource HR | Resource Authority | TW-WF-TERM-001 | 個案待法律審查 |
| HX-ART-HLC23-013 | Reallocation Search Record | `record` | `no-signature` | HX-TRG-HLC23-006 | Resource Governance | Resource Authority | TW-WF-TRANSFER-001 | 公司政策選擇 |
| HX-ART-HLC23-014 | Reallocation Decision | `decision` | `authority-approval` | HX-TRG-HLC23-006 | Resource Governance | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC23-001 | 評估並核准 project release | assignment 結束條件與 relationship 狀態已分開 | release 前 | HX-ART-HLC23-001, HX-ART-HLC23-002, HX-ART-HLC23-003 | 不得自動終止 relationship |
| HX-TRG-HLC23-002 | 記錄結案 feedback 與知識 | 交付完成或 assignment 結束 | release 時 | HX-ART-HLC23-004, HX-ART-HLC23-005, HX-ART-HLC23-006 | 不得直接形成 HLC25 結論 |
| HX-TRG-HLC23-003 | 完成專案交接 | 文件、資產、權限與資料清單已知 | release 前後 | HX-ART-HLC23-007, HX-ART-HLC23-008, HX-ART-HLC23-009, HX-ART-HLC23-010 | legal hold 或 retention 未決 |
| HX-TRG-HLC23-004 | 進入 Bench | active relationship 且暫無 assignment | release 生效時 | HX-ART-HLC23-011 | 不得停薪或強迫請假 |
| HX-TRG-HLC23-005 | 定期複核 Bench | review date 到達 | review date | HX-ART-HLC23-012 | 不得無限期無任務 |
| HX-TRG-HLC23-006 | 搜尋並決定再配置 | 存在合適 demand 或職缺 | Bench 或 release 後 | HX-ART-HLC23-013, HX-ART-HLC23-014 | 重大變更另走 HLC08 |

## Gate 與輸出

- Project release 與 Bench 不得自動形成 relationship termination。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
