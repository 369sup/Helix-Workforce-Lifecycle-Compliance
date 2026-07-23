# Enterprise Governance Artifacts

> 狀態：Candidate
> 適用範圍：HLC00–HLC29

公司級治理已拆成單一目的、單一 artifact type 與單一 execution mode 的 Candidate artifacts。任何 HLC module 都不得自行覆寫。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-GOV-001 | Helix Organization Charter | `standard` | `authority-approval` | HX-TRG-GOV-001 | Corporate Governance | Employer Authority | — | 公司政策選擇 |
| HX-ART-GOV-002 | Decision Rights Register | `register` | `authority-approval` | HX-TRG-GOV-001 | Corporate Governance | Employer Authority | — | 公司政策選擇 |
| HX-ART-GOV-003 | Delegation Register | `register` | `authority-approval` | HX-TRG-GOV-001 | Corporate Governance | Employer Authority | — | 公司政策選擇 |
| HX-ART-GOV-004 | Technical Governance Standard | `standard` | `authority-approval` | HX-TRG-GOV-002 | Technical Authority | Corporate Authority | TW-WF-OSH-001 | 公司政策選擇 |
| HX-ART-GOV-005 | Technical Deviation Procedure | `procedure` | `authority-approval` | HX-TRG-GOV-002 | Technical Authority | Corporate Authority | TW-WF-OSH-001 | 公司政策選擇 |
| HX-ART-GOV-006 | Technical Hold Procedure | `procedure` | `authority-approval` | HX-TRG-GOV-002 | Technical Authority | Corporate Authority | TW-WF-OSH-003 | 公司政策選擇 |
| HX-ART-GOV-007 | Resource Allocation Standard | `standard` | `authority-approval` | HX-TRG-GOV-003 | Resource Governance | Employer Authority | TW-WF-TRANSFER-001,TW-WF-TIME-001 | 公司政策選擇 |
| HX-ART-GOV-008 | Resource Conflict Procedure | `procedure` | `authority-approval` | HX-TRG-GOV-003 | Resource Governance | Employer Authority | TW-WF-TIME-001 | 公司政策選擇 |
| HX-ART-GOV-009 | Shared Engineering Platform Service Standard | `standard` | `authority-approval` | HX-TRG-GOV-004 | Platform Owner | Corporate Authority | TW-WF-DATA-003,TW-WF-TRADE-001 | 公司政策選擇 |
| HX-ART-GOV-010 | Speak-up Policy | `policy` | `authority-approval` | HX-TRG-GOV-005 | Independent Case Governance | Employer Authority | TW-WF-COMPLAINT-001 | 個案待法律審查 |
| HX-ART-GOV-011 | Investigation Procedure | `procedure` | `authority-approval` | HX-TRG-GOV-005 | Independent Case Governance | Employer Authority | TW-WF-HARASS-001,TW-WF-BULLY-001 | 個案待法律審查 |
| HX-ART-GOV-012 | Workplace Harassment Prevention Policy | `policy` | `authority-approval` | HX-TRG-GOV-005 | HR Compliance | Employer Authority | TW-WF-HARASS-001,TW-WF-HARASS-002 | 個案待法律審查 |
| HX-ART-GOV-013 | Workplace Bullying Prevention Policy | `policy` | `authority-approval` | HX-TRG-GOV-005 | HSE Compliance | Employer Authority | TW-WF-BULLY-001,TW-WF-BULLY-002 | 個案待法律審查 |
| HX-ART-GOV-014 | Anti-retaliation Standard | `standard` | `authority-approval` | HX-TRG-GOV-005 | Independent Case Governance | Employer Authority | TW-WF-COMPLAINT-001,TW-WF-BULLY-002 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-GOV-001 | 建立或改版 Helix 公司治理基線 | 公司採用或修改 Helix 角色、權責或 delegation | 發布前 | HX-ART-GOV-001, HX-ART-GOV-002, HX-ART-GOV-003 | 未完成 Employer Authority 核准不得生效 |
| HX-TRG-GOV-002 | 建立或改版技術治理 | 技術標準、偏離或 hold authority 改變 | 授權或標準生效前 | HX-ART-GOV-004, HX-ART-GOV-005, HX-ART-GOV-006 | 法令、安全或授權邊界未定不得發布 |
| HX-TRG-GOV-003 | 建立或改版資源治理 | 多專案配置、priority conflict 或 Bench 規則改變 | 配置流程上線前 | HX-ART-GOV-007, HX-ART-GOV-008 | 不得形成第二個日常排序者 |
| HX-TRG-GOV-004 | 建立或改版共用工程平台 | 平台服務、資料或工具邊界改變 | 服務上線前 | HX-ART-GOV-009 | 不得取得人事或日常工作指揮權 |
| HX-TRG-GOV-005 | 建立或改版案件治理 | 申訴、調查、性騷擾、霸凌或反報復制度改變 | 制度發布前 | HX-ART-GOV-010, HX-ART-GOV-011, HX-ART-GOV-012, HX-ART-GOV-013, HX-ART-GOV-014 | 人數與事件類型 selector 未決時保留法律審查 |

## 發布 gate

- 公司級 artifacts 必須共用一致角色名稱、delegation ID、版本與 effective date。
- 工作規則、申訴、性騷擾、霸凌與職安制度仍須依公司人數及事件 facts 完成法律與專業審查。
- Candidate artifact、文件完成或測試通過均不代表制度已核准或已完成遵循。
