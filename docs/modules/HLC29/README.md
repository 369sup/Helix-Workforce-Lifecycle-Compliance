# HLC29 — 再聘與新 Workforce Instance

> Relationship states：ended、planning、candidate
> Primary authorities：Hiring／HR／Employer Authority

## 模組目的

評估再聘或再合作，並建立與舊 instance 分離的新關係參照。

## Primary Candidate Artifacts

| Artifact ID | Artifact | Type | Execution | Trigger | Owner | Approver | Legal Evidence | Classification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC29-001 | Rehire Assessment | `assessment` | `authority-approval` | HX-TRG-HLC29-001 | Hiring HR | Employer Authority | — | 個案待法律審查 |
| HX-ART-HLC29-002 | New Workforce Instance Reference | `record` | `no-signature` | HX-TRG-HLC29-001 | HR | Employer Authority | TW-WF-DATA-004 | 公司政策選擇 |

## Trigger Matrix

| Trigger ID | Event | Required selectors | Timing | Required artifacts | Blocking rule |
| --- | --- | --- | --- | --- | --- |
| HX-TRG-HLC29-001 | 評估再聘或再合作 | 存在新需求與過往 instance reference | 建立新關係前 | HX-ART-HLC29-001, HX-ART-HLC29-002 | 不得重開或改寫舊 instance |

## Gate 與輸出

- 再聘不得重開、覆寫或延續舊 relationship instance。
- 每個 trigger 只在 selectors 已知時產出所列 artifacts；未適用須保存理由，blocked 項目須有 Owner 與期限。
- 文件建立、authority decision、delivery、acknowledgement、bilateral signature 與 external filing 是不同事件，不得用單一完成狀態合併。

Legal routing：[Taiwan Workforce Legal Evidence Register](../../governance/legal/workforce-legal-evidence-register.md)。
