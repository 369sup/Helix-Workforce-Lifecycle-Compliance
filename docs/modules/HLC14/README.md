# HLC14 — 績效目標、評估與改善

> Relationship states：active
> Primary authorities：Performance Owner／Performance Governance／Appeal Authority

## 模組目的

分開目標、各線 input、校準、結果、改善、員工陳述及申覆。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC14-001 | Annual Goal Plan | `plan` | `acknowledgement` | HX-TRG-HLC14-001 | Performance Owner | Performance Authority | — | 公司政策選擇 |
| HX-ART-HLC14-002 | Project Goal Plan | `plan` | `acknowledgement` | HX-TRG-HLC14-002 | Delivery Manager | Performance Authority | — | 公司政策選擇 |
| HX-ART-HLC14-003 | Delivery Assessment Input | `record` | `no-signature` | HX-TRG-HLC14-003 | Delivery Manager | Performance Governance | TW-WF-DATA-003 | 公司政策選擇 |
| HX-ART-HLC14-004 | Capability Assessment Input | `record` | `no-signature` | HX-TRG-HLC14-003 | People Manager | Performance Governance | TW-WF-DATA-003 | 公司政策選擇 |
| HX-ART-HLC14-005 | Conduct Assessment Input | `record` | `no-signature` | HX-TRG-HLC14-003 | Compliance Owner | Performance Governance | TW-WF-DATA-003 | 個案待法律審查 |
| HX-ART-HLC14-006 | Performance Calibration Record | `record` | `authority-approval` | HX-TRG-HLC14-004 | Performance Governance | Performance Authority | — | 公司政策選擇 |
| HX-ART-HLC14-007 | Performance Decision | `decision` | `authority-approval` | HX-TRG-HLC14-004 | Performance Governance | Performance Authority | — | 公司政策選擇 |
| HX-ART-HLC14-008 | Performance Result Notice | `notice` | `delivery-receipt` | HX-TRG-HLC14-004 | HR Performance | Performance Authority | TW-WF-DATA-003 | 公司政策選擇 |
| HX-ART-HLC14-009 | Performance Improvement Plan | `plan` | `acknowledgement` | HX-TRG-HLC14-005 | Manager HR | Performance Authority | TW-WF-TERM-001 | 個案待法律審查 |
| HX-ART-HLC14-010 | Employee Performance Statement | `form` | `submission` | HX-TRG-HLC14-006 | Employee | Performance Authority | TW-WF-DATA-003 | 公司政策選擇 |
| HX-ART-HLC14-011 | Performance Appeal Request | `form` | `submission` | HX-TRG-HLC14-007 | Employee | Appeal Authority | — | 公司政策選擇 |
| HX-ART-HLC14-012 | Performance Appeal Decision | `decision` | `authority-approval` | HX-TRG-HLC14-007 | Appeal Reviewer | Appeal Authority | — | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC14-001 | 建立年度目標 | role profile 與評估期間已定 | 期間開始前 | HX-ART-HLC14-001 | 不得回溯建立標準 |
| HX-TRG-HLC14-002 | 建立專案目標 | 有效 assignment 與交付範圍已定 | 工作期間開始前 | HX-ART-HLC14-002 | 專案目標不得變成人事條件 |
| HX-TRG-HLC14-003 | 收集績效 inputs | 評估期間結束或 checkpoint 到達 | 校準前 | HX-ART-HLC14-003, HX-ART-HLC14-004, HX-ART-HLC14-005 | 各線 input 不得直接形成處分 |
| HX-TRG-HLC14-004 | 形成績效結果 | inputs、衝突檢查與 bias review 完成 | 結果通知前 | HX-ART-HLC14-006, HX-ART-HLC14-007, HX-ART-HLC14-008 | 不得重複處罰 |
| HX-TRG-HLC14-005 | 啟動改善計畫 | 具體標準、事實與支持措施已定 | 改善期間前 | HX-ART-HLC14-009 | PIP 不得自動等同終止 |
| HX-TRG-HLC14-006 | 員工提出陳述 | 員工對評估或改善提供意見 | 決定前或程序期限內 | HX-ART-HLC14-010 | 不得拒絕保存 |
| HX-TRG-HLC14-007 | 提出績效申覆 | 存在可申覆結果與期限 | 期限內 | HX-ART-HLC14-011, HX-ART-HLC14-012 | 原決定者衝突未處理 |

## Gate 與輸出

- 績效結果與改善計畫不得自動形成懲戒或終止。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
