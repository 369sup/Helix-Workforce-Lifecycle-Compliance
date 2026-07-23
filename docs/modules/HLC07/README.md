# HLC07 — 技術授權生命週期

> Relationship states：active
> Primary authorities：Technical／HSE／Authorization Authority

## 模組目的

管理技術授權的申請、授予、登錄、暫停、撤銷及回復。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC07-001 | Technical Authorization Request | `form` | `submission` | HX-TRG-HLC07-001 | Technical Owner | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC07-002 | Technical Authorization Decision | `authorization` | `authority-approval` | HX-TRG-HLC07-001 | Technical Authority | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC07-003 | Technical Authorization Register | `register` | `no-signature` | HX-TRG-HLC07-001 | Technical Governance | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC07-004 | Technical Authorization Suspension Decision | `decision` | `authority-approval` | HX-TRG-HLC07-002 | Technical HSE | Authorization Authority | TW-WF-OSH-003 | 個案待法律審查 |
| HX-ART-HLC07-005 | Technical Authorization Revocation Decision | `decision` | `authority-approval` | HX-TRG-HLC07-003 | Technical HSE | Authorization Authority | TW-WF-OSH-003 | 個案待法律審查 |
| HX-ART-HLC07-006 | Technical Authorization Restoration Decision | `decision` | `authority-approval` | HX-TRG-HLC07-004 | Technical HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC07-001 | 授予技術權限 | 資格、能力、範圍及期限明確 | 受管制工作前 | HX-ART-HLC07-001, HX-ART-HLC07-002, HX-ART-HLC07-003 | 資格或 authority 不足 |
| HX-TRG-HLC07-002 | 暫停技術權限 | 出現即時風險或暫時不符合 | 立即 | HX-ART-HLC07-004 | 不得作為隱性懲戒 |
| HX-TRG-HLC07-003 | 撤銷技術權限 | 持續不符合且完成權限審查 | 決定時 | HX-ART-HLC07-005 | 不得自動終止關係 |
| HX-TRG-HLC07-004 | 回復技術權限 | 補正完成且重新評估合格 | 恢復工作前 | HX-ART-HLC07-006 | 不得自動恢復 |

## Gate 與輸出

- 授權變更不自動變更職級、資格或 relationship state。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
