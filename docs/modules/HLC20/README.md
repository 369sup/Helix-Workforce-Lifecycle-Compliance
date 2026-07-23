# HLC20 — 案件決定、申復與反報復

> Relationship states：candidate 至 ended 均可
> Primary authorities：Decision／Appeal／Independent Case Authority

## 模組目的

處理規則審查、處理決定、通知、申復、反報復追蹤及案件結案。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC20-001 | Case Rule Review | `assessment` | `authority-approval` | HX-TRG-HLC20-001 | HR Legal | Decision Authority | TW-WF-COMPLAINT-001 | 個案待法律審查 |
| HX-ART-HLC20-002 | Case Action Decision | `decision` | `authority-approval` | HX-TRG-HLC20-001 | Decision Authority | Employer Authority | TW-WF-COMPLAINT-001 | 個案待法律審查 |
| HX-ART-HLC20-003 | Case Decision Notice | `notice` | `delivery-receipt` | HX-TRG-HLC20-001 | Case Owner | Decision Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 |
| HX-ART-HLC20-004 | Case Appeal Request | `form` | `submission` | HX-TRG-HLC20-002 | Case Party | Appeal Authority | — | 個案待法律審查 |
| HX-ART-HLC20-005 | Case Appeal Decision | `decision` | `authority-approval` | HX-TRG-HLC20-002 | Independent Reviewer | Appeal Authority | — | 個案待法律審查 |
| HX-ART-HLC20-006 | Anti-retaliation Plan | `plan` | `authority-approval` | HX-TRG-HLC20-003 | Independent Case Owner | Case Authority | TW-WF-COMPLAINT-001,TW-WF-BULLY-002 | 個案待法律審查 |
| HX-ART-HLC20-007 | Anti-retaliation Review | `assessment` | `authority-approval` | HX-TRG-HLC20-003 | Independent Reviewer | Case Authority | TW-WF-COMPLAINT-001,TW-WF-BULLY-002 | 個案待法律審查 |
| HX-ART-HLC20-008 | Case Closure Decision | `decision` | `authority-approval` | HX-TRG-HLC20-004 | Independent Case Owner | Case Authority | TW-WF-DATA-004 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC20-001 | 作成處理或懲戒決定 | findings、規則、比例與 authority 完成 | 通知前 | HX-ART-HLC20-001, HX-ART-HLC20-002, HX-ART-HLC20-003 | 終止須另走 HLC25 |
| HX-TRG-HLC20-002 | 提出申復 | 存在可申復決定與期限 | 期限內 | HX-ART-HLC20-004, HX-ART-HLC20-005 | reviewer 衝突未處理 |
| HX-TRG-HLC20-003 | 啟動反報復追蹤 | 案件涉及受保護通報或 adverse-action 風險 | 案件中及結案後 | HX-ART-HLC20-006, HX-ART-HLC20-007 | 任何 adverse action 未連動 independent review |
| HX-TRG-HLC20-004 | 案件結案 | 決定、通知、follow-up、retention 與 hold 均已決定 | 完成時 | HX-ART-HLC20-008 | relationship ended 不得自動結案 |

## Gate 與輸出

- relationship ended 不得自動結案；終止仍須另走 HLC25。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
