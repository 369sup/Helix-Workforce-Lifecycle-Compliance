# HLC03 — 開始前法定與風險 Clearance

> Relationship states：offer_pending、pre_start
> Primary authorities：HR／Payroll／HSE／Technical／Data Authority

## 模組目的

依人口、工作、地點及資料需求逐項判定開始前 clearance。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC03-001 | Identity Clearance Record | `record` | `no-signature` | HX-TRG-HLC03-001 | HR Procurement | Relationship Authority | TW-WF-DATA-003 | 個案待法律審查 |
| HX-ART-HLC03-002 | Work Eligibility Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HR Procurement | Relationship Authority | TW-WF-FOREIGN-P001,TW-WF-MINOR-P001 | 個案待法律審查 |
| HX-ART-HLC03-003 | Contract Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HR Legal | Relationship Authority | TW-WF-CONTRACT-001,TW-WF-OFFER-P001 | 個案待法律審查 |
| HX-ART-HLC03-004 | Payroll Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | Payroll | Employer Authority | TW-WF-WAGE-001 | 個案待法律審查 |
| HX-ART-HLC03-005 | Insurance Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HR | Employer Authority | TW-WF-INS-001,TW-WF-NHI-001 | 依法必須 |
| HX-ART-HLC03-006 | Pension Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HR Payroll | Employer Authority | TW-WF-PENSION-001 | 依法必須 |
| HX-ART-HLC03-007 | Fitness Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | HSE Health | Health Authority | TW-WF-HEALTH-001,TW-WF-DATA-002 | 個案待法律審查 |
| HX-ART-HLC03-008 | Qualification Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | CoE HSE | Technical Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC03-009 | Site Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | Site HSE | HSE Authority | TW-WF-OSH-001 | 個案待法律審查 |
| HX-ART-HLC03-010 | Data Clearance Decision | `decision` | `authority-approval` | HX-TRG-HLC03-001 | Privacy IT | Data Authority | TW-WF-DATA-003,TW-WF-DATA-005 | 個案待法律審查 |
| HX-ART-HLC03-011 | Pre-start Clearance Register | `register` | `no-signature` | HX-TRG-HLC03-001 | HR Procurement | Relationship Authority | — | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC03-001 | 啟動開始前 clearance | 已知人口、開始日、工作、場所與資格 | 實際工作前 | HX-ART-HLC03-001, HX-ART-HLC03-002, HX-ART-HLC03-003, HX-ART-HLC03-004, HX-ART-HLC03-005, HX-ART-HLC03-006, HX-ART-HLC03-007, HX-ART-HLC03-008, HX-ART-HLC03-009, HX-ART-HLC03-010, HX-ART-HLC03-011 | 任一 blocking clearance 未完成 |

## Gate 與輸出

- 各 clearance 是獨立決定；register 不得掩蓋 blocking item。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
