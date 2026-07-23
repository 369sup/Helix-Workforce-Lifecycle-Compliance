# HLC04 — 實際開始與行政 Onboarding

> Relationship states：pre_start、active
> Primary authorities：Employer／HR／Payroll／IT／HSE Authority

## 模組目的

記錄實際開始、必要資料、告知、資產、帳號、申報及行政結案。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC04-001 | Actual Work Start Record | `record` | `no-signature` | HX-TRG-HLC04-001 | HR Delivery | Employer Authority | TW-WF-TRIAL-002,TW-WF-INS-002 | 依法必須 |
| HX-ART-HLC04-002 | Administrative Onboarding Completion Record | `record` | `authority-approval` | HX-TRG-HLC04-007 | HR | Employer Authority | — | 公司政策選擇 |
| HX-ART-HLC04-003 | Personnel Data Form | `form` | `submission` | HX-TRG-HLC04-002 | HR | Data Authority | TW-WF-RECORD-001,TW-WF-DATA-001 | 依法必須 |
| HX-ART-HLC04-004 | Emergency Contact Form | `form` | `submission` | HX-TRG-HLC04-002 | HR | Data Authority | TW-WF-DATA-001,TW-WF-DATA-003 | 個案待法律審查 |
| HX-ART-HLC04-005 | Work Rules Notice | `notice` | `delivery-receipt` | HX-TRG-HLC04-003 | HR | Employer Authority | TW-WF-WORKRULE-001 | 個案待法律審查 |
| HX-ART-HLC04-006 | Policy Notice | `notice` | `delivery-receipt` | HX-TRG-HLC04-004 | Policy Owner | Employer Authority | — | 公司政策選擇 |
| HX-ART-HLC04-007 | Asset Issue Record | `record` | `acknowledgement` | HX-TRG-HLC04-005 | Asset Owner | Asset Authority | TW-WF-DATA-005 | 公司政策選擇 |
| HX-ART-HLC04-008 | PPE Issue Record | `record` | `acknowledgement` | HX-TRG-HLC04-005 | HSE | HSE Authority | TW-WF-OSH-001 | 個案待法律審查 |
| HX-ART-HLC04-009 | Account Authorization | `authorization` | `authority-approval` | HX-TRG-HLC04-005 | IT Data | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC04-010 | Occupational Insurance Enrollment Filing | `external-filing` | `external-filing` | HX-TRG-HLC04-006 | HR | Employer Authority | TW-WF-INS-001,TW-WF-INS-002 | 依法必須 |
| HX-ART-HLC04-011 | NHI Enrollment Filing | `external-filing` | `external-filing` | HX-TRG-HLC04-006 | HR | Employer Authority | TW-WF-NHI-001,TW-WF-NHI-002 | 依法必須 |
| HX-ART-HLC04-012 | Labor Pension Enrollment Filing | `external-filing` | `external-filing` | HX-TRG-HLC04-006 | HR Payroll | Employer Authority | TW-WF-PENSION-001,TW-WF-PENSION-002 | 依法必須 |
| HX-ART-HLC04-013 | Onboarding Work-item Register | `register` | `no-signature` | HX-TRG-HLC04-007 | HR Site | Employer Authority | — | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC04-001 | 實際開始工作 | actual_work_start_at 已發生 | 當日 | HX-ART-HLC04-001 | 不得等待行政 onboarding |
| HX-TRG-HLC04-002 | 建立必要人事與聯絡資料 | 受僱關係且資料目的已定 | 開始時 | HX-ART-HLC04-003, HX-ART-HLC04-004 | 敏感資料須分流 |
| HX-TRG-HLC04-003 | 交付工作規則 | 適用工作規則或公司政策 | 開始或版本生效前 | HX-ART-HLC04-005 | 收受不等於同意不利變更 |
| HX-TRG-HLC04-004 | 交付一般政策 | 適用人口與版本已定 | 開始或版本生效前 | HX-ART-HLC04-006 | 不得以 acknowledgement 創設契約義務 |
| HX-TRG-HLC04-005 | 發放資產或權限 | 任務需要資產、PPE 或系統存取 | 使用前 | HX-ART-HLC04-007, HX-ART-HLC04-008, HX-ART-HLC04-009 | 資格或安全 gate blocked |
| HX-TRG-HLC04-006 | 辦理開始申報 | 人口符合各法投保或提繳條件 | 依法定事件與期限 | HX-ART-HLC04-010, HX-ART-HLC04-011, HX-ART-HLC04-012 | 各制度分開判斷 |
| HX-TRG-HLC04-007 | 行政 onboarding 結案 | 所有 applicable work items 已完成、移轉或具理由不適用 | 完成時 | HX-ART-HLC04-002, HX-ART-HLC04-013 | blocked work item 不得被布林完成遮蔽 |

## Gate 與輸出

- 行政 onboarding 未完成不得延後由實際工作觸發的控制。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
