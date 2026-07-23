# HLC26 — 退休與合意終止

> Relationship states：active、termination_pending
> Primary authorities：Employer／HR／Legal Authority

## 模組目的

先分類 ending path，再分別處理退休或雙方合意終止的評估、法律行為與生效事實。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC26-001 | Ending Path Assessment | `assessment` | `authority-approval` | HX-TRG-HLC26-001 | HR Legal | Employer Authority | TW-WF-TERM-001,TW-WF-TERM-002,TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 |
| HX-ART-HLC26-002 | Retirement Applicability Assessment | `assessment` | `authority-approval` | HX-TRG-HLC26-002 | HR Legal | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 |
| HX-ART-HLC26-003 | Retirement Decision | `decision` | `authority-approval` | HX-TRG-HLC26-002 | HR Legal | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 |
| HX-ART-HLC26-004 | Mutual Separation Assessment | `assessment` | `authority-approval` | HX-TRG-HLC26-003 | HR Legal | Employer Authority | TW-WF-TERM-001 | 個案待法律審查 |
| HX-ART-HLC26-005 | Mutual Separation Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC26-003 | HR Legal | Employer Authority | TW-WF-TERM-001,TW-WF-ESIGN-001 | 個案待法律審查 |
| HX-ART-HLC26-006 | Retirement Notice | `notice` | `delivery-receipt` | HX-TRG-HLC26-004 | HR | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 |
| HX-ART-HLC26-007 | Retirement End Event Record | `record` | `no-signature` | HX-TRG-HLC26-004 | HR | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 |
| HX-ART-HLC26-008 | Mutual Separation End Event Record | `record` | `no-signature` | HX-TRG-HLC26-005 | HR | Employer Authority | TW-WF-TERM-001 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC26-001 | 分類 relationship ending path | 已知 relationship、initiator、事件與日期 | 任何終止動作前 | HX-ART-HLC26-001 | 不得用單一路徑涵蓋所有 ending |
| HX-TRG-HLC26-002 | 評估並作成退休決定 | 自請或強制退休人口、制度、法定條件與日期已知 | 通知前 | HX-ART-HLC26-002, HX-ART-HLC26-003 | 退休 path 或適用條件未完成 |
| HX-TRG-HLC26-003 | 擬以雙方合意終止關係 | 提案人、條件、effective date、自由意思與法律審查已知 | 簽署前 | HX-ART-HLC26-003, HX-ART-HLC26-004 | 不得以通知、離職書或預填表單代替雙方合意 |
| HX-TRG-HLC26-004 | 退休生效 | 有效退休決定與日期已定 | 生效時 | HX-ART-HLC26-006, HX-ART-HLC26-007 | 決定、通知與生效事實分開 |
| HX-TRG-HLC26-005 | 合意終止生效 | 有效 Mutual Separation Agreement 與日期已定 | 生效時 | HX-ART-HLC26-008 | 不得由單方狀態變更推定雙方協議生效 |

## Gate 與輸出

- 退休決定、合意終止協議與關係結束事實不得混成同一文件。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
