# HLC25 — 雇主終止審查與決定

> Relationship states：active、termination_pending
> Primary authorities：Employer／HR／Legal Authority

## 模組目的

處理保護期、法定事由、適當工作搜尋、終止決定、通知、通報及撤回回復。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC25-001 | Protected-period Assessment | `assessment` | `authority-approval` | HX-TRG-HLC25-001 | HR Legal | Employer Authority | TW-WF-TERM-003 | 個案待法律審查 |
| HX-ART-HLC25-002 | Termination Legal Review | `assessment` | `authority-approval` | HX-TRG-HLC25-001 | Legal | Employer Authority | TW-WF-TERM-001,TW-WF-TERM-002,TW-WF-TERM-003,TW-WF-TERM-004 | 個案待法律審查 |
| HX-ART-HLC25-003 | Suitable Work Search Record | `record` | `no-signature` | HX-TRG-HLC25-002 | HR Resource | Employer Authority | TW-WF-TERM-001 | 個案待法律審查 |
| HX-ART-HLC25-004 | Employer Termination Decision | `decision` | `authority-approval` | HX-TRG-HLC25-003 | HR Legal | Employer Authority | TW-WF-TERM-001,TW-WF-TERM-002 | 個案待法律審查 |
| HX-ART-HLC25-005 | Employer Termination Notice | `notice` | `delivery-receipt` | HX-TRG-HLC25-004 | HR Legal | Employer Authority | TW-WF-TERM-004 | 個案待法律審查 |
| HX-ART-HLC25-006 | Employer Termination Event Record | `record` | `no-signature` | HX-TRG-HLC25-004 | HR | Employer Authority | TW-WF-TERM-004 | 個案待法律審查 |
| HX-ART-HLC25-007 | Termination External Filing | `external-filing` | `external-filing` | HX-TRG-HLC25-005 | HR Legal | Employer Authority | TW-WF-MASSLAYOFF-P001 | 個案待法律審查 |
| HX-ART-HLC25-008 | Termination Withdrawal Decision | `decision` | `authority-approval` | HX-TRG-HLC25-006 | HR Legal | Employer Authority | — | 個案待法律審查 |
| HX-ART-HLC25-009 | Relationship Restoration Plan | `plan` | `authority-approval` | HX-TRG-HLC25-006 | HR Payroll IT | Employer Authority | TW-WF-INS-002,TW-WF-NHI-002,TW-WF-PENSION-002 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC25-001 | 執行保護期與 legal review | 雇主擬依勞動法令終止關係 | 決定前 | HX-ART-HLC25-001, HX-ART-HLC25-002 | 保護期、法定事由或 authority 未完成 |
| HX-TRG-HLC25-002 | 執行適當工作搜尋 | 擬依不能勝任或組織性事由終止 | 決定前 | HX-ART-HLC25-003 | 不得將 Bench 或單一負評當自動事由 |
| HX-TRG-HLC25-003 | 作成雇主終止決定 | path、legal review、費用與通報 gate 完成 | 通知前 | HX-ART-HLC25-004 | 缺個案法律審查 |
| HX-TRG-HLC25-004 | 送達 relationship end notice | 有效決定與 effective date 已定 | 依法定時點 | HX-ART-HLC25-005, HX-ART-HLC25-006 | notice 不得代替 decision |
| HX-TRG-HLC25-005 | 辦理法定外部通報 | 適用 selector 與期限成立 | 法定期限內 | HX-ART-HLC25-007 | 大量解僱等 pending selector 未解 |
| HX-TRG-HLC25-006 | 撤回終止並回復狀態 | 終止決定撤回或取消 | 立即 | HX-ART-HLC25-008, HX-ART-HLC25-009 | 必須依 previous snapshot 逐項回復 |

## Gate 與輸出

- 試用未通過、Bench、專案結束或單一負評不是獨立終止事由。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
