# HLC09 — 派任條件、調動與工作條件變更

> Relationship states：active
> Primary authorities：HR／Resource／Employer／HSE／Data Authority

## 模組目的

保存 before／after、員工意見、合意需求、決定、通知、交接及重新 clearance。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC09-001 | Project Condition Notice | `notice` | `delivery-receipt` | HX-TRG-HLC09-001 | HR Project | Employer Authority | TW-WF-WAGE-001,TW-WF-TIME-001 | 個案待法律審查 |
| HX-ART-HLC09-002 | Project Condition Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC09-002 | HR Project | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-003 | Transfer Assessment | `assessment` | `authority-approval` | HX-TRG-HLC09-003 | HR Resource | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-004 | Secondment Assessment | `assessment` | `authority-approval` | HX-TRG-HLC09-004 | HR Legal | Employer Authority | TW-WF-REL-001,TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-005 | Work Condition Change Assessment | `assessment` | `authority-approval` | HX-TRG-HLC09-005 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-006 | Employee Change Input | `form` | `submission` | HX-TRG-HLC09-006 | Employee | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-007 | Condition Delta Record | `record` | `no-signature` | HX-TRG-HLC09-005 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-008 | Consent Requirement Decision | `decision` | `authority-approval` | HX-TRG-HLC09-007, HX-TRG-HLC09-008 | HR Legal | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-009 | Change Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC09-007 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-010 | Change Decision | `decision` | `authority-approval` | HX-TRG-HLC09-007, HX-TRG-HLC09-008 | HR Resource | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-011 | Change Notice | `notice` | `delivery-receipt` | HX-TRG-HLC09-008 | HR | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |
| HX-ART-HLC09-012 | Assignment Handover Record | `record` | `acknowledgement` | HX-TRG-HLC09-009 | Delivery Resource | Resource Authority | TW-WF-DATA-003 | 公司政策選擇 |
| HX-ART-HLC09-013 | Access Change Authorization | `authorization` | `authority-approval` | HX-TRG-HLC09-009 | IT Data | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC09-014 | Change Re-clearance Checklist | `checklist` | `authority-approval` | HX-TRG-HLC09-010 | HR HSE CoE | Respective Authority | TW-WF-OSH-001,TW-WF-HEALTH-001 | 個案待法律審查 |
| HX-ART-HLC09-015 | New Assignment Authorization | `authorization` | `authority-approval` | HX-TRG-HLC09-011 | HR Resource | Employer Authority | TW-WF-TRANSFER-001 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC09-001 | 提供專案條件 | 公司既定津貼、住宿、交通或輪班安排 | 派任生效前 | HX-ART-HLC09-001 | 重大變更須另走 agreement |
| HX-TRG-HLC09-002 | 變更契約性專案條件 | 個別條件需雙方合意 | 變更生效前 | HX-ART-HLC09-002 | 未合意不得用通知代替 |
| HX-TRG-HLC09-003 | 擬調動工作 | 受僱者、調動內容與五原則 selector 已知 | 決定前 | HX-ART-HLC09-003 | 五原則或契約 gate 未完成 |
| HX-TRG-HLC09-004 | 擬借調 | 法人、期間、指揮、回復與成本安排已知 | 決定前 | HX-ART-HLC09-004 | 雇主或指揮邊界不明 |
| HX-TRG-HLC09-005 | 擬變更工作條件 | before／after 與影響已知 | 決定前 | HX-ART-HLC09-005, HX-ART-HLC09-007 | 同意需求未判斷 |
| HX-TRG-HLC09-006 | 取得員工意見 | 調動、借調或重大變更評估進行中 | 決定前 | HX-ART-HLC09-006 | 不得把陳述當作同意 |
| HX-TRG-HLC09-007 | 判定需要合意 | 變更超出契約或需雙方表示 | 生效前 | HX-ART-HLC09-008, HX-ART-HLC09-009, HX-ART-HLC09-010 | 未合意不得生效 |
| HX-TRG-HLC09-008 | 判定得依法通知 | 變更在合法範圍且 gate 通過 | 生效前 | HX-ART-HLC09-008, HX-ART-HLC09-010, HX-ART-HLC09-011 | 通知不得掩蓋不利變更 |
| HX-TRG-HLC09-009 | 結束原 assignment | change decision 已核准 | 新 assignment 前 | HX-ART-HLC09-012, HX-ART-HLC09-013 | 交接與權限未處理 |
| HX-TRG-HLC09-010 | 重跑受影響 clearance | 工作、地點、設備、危害或人口改變 | 新工作前 | HX-ART-HLC09-014 | 任一 gate blocked |
| HX-TRG-HLC09-011 | 建立新 assignment | 變更生效且 clearance 通過 | 新工作前 | HX-ART-HLC09-015 | 八類角色或 Priority Owner 缺失 |

## Gate 與輸出

- 通知不得取代必要的雙方合意。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
