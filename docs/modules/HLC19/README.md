# HLC19 — 調查、證據與暫時措施

> Relationship states：candidate 至 ended 均可
> Primary authorities：Investigator／Independent Case／HSE Authority

## 模組目的

分開 scope notice、訪談、證據索引、迴避、暫時措施與 findings。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC19-001 | Case Scope Notice | `notice` | `acknowledgement` | HX-TRG-HLC19-001 | Investigator | Case Authority | TW-WF-DATA-002,TW-WF-DATA-003 | 個案待法律審查 |
| HX-ART-HLC19-002 | Interview Record | `case-record` | `no-signature` | HX-TRG-HLC19-002 | Investigator | Case Authority | TW-WF-DATA-002,TW-WF-DATA-003 | 個案待法律審查 |
| HX-ART-HLC19-003 | Case Evidence Index | `register` | `no-signature` | HX-TRG-HLC19-003 | Investigator | Case Authority | TW-WF-DATA-002,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC19-004 | Case Recusal Declaration | `form` | `submission` | HX-TRG-HLC19-003 | Case Participant | Case Authority | — | 公司政策選擇 |
| HX-ART-HLC19-005 | Interim Measure Assessment | `assessment` | `authority-approval` | HX-TRG-HLC19-004 | Case HR HSE | Case Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 |
| HX-ART-HLC19-006 | Interim Measure Decision | `decision` | `authority-approval` | HX-TRG-HLC19-004 | Case Authority | Employer Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 |
| HX-ART-HLC19-007 | Interim Measure Notice | `notice` | `delivery-receipt` | HX-TRG-HLC19-004 | Case HR | Case Authority | TW-WF-DATA-003 | 個案待法律審查 |
| HX-ART-HLC19-008 | Investigation Findings | `case-record` | `authority-approval` | HX-TRG-HLC19-005 | Investigator | Case Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC19-001 | 通知案件 scope 與程序 | case owner、scope、權利與保密規則已定 | 訪談前 | HX-ART-HLC19-001 | 通知不得預判結果 |
| HX-TRG-HLC19-002 | 執行訪談 | 參與者、目的與保密邊界已定 | 調查中 | HX-ART-HLC19-002 | 避免不必要重複詢問 |
| HX-TRG-HLC19-003 | 建立證據計畫 | 多重案件分類或資料來源存在 | 調查開始時 | HX-ART-HLC19-003, HX-ART-HLC19-004 | 敏感資料存取未隔離 |
| HX-TRG-HLC19-004 | 評估暫時措施 | 存在接觸、安全、報復或證據風險 | 立即且定期複核 | HX-ART-HLC19-005, HX-ART-HLC19-006, HX-ART-HLC19-007 | 措施不得預判責任 |
| HX-TRG-HLC19-005 | 形成 findings | 調查 scope 內 evidence 已完成 | 決定前 | HX-ART-HLC19-008 | findings 不等於懲戒決定 |

## Gate 與輸出

- 暫時措施與 findings 不得預判或取代最終決定。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
