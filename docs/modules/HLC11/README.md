# HLC11 — 工作排序與資源衝突

> Relationship states：active
> Primary authorities：Work Priority／Delivery／Resource Authority

## 模組目的

建立 work package、唯一 Priority Owner，以及跨需求資源衝突的升級與決定。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC11-001 | Work Package Record | `record` | `no-signature` | HX-TRG-HLC11-001 | Work Priority Owner | Delivery Authority | — | 公司政策選擇 |
| HX-ART-HLC11-002 | Work Priority Decision | `decision` | `authority-approval` | HX-TRG-HLC11-001 | Work Priority Owner | Delivery Authority | TW-WF-TIME-001 | 公司政策選擇 |
| HX-ART-HLC11-003 | Resource Conflict Request | `form` | `submission` | HX-TRG-HLC11-002 | Delivery Resource | Resource Authority | TW-WF-TIME-001 | 公司政策選擇 |
| HX-ART-HLC11-004 | Resource Conflict Decision | `decision` | `authority-approval` | HX-TRG-HLC11-002 | Resource Governance | Resource Authority | TW-WF-TIME-001 | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC11-001 | 建立 work package 或排序 | 有效 assignment 與唯一 Priority Owner | 工作開始前 | HX-ART-HLC11-001, HX-ART-HLC11-002 | 工時、安全或權限限制未處理 |
| HX-TRG-HLC11-002 | 發生資源 priority conflict | 兩個以上 demand 競逐同一 capacity | 工作指令衝突時 | HX-ART-HLC11-003, HX-ART-HLC11-004 | 不得由多個主管各自插單 |

## Gate 與輸出

- CoE、客戶或多個主管不得繞過唯一 Work Priority Owner 插單。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
