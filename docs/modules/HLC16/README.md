# HLC16 — 晉升、職級、薪酬與職涯變動

> Relationship states：active
> Primary authorities：CoE／HR／Promotion／Grade／Compensation Authority

## 模組目的

分開晉升、職級、薪酬、職務及授權變更的評估、決定與法律行為。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC16-001 | Promotion Assessment | `assessment` | `authority-approval` | HX-TRG-HLC16-001 | CoE HR | Promotion Authority | — | 公司政策選擇 |
| HX-ART-HLC16-002 | Promotion Decision | `decision` | `authority-approval` | HX-TRG-HLC16-001 | Promotion Governance | Promotion Authority | — | 公司政策選擇 |
| HX-ART-HLC16-003 | Promotion Notice | `notice` | `delivery-receipt` | HX-TRG-HLC16-001 | HR | Employer Authority | — | 公司政策選擇 |
| HX-ART-HLC16-004 | Grade Adjustment Assessment | `assessment` | `authority-approval` | HX-TRG-HLC16-002 | CoE HR | Grade Authority | — | 公司政策選擇 |
| HX-ART-HLC16-005 | Grade Adjustment Decision | `decision` | `authority-approval` | HX-TRG-HLC16-002 | Grade Governance | Grade Authority | — | 公司政策選擇 |
| HX-ART-HLC16-006 | Grade Adjustment Notice | `notice` | `delivery-receipt` | HX-TRG-HLC16-002 | HR | Employer Authority | — | 公司政策選擇 |
| HX-ART-HLC16-007 | Compensation Assessment | `assessment` | `authority-approval` | HX-TRG-HLC16-003, HX-TRG-HLC16-004 | HR Compensation | Compensation Authority | TW-WF-WAGE-001 | 個案待法律審查 |
| HX-ART-HLC16-008 | Compensation Decision | `decision` | `authority-approval` | HX-TRG-HLC16-003, HX-TRG-HLC16-004 | Compensation Governance | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 |
| HX-ART-HLC16-009 | Compensation Notice | `notice` | `delivery-receipt` | HX-TRG-HLC16-003 | HR | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 |
| HX-ART-HLC16-010 | Compensation Change Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC16-004 | HR | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 |
| HX-ART-HLC16-011 | Role Change Decision | `decision` | `authority-approval` | HX-TRG-HLC16-005, HX-TRG-HLC16-006 | HR CoE | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC16-012 | Role Change Notice | `notice` | `delivery-receipt` | HX-TRG-HLC16-005 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC16-013 | Role Change Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC16-006 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC16-014 | Authorization Change Decision | `authorization` | `authority-approval` | HX-TRG-HLC16-007 | Technical Authority | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC16-001 | 評估晉升 | 已完成 role standard、evidence 與校準 | 決定前 | HX-ART-HLC16-001, HX-ART-HLC16-002, HX-ART-HLC16-003 | 單一專案偏好不足 |
| HX-TRG-HLC16-002 | 調整公司職級 | 職級標準與跨案 evidence 完成 | 生效前 | HX-ART-HLC16-004, HX-ART-HLC16-005, HX-ART-HLC16-006 | 專案角色不得自動推導 |
| HX-TRG-HLC16-003 | 調整薪酬且無須改約 | 合法薪酬決定不改變需合意事項 | 生效前 | HX-ART-HLC16-007, HX-ART-HLC16-008, HX-ART-HLC16-009 | 不得降低法定權益 |
| HX-TRG-HLC16-004 | 調整薪酬且需要合意 | 變更涉及雙方約定事項 | 生效前 | HX-ART-HLC16-007, HX-ART-HLC16-008, HX-ART-HLC16-010 | 未合意不得生效 |
| HX-TRG-HLC16-005 | 變更職務且無須改約 | 變更落在合法管理與契約範圍內 | 生效前 | HX-ART-HLC16-011, HX-ART-HLC16-012 | 仍須檢查 HLC08 |
| HX-TRG-HLC16-006 | 變更職務且需要合意 | 變更超出既有契約範圍 | 生效前 | HX-ART-HLC16-011, HX-ART-HLC16-013 | 未合意不得用通知代替 |
| HX-TRG-HLC16-007 | 變更技術授權 | 能力、資格或任務範圍改變 | 授權生效前 | HX-ART-HLC16-014 | 不得由晉升自動取得 |

## Gate 與輸出

- 通知不得取代需要合意的條件變更，晉升不自動授予技術權限。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
