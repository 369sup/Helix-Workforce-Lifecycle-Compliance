# HLC28 — 離職後請求、義務與保存

> Relationship states：ended
> Primary authorities：HR／Legal／Data Authority

## 模組目的

處理服務證明、離職後義務或請求、爭議、retention 及 legal hold。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC28-001 | Service Certificate Request | `form` | `submission` | HX-TRG-HLC28-001 | Former Employee | Employer Authority | TW-WF-SERVICE-001 | 依法必須 |
| HX-ART-HLC28-002 | Service Certificate | `notice` | `authority-approval` | HX-TRG-HLC28-001 | HR | Employer Agent | TW-WF-SERVICE-001 | 依法必須 |
| HX-ART-HLC28-003 | Post-employment Confidentiality Notice | `notice` | `delivery-receipt` | HX-TRG-HLC28-002 | Legal HR | Employer Authority | TW-WF-TRADE-001 | 個案待法律審查 |
| HX-ART-HLC28-004 | Noncompete Compensation Record | `record` | `no-signature` | HX-TRG-HLC28-002 | Payroll Legal | Employer Authority | TW-WF-CONTRACT-002 | 個案待法律審查 |
| HX-ART-HLC28-005 | Post-employment Request Record | `case-record` | `no-signature` | HX-TRG-HLC28-002 | HR Legal | Employer Authority | TW-WF-SERVICE-001,TW-WF-DATA-004 | 個案待法律審查 |
| HX-ART-HLC28-006 | Post-employment Dispute Register | `register` | `no-signature` | HX-TRG-HLC28-002 | Legal HR | Legal Authority | — | 個案待法律審查 |
| HX-ART-HLC28-007 | Retention Decision | `decision` | `authority-approval` | HX-TRG-HLC28-003 | Data Legal | Data Authority | TW-WF-DATA-004 | 個案待法律審查 |
| HX-ART-HLC28-008 | Legal Hold Decision | `decision` | `authority-approval` | HX-TRG-HLC28-003 | Legal Data | Legal Authority | TW-WF-DATA-004 | 個案待法律審查 |
| HX-ART-HLC28-009 | Legal Hold Release Decision | `decision` | `authority-approval` | HX-TRG-HLC28-003 | Legal Data | Legal Authority | TW-WF-DATA-004 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC28-001 | 收到服務證明請求 | 勞動契約終止且勞工提出請求 | 收到後 | HX-ART-HLC28-001, HX-ART-HLC28-002 | 不得附加交接或放棄權利條件 |
| HX-TRG-HLC28-002 | 處理離職後義務或請求 | 存在有效義務、請求、爭議或職災延續 | 事件發生時 | HX-ART-HLC28-003, HX-ART-HLC28-004, HX-ART-HLC28-005, HX-ART-HLC28-006 | 不得用提醒創設新義務 |
| HX-TRG-HLC28-003 | 建立或解除 legal hold | 訴訟、調查或法定保存風險存在或消失 | 事件發生時 | HX-ART-HLC28-007, HX-ART-HLC28-008, HX-ART-HLC28-009 | 不得無限期保存全部資料 |

## Gate 與輸出

- 提醒不得創設新義務，legal hold 不得無限期擴張。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
