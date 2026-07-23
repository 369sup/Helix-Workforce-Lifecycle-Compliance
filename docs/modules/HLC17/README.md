# HLC17 — 訓練、發展與資格證照

> Relationship states：active
> Primary authorities：CoE／Training／Technical／HSE Authority

## 模組目的

分開訓練需求、發展、費用、出勤、評量、資格與資格使用事件。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC17-001 | Training Requirement Assessment | `assessment` | `authority-approval` | HX-TRG-HLC17-001 | CoE HSE | Training Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC17-002 | Annual Development Plan | `plan` | `acknowledgement` | HX-TRG-HLC17-002 | People Manager | Capability Authority | — | 公司政策選擇 |
| HX-ART-HLC17-003 | Training Request | `form` | `submission` | HX-TRG-HLC17-003 | Workforce Member | Training Authority | — | 公司政策選擇 |
| HX-ART-HLC17-004 | Training Cost Decision | `decision` | `authority-approval` | HX-TRG-HLC17-003 | Training HR | Budget Authority | TW-WF-CONTRACT-003 | 個案待法律審查 |
| HX-ART-HLC17-005 | Training Attendance Record | `record` | `no-signature` | HX-TRG-HLC17-004 | Training Owner | Training Authority | TW-WF-TIME-001 | 個案待法律審查 |
| HX-ART-HLC17-006 | Training Assessment Record | `assessment` | `authority-approval` | HX-TRG-HLC17-004 | Assessor | Training Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC17-007 | Credential Record | `record` | `no-signature` | HX-TRG-HLC17-005 | CoE HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC17-008 | Credential Use Authorization | `authorization` | `authority-approval` | HX-TRG-HLC17-005 | Technical HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC17-009 | Credential Renewal Request | `form` | `submission` | HX-TRG-HLC17-006 | Credential Holder | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC17-010 | Credential Renewal Decision | `decision` | `authority-approval` | HX-TRG-HLC17-006 | CoE HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC17-011 | Credential Suspension Decision | `decision` | `authority-approval` | HX-TRG-HLC17-007 | CoE HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC17-012 | Credential Revocation Decision | `decision` | `authority-approval` | HX-TRG-HLC17-008 | CoE HSE | Authorization Authority | TW-WF-OSH-004 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC17-001 | 辨識訓練需求 | 任務、法定要求、能力差距或發展需求已知 | 訓練前 | HX-ART-HLC17-001 | 法定、必要、一般與高額訓練未分類 |
| HX-TRG-HLC17-002 | 建立年度發展計畫 | 角色與能力目標已定 | 週期開始前 | HX-ART-HLC17-002 | 不得當作資格或授權 |
| HX-TRG-HLC17-003 | 申請訓練與費用 | 課程、成本、時間與目的已知 | 報名前 | HX-ART-HLC17-003, HX-ART-HLC17-004 | 服務年限 gate 未完成 |
| HX-TRG-HLC17-004 | 完成訓練與評量 | 課程已執行 | 完成時 | HX-ART-HLC17-005, HX-ART-HLC17-006 | 出席不得自動等於能力或資格 |
| HX-TRG-HLC17-005 | 取得資格或證照 | 外部或內部資格已證實 | 使用前 | HX-ART-HLC17-007, HX-ART-HLC17-008 | 不得自動取得技術授權 |
| HX-TRG-HLC17-006 | 續證 | 資格即將到期且仍需使用 | 到期前 | HX-ART-HLC17-009, HX-ART-HLC17-010 | 過期不得繼續受管制工作 |
| HX-TRG-HLC17-007 | 暫停資格使用 | 出現暫時不符合或限制 | 立即 | HX-ART-HLC17-011 | 不得自動作成人事處分 |
| HX-TRG-HLC17-008 | 撤銷資格使用 | 持續不符合且完成審查 | 決定時 | HX-ART-HLC17-012 | HLC25 須另案 |

## Gate 與輸出

- 出勤、評量、能力、資格與技術授權不是同一物件。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
