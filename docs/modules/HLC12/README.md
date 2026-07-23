# HLC12 — 技術交付控制

> Relationship states：active
> Primary authorities：Technical／Authorization／Delivery Authority

## 模組目的

處理設計審查、technical query、deviation、technical hold 及 release。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC12-001 | Design Review Record | `record` | `authority-approval` | HX-TRG-HLC12-001 | Technical Reviewer | Technical Authority | TW-WF-OSH-004 | 個案待法律審查 |
| HX-ART-HLC12-002 | Technical Query Record | `record` | `no-signature` | HX-TRG-HLC12-002 | Delivery Technical | Technical Authority | — | 公司政策選擇 |
| HX-ART-HLC12-003 | Technical Deviation Request | `form` | `submission` | HX-TRG-HLC12-003 | Delivery Technical | Technical Authority | TW-WF-OSH-001 | 個案待法律審查 |
| HX-ART-HLC12-004 | Technical Deviation Decision | `decision` | `authority-approval` | HX-TRG-HLC12-003 | Technical Authority | Authorization Authority | TW-WF-OSH-001,TW-WF-OSH-003 | 個案待法律審查 |
| HX-ART-HLC12-005 | Technical Hold Decision | `decision` | `authority-approval` | HX-TRG-HLC12-004 | Technical HSE | Authorization Authority | TW-WF-OSH-003 | 個案待法律審查 |
| HX-ART-HLC12-006 | Technical Hold Release Decision | `decision` | `authority-approval` | HX-TRG-HLC12-004 | Technical HSE | Authorization Authority | TW-WF-OSH-003 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC12-001 | 執行設計審查 | design deliverable 到達 review gate | 發布前 | HX-ART-HLC12-001 | 未授權 reviewer |
| HX-TRG-HLC12-002 | 提出 technical query | 設計或執行資訊不明 | 決定前 | HX-ART-HLC12-002 | 不得用口頭答覆繞過版本 |
| HX-TRG-HLC12-003 | 提出或核准 deviation | 擬偏離核准標準或 design basis | 偏離前 | HX-ART-HLC12-003, HX-ART-HLC12-004 | 法令、安全或授權邊界不得豁免 |
| HX-TRG-HLC12-004 | 發出或解除 technical hold | 存在合法 basis 或補正完成 | 立即或復工前 | HX-ART-HLC12-005, HX-ART-HLC12-006 | 解除 authority 不足 |

## Gate 與輸出

- 法令、安全、標準、design basis 或授權邊界不得由成本與時程豁免。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
