# HLC02 — Offer 與契約成立

> Relationship states：candidate、offer_pending、pre_start
> Primary authorities：Employer／HR／Procurement／Legal／Contract Authority

## 模組目的

分開受僱 Offer、合作提案、回覆、契約、個別條款與提案結案。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC02-001 | Employment Offer Notice | `notice` | `delivery-receipt` | HX-TRG-HLC02-001 | HR | Employer Authority | TW-WF-OFFER-P001 | 個案待法律審查 |
| HX-ART-HLC02-002 | Service Proposal Notice | `notice` | `delivery-receipt` | HX-TRG-HLC02-002 | Procurement | Contract Authority | TW-WF-REL-001 | 個案待法律審查 |
| HX-ART-HLC02-003 | Offer Response Record | `record` | `no-signature` | HX-TRG-HLC02-003 | HR Procurement | Relationship Authority | TW-WF-OFFER-P001,TW-WF-ESIGN-001 | 個案待法律審查 |
| HX-ART-HLC02-004 | Employment Contract | `agreement` | `bilateral-signature` | HX-TRG-HLC02-004 | HR | Employer Authority | TW-WF-REL-001,TW-WF-CONTRACT-001 | 個案待法律審查 |
| HX-ART-HLC02-005 | Service Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-005 | Procurement | Contract Authority | TW-WF-REL-001,TW-WF-REL-003 | 個案待法律審查 |
| HX-ART-HLC02-006 | Employment Condition Notice | `notice` | `delivery-receipt` | HX-TRG-HLC02-004 | HR Payroll | Employer Authority | TW-WF-WAGE-001,TW-WF-TIME-001 | 個案待法律審查 |
| HX-ART-HLC02-007 | Employment Condition Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-004 | HR | Employer Authority | TW-WF-WAGE-001,TW-WF-TIME-001 | 個案待法律審查 |
| HX-ART-HLC02-008 | Confidentiality Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-006 | Legal | Employer Authority | TW-WF-TRADE-001 | 個案待法律審查 |
| HX-ART-HLC02-009 | Work Product Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-006 | Legal IP | Employer Authority | — | 個案待法律審查 |
| HX-ART-HLC02-010 | Noncompete Applicability Assessment | `assessment` | `authority-approval` | HX-TRG-HLC02-007 | Legal HR | Employer Authority | TW-WF-CONTRACT-002 | 個案待法律審查 |
| HX-ART-HLC02-011 | Post-employment Noncompete Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-007 | Legal HR | Employer Authority | TW-WF-CONTRACT-002 | 個案待法律審查 |
| HX-ART-HLC02-012 | Service-period Applicability Assessment | `assessment` | `authority-approval` | HX-TRG-HLC02-008 | HR Training Legal | Employer Authority | TW-WF-CONTRACT-003 | 個案待法律審查 |
| HX-ART-HLC02-013 | Minimum Service-period Agreement | `agreement` | `bilateral-signature` | HX-TRG-HLC02-008 | HR Training | Employer Authority | TW-WF-CONTRACT-003 | 個案待法律審查 |
| HX-ART-HLC02-014 | Offer Outcome Record | `record` | `no-signature` | HX-TRG-HLC02-009 | HR Procurement | Relationship Authority | TW-WF-OFFER-P001,TW-WF-DATA-004 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC02-001 | 核准受僱 Offer | relationship_type 為受僱且候選人已核准 | Offer 發出前 | HX-ART-HLC02-001 | TW-WF-OFFER-P001 保留個案審查 |
| HX-TRG-HLC02-002 | 核准非受僱合作提案 | relationship_type 為承攬、顧問或其他合作 | 提案發出前 | HX-ART-HLC02-002 | 不得套用員工 Offer |
| HX-TRG-HLC02-003 | 收到提案回覆 | 有可識別版本、回覆方式與時間 | 收到時 | HX-ART-HLC02-003 | 不得由 status 推定契約成立 |
| HX-TRG-HLC02-004 | 建立受僱契約與條件 | relationship_type 為受僱 | 實際工作開始前 | HX-ART-HLC02-004, HX-ART-HLC02-006, HX-ART-HLC02-007 | 契約類型與條件未審查 |
| HX-TRG-HLC02-005 | 建立服務契約 | relationship_type 為非受僱合作 | 服務開始前 | HX-ART-HLC02-005 | 實質關係仍須持續重評 |
| HX-TRG-HLC02-006 | 建立保密或成果義務 | 職務接觸保密資訊或產生職務成果 | 接觸或產生前 | HX-ART-HLC02-008, HX-ART-HLC02-009 | 範圍過度或權利歸屬未審查 |
| HX-TRG-HLC02-007 | 擬約定離職後競業 | 四項法定 gate 逐項成立 | 簽署前 | HX-ART-HLC02-010, HX-ART-HLC02-011 | 任一 gate 不成立即禁止使用 |
| HX-TRG-HLC02-008 | 擬約定最低服務年限 | 專業技術培訓或合理補償 gate 成立 | 簽署前 | HX-ART-HLC02-012, HX-ART-HLC02-013 | 一般訓練不得套用 |
| HX-TRG-HLC02-009 | Offer 或提案結案 | 接受、拒絕、撤回、失效、no-show 或延期之一 | 事件發生時 | HX-ART-HLC02-014 | 法律效果 unresolved 時不得自行結論 |

## Gate 與輸出

- Offer、接受、契約成立、契約開始與實際工作不得互相取代。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
