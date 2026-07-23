# HLC01 — 招募、甄選與候選人結案

> Relationship states：candidate
> Primary authorities：Recruitment／Hiring／Data／Employer Authority

## 模組目的

處理候選資料告知、評估、利益衝突及甄選 disposition。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC01-001 | Recruitment Privacy Notice | `notice` | `delivery-receipt` | HX-TRG-HLC01-001 | Recruitment Privacy | Data Authority | TW-WF-DATA-001,TW-WF-DATA-003 | 依法必須 |
| HX-ART-HLC01-002 | Candidate Evaluation Record | `record` | `no-signature` | HX-TRG-HLC01-002 | Recruitment | Hiring Approver | TW-WF-RECRUIT-001,TW-WF-RECRUIT-003 | 個案待法律審查 |
| HX-ART-HLC01-003 | Selection Conflict Declaration | `form` | `submission` | HX-TRG-HLC01-002 | Evaluator | Hiring Approver | — | 公司政策選擇 |
| HX-ART-HLC01-004 | Candidate Disposition Decision | `decision` | `authority-approval` | HX-TRG-HLC01-002 | Recruitment | Hiring Approver | TW-WF-RECRUIT-001,TW-WF-DATA-004 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC01-001 | 蒐集候選資料 | 直接向求職者或候選合作方蒐集可識別資料 | 蒐集前 | HX-ART-HLC01-001 | 未完成目的、類別及權利告知 |
| HX-TRG-HLC01-002 | 進行甄選或 disposition | 已建立一致甄選標準與迴避路徑 | 決定前及決定時 | HX-ART-HLC01-002, HX-ART-HLC01-003, HX-ART-HLC01-004 | 歧視、隱私或利益衝突未處理 |

## Gate 與輸出

- 甄選紀錄不得混入 Offer、契約或實際開始事實。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
