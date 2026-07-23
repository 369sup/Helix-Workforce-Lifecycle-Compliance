# HLC06 — 能力基線與公司職級

> Relationship states：active
> Primary authorities：CoE／Capability／Grade Authority

## 模組目的

分開能力標準、初始與定期評估，以及公司職級決定。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC06-001 | Competency Framework | `standard` | `authority-approval` | HX-TRG-HLC06-001 | CoE | Capability Authority | — | 公司政策選擇 |
| HX-ART-HLC06-002 | Initial Competency Assessment | `assessment` | `authority-approval` | HX-TRG-HLC06-001 | CoE | Capability Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC06-003 | Periodic Competency Assessment | `assessment` | `authority-approval` | HX-TRG-HLC06-002 | CoE | Capability Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC06-004 | Professional Grade Decision | `decision` | `authority-approval` | HX-TRG-HLC06-003 | CoE HR | Grade Authority | — | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC06-001 | 建立初始能力基線 | active relationship 且已知角色需求 | 首次授權前 | HX-ART-HLC06-001, HX-ART-HLC06-002 | 職稱不得代替評估 |
| HX-TRG-HLC06-002 | 定期或事件重評能力 | 到期、任務或事實改變 | 到期或變更前 | HX-ART-HLC06-003 | 過期 assessment 不得沿用 |
| HX-TRG-HLC06-003 | 評定公司職級 | 完成能力與治理評審 | 職級生效前 | HX-ART-HLC06-004 | 專案角色不得自動變更職級 |

## Gate 與輸出

- 公司職級、專案角色、資格與技術授權不得互相推定。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
