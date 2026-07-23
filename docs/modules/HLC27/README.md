# HLC27 — 關係結清、申報與 Closeout

> Relationship states：termination_pending、ended
> Primary authorities：HR／Payroll／IT／Data／Asset Authority

## 模組目的

依 ending path 分開給付計算、付款、外部申報及營運 closeout work items。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC27-001 | Final Wage Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | Payroll | Employer Authority | TW-WF-WAGE-001 | 依法必須 |
| HX-ART-HLC27-002 | Leave Balance Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | HR Payroll | Employer Authority | TW-WF-LEAVE-002 | 依法必須 |
| HX-ART-HLC27-003 | Insurance Withdrawal Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | HR | Employer Authority | TW-WF-INS-002,TW-WF-NHI-002 | 依法必須 |
| HX-ART-HLC27-004 | Pension Cessation Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | HR Payroll | Employer Authority | TW-WF-PENSION-002 | 依法必須 |
| HX-ART-HLC27-005 | Asset Return Work Item | `work-item` | `acknowledgement` | HX-TRG-HLC27-001 | Asset Owner | Asset Authority | — | 公司政策選擇 |
| HX-ART-HLC27-006 | Access Removal Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | IT Data | Data Authority | TW-WF-DATA-004,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC27-007 | Workforce Data Disposition Work Item | `work-item` | `authority-approval` | HX-TRG-HLC27-001 | HR Data | Data Authority | TW-WF-DATA-004 | 個案待法律審查 |
| HX-ART-HLC27-008 | Resignation Closeout Register | `register` | `no-signature` | HX-TRG-HLC27-001 | HR | Employer Authority | — | 公司政策選擇 |
| HX-ART-HLC27-009 | Severance Calculation Record | `record` | `authority-approval` | HX-TRG-HLC27-002 | Payroll HR | Employer Authority | TW-WF-SEVERANCE-001 | 依法必須 |
| HX-ART-HLC27-010 | Severance Payment Record | `record` | `no-signature` | HX-TRG-HLC27-002 | Payroll | Employer Authority | TW-WF-SEVERANCE-001 | 依法必須 |
| HX-ART-HLC27-011 | Retirement Benefit Calculation Record | `record` | `authority-approval` | HX-TRG-HLC27-004 | Payroll HR | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 |
| HX-ART-HLC27-012 | Retirement Benefit Payment Record | `record` | `no-signature` | HX-TRG-HLC27-004 | Payroll | Employer Authority | TW-WF-RETIRE-001,TW-WF-RETIRE-002 | 個案待法律審查 |
| HX-ART-HLC27-013 | Final Wage Calculation Record | `record` | `authority-approval` | HX-TRG-HLC27-005 | Payroll | Employer Authority | TW-WF-WAGE-001 | 依法必須 |
| HX-ART-HLC27-014 | Final Wage Payment Record | `record` | `no-signature` | HX-TRG-HLC27-005 | Payroll | Employer Authority | TW-WF-WAGE-001 | 依法必須 |
| HX-ART-HLC27-015 | Unused Leave Calculation Record | `record` | `authority-approval` | HX-TRG-HLC27-006 | HR Payroll | Employer Authority | TW-WF-LEAVE-002 | 依法必須 |
| HX-ART-HLC27-016 | Unused Leave Payment Record | `record` | `no-signature` | HX-TRG-HLC27-006 | Payroll | Employer Authority | TW-WF-LEAVE-002 | 依法必須 |
| HX-ART-HLC27-017 | Insurance Withdrawal Filing | `external-filing` | `external-filing` | HX-TRG-HLC27-003 | HR | Employer Authority | TW-WF-INS-002 | 依法必須 |
| HX-ART-HLC27-018 | NHI Withdrawal Filing | `external-filing` | `external-filing` | HX-TRG-HLC27-003 | HR | Employer Authority | TW-WF-NHI-002 | 依法必須 |
| HX-ART-HLC27-019 | Pension Cessation Filing | `external-filing` | `external-filing` | HX-TRG-HLC27-003 | HR Payroll | Employer Authority | TW-WF-PENSION-002 | 依法必須 |
| HX-ART-HLC27-020 | Asset Return Record | `record` | `acknowledgement` | HX-TRG-HLC27-007 | Asset Owner | Asset Authority | — | 公司政策選擇 |
| HX-ART-HLC27-021 | Account Closure Authorization | `authorization` | `authority-approval` | HX-TRG-HLC27-007 | IT | Data Authority | TW-WF-DATA-004,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC27-022 | Access Removal Authorization | `authorization` | `authority-approval` | HX-TRG-HLC27-007 | IT Security | Data Authority | TW-WF-DATA-004,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC27-023 | Workforce Data Disposition Decision | `decision` | `authority-approval` | HX-TRG-HLC27-007 | HR Data | Data Authority | TW-WF-DATA-004 | 個案待法律審查 |
| HX-ART-HLC27-024 | Employer Closeout Register | `register` | `no-signature` | HX-TRG-HLC27-007 | HR | Employer Authority | — | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC27-001 | 執行自請離職 closeout | relationship transition 已決定 | 依法定或公司期限 | HX-ART-HLC27-001, HX-ART-HLC27-002, HX-ART-HLC27-003, HX-ART-HLC27-004, HX-ART-HLC27-005, HX-ART-HLC27-006, HX-ART-HLC27-007, HX-ART-HLC27-008 | 每項 work item 分開狀態 |
| HX-TRG-HLC27-002 | 計算並支付資遣費 | ending path 依法產生資遣費且年資與平均工資已定 | 法定期限內 | HX-ART-HLC27-009, HX-ART-HLC27-010 | 計算與付款事實不得合併 |
| HX-TRG-HLC27-003 | 辦理關係結束之外部退保與停繳 | relationship end effective 且各制度 applicability 已判定 | 依法定或公司期限 | HX-ART-HLC27-017, HX-ART-HLC27-018, HX-ART-HLC27-019 | 各制度分開申報與留存結果 |
| HX-TRG-HLC27-004 | 計算並支付退休給付 | 退休 path 與適用制度、年資及工資已定 | 法定期限內 | HX-ART-HLC27-011, HX-ART-HLC27-012 | 計算與付款事實不得合併 |
| HX-TRG-HLC27-005 | 計算並支付最後工資 | ending path、effective date 與工資事實已定 | 法定期限內 | HX-ART-HLC27-013, HX-ART-HLC27-014 | 計算與付款事實不得合併 |
| HX-TRG-HLC27-006 | 計算並支付未休假工資 | 適用假別、結餘與 ending date 已定 | 法定期限內 | HX-ART-HLC27-015, HX-ART-HLC27-016 | 計算與付款事實不得合併 |
| HX-TRG-HLC27-007 | 執行關係結束之營運 closeout | relationship end effective 且資產、帳號、權限及資料清單已定 | 依法定或公司期限 | HX-ART-HLC27-020, HX-ART-HLC27-021, HX-ART-HLC27-022, HX-ART-HLC27-023, HX-ART-HLC27-024 | 每個 work item 與未結狀態分開保存 |

## Gate 與輸出

- 關係終止與 closeout 完成分開；任一未結 work item 必須保留狀態。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
