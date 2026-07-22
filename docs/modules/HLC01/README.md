# HLC01 — 錄取、契約與開始前條件

> Relationship states：`offer_pending`、`pre_start`
> Primary authorities：Employer／HR／Procurement；Legal and Contract Approvers

## 模組目的

分開管理提案、接受、契約、開始前條件與開始取消／延後，不由單一 Offer status 推定全部法律效果。

## 必要文件

| Artifact ID | 文件 | 類型／簽署 | Owner／Approver | 必要證據 |
| --- | --- | --- | --- | --- |
| HX-ART-HLC01-001 | 錄取通知書／合作提案 | notice／delivery-receipt | HR／Procurement；Employer Authority | 版本、有效期、條件、送達與接受方式 |
| HX-ART-HLC01-002 | 勞動契約／服務協議 | agreement／bilateral-signature | HR／Procurement；Employer／Contract Authority | 實際關係、工作／服務、報酬、地點、工時、開始與終止 |
| HX-ART-HLC01-003 | 個別勞動條件明細 | notice or agreement | HR／Payroll；Employer Authority | 工資、津貼、工時、發薪、地點與簽署語意 |
| HX-ART-HLC01-004 | 試用目標與期間約定 | agreement／bilateral-signature | Hiring／Performance；Employer Authority | TW-WF-TRIAL-001–003 |
| HX-ART-HLC01-005 | 保密、營業秘密與職務成果約定 | agreement／bilateral-signature | Legal／IP；Employer Authority | TW-WF-TRADE-001 與成果歸屬 review |
| HX-ART-HLC01-006 | 離職後競業禁止協議 | agreement／bilateral-signature | Legal／HR；Employer Authority | TW-WF-CONTRACT-002 的四項 gate 與補償 |
| HX-ART-HLC01-007 | 最低服務年限協議 | agreement／bilateral-signature | HR／Training／Legal；Employer Authority | TW-WF-CONTRACT-003 的培訓／補償與合理性 |
| HX-ART-HLC01-008 | Offer 結果與開始前 Clearance Register | register／authority-approval | HR／Procurement；Relationship Authority | relationship、identity、eligibility、contract、payroll、insurance、pension、fitness、qualification、site、data |

## Gate 與輸出

- Offer 發出、接受、契約成立、契約開始與實際工作各有獨立時間戳。
- Clearance 結果為 `cleared`、`cleared-with-actions`、`blocked`、`deferred`、`expired` 或 `reclassification-required`。
- 競業與服務年限只在各自法律 gate 完成後使用，不得全員套用。
- 輸出為有效協議版本、各 clearance 狀態、預定開始日與 unresolved list。

Legal routing：[OFFER／CONTRACT／REL／DATA／INS／NHI／PENSION](../../governance/legal/workforce-legal-evidence-register.md)。
