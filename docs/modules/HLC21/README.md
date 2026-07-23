# HLC21 — 關係暫停 Overlay

> Relationship states：active、termination_pending
> Primary authorities：HR／Case／HSE／Payroll／IT／Resource Authority

## 模組目的

建立申請型或事件型 overlay、適用性、決定、狀態 work items 與定期複核。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC21-001 | Overlay Request | `form` | `submission` | HX-TRG-HLC21-001 | Workforce Member | HR Authority | TW-WF-LEAVE-001 | 個案待法律審查 |
| HX-ART-HLC21-002 | Overlay Event Record | `case-record` | `no-signature` | HX-TRG-HLC21-002 | HR Case HSE | Respective Authority | TW-WF-HEALTH-001,TW-WF-INS-001 | 個案待法律審查 |
| HX-ART-HLC21-003 | Overlay Eligibility Assessment | `assessment` | `authority-approval` | HX-TRG-HLC21-001, HX-TRG-HLC21-002 | HR Case HSE | Respective Authority | TW-WF-LEAVE-001,TW-WF-HEALTH-001 | 個案待法律審查 |
| HX-ART-HLC21-004 | Overlay Decision | `decision` | `authority-approval` | HX-TRG-HLC21-003 | HR Case HSE | Respective Authority | TW-WF-LEAVE-001 | 個案待法律審查 |
| HX-ART-HLC21-005 | Overlay Notice | `notice` | `delivery-receipt` | HX-TRG-HLC21-003 | HR | Respective Authority | TW-WF-LEAVE-001 | 個案待法律審查 |
| HX-ART-HLC21-006 | Wage Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | Payroll | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 |
| HX-ART-HLC21-007 | Insurance Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | HR | Employer Authority | TW-WF-INS-002,TW-WF-NHI-002 | 個案待法律審查 |
| HX-ART-HLC21-008 | Pension Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | HR Payroll | Employer Authority | TW-WF-PENSION-002 | 個案待法律審查 |
| HX-ART-HLC21-009 | Assignment Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | Resource | Resource Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC21-010 | Access Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | IT Data | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC21-011 | Asset Status Work Item | `work-item` | `authority-approval` | HX-TRG-HLC21-004 | Asset Owner | Asset Authority | — | 公司政策選擇 |
| HX-ART-HLC21-012 | Overlay Review Record | `record` | `authority-approval` | HX-TRG-HLC21-005 | HR Case HSE | Respective Authority | TW-WF-DATA-002 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC21-001 | 提出 overlay request | 留停、長病假、兵役或其他申請型事件 | 事件開始前或依法定時點 | HX-ART-HLC21-001, HX-ART-HLC21-003 | 資格與法律 basis 未判斷 |
| HX-TRG-HLC21-002 | 發生非申請型 overlay event | 職災醫療或案件暫時措施等事件 | 事件發生時 | HX-ART-HLC21-002, HX-ART-HLC21-003 | 不得要求不適當申請取代事件事實 |
| HX-TRG-HLC21-003 | 作成 overlay decision | 類型、basis、起訖與 authority 完成 | overlay 生效前 | HX-ART-HLC21-004, HX-ART-HLC21-005 | 不得把 active 改為 ended |
| HX-TRG-HLC21-004 | 建立 overlay 狀態 work items | overlay 已決定 | 生效時 | HX-ART-HLC21-006, HX-ART-HLC21-007, HX-ART-HLC21-008, HX-ART-HLC21-009, HX-ART-HLC21-010, HX-ART-HLC21-011 | 工資、保險、退休、權限與資產分開 |
| HX-TRG-HLC21-005 | 定期複核 overlay | review date 到達或事實改變 | review date | HX-ART-HLC21-012 | 不得無限期懸置 |

## Gate 與輸出

- Overlay 不改寫 active relationship，register 不得取代各狀態 work item。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
