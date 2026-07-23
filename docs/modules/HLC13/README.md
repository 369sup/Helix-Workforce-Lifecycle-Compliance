# HLC13 — 品質、HSE 檢查與事件

> Relationship states：active
> Primary authorities：Quality／HSE／Employer Authority

## 模組目的

分開不符合、矯正驗證、檢查、incident record 與外部通報。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC13-001 | Quality Nonconformance Record | `record` | `no-signature` | HX-TRG-HLC13-001 | Quality | Quality Authority | — | 公司政策選擇 |
| HX-ART-HLC13-002 | Corrective Action Verification | `record` | `authority-approval` | HX-TRG-HLC13-001 | Quality Owner | Quality Authority | — | 公司政策選擇 |
| HX-ART-HLC13-003 | HSE Inspection Record | `record` | `authority-approval` | HX-TRG-HLC13-002 | HSE | HSE Authority | TW-WF-OSH-001,TW-WF-OSH-002 | 個案待法律審查 |
| HX-ART-HLC13-004 | Incident Report | `case-record` | `submission` | HX-TRG-HLC13-003 | Reporter HSE | HSE Authority | TW-WF-OSH-003 | 個案待法律審查 |
| HX-ART-HLC13-005 | External Incident Filing | `external-filing` | `external-filing` | HX-TRG-HLC13-003 | HSE | Employer Authority | TW-WF-OSH-003 | 個案待法律審查 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC13-001 | 發現品質不符合 | 交付或製程不符合要求 | 發現時 | HX-ART-HLC13-001, HX-ART-HLC13-002 | 矯正未驗證不得關閉 |
| HX-TRG-HLC13-002 | 執行 HSE inspection | 依場所、任務或設備 schedule | 作業前或定期 | HX-ART-HLC13-003 | 檢查不取代即時 stop-work |
| HX-TRG-HLC13-003 | 發生 incident | 傷害、事故、near miss 或法定事件 | 立即 | HX-ART-HLC13-004, HX-ART-HLC13-005 | 通報 applicability 未判斷 |

## Gate 與輸出

- 內部紀錄不得取代法定通報，矯正未驗證不得關閉。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
