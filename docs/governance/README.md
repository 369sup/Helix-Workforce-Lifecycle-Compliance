# Governance Document Map

> 狀態：Draft
> 基準日：2026-07-23

本目錄是一套單一 HLC 架構的治理文件，不含具名人事資料或正式員工模板。

## 1. 文件層級

| Layer | Canonical 文件 | 回答的問題 | 不負責的事項 |
| --- | --- | --- | --- |
| Organization | [Helix Organization Governance Model](helix-organization-governance-model.md) | 誰有交付、能力、技術、資源、人事與安全決策權 | 不取代勞動契約或法定職責 |
| Lifecycle | [Helix Workforce Lifecycle Model](workforce-lifecycle-model.md) | 關係狀態、HLC module、assignment、overlay、case 與 work item 如何互動 | 不自動決定法律效果 |
| Gap | [Helix Workforce Lifecycle Gap Analysis](workforce-lifecycle-gap-analysis.md) | 哪些設計已採納、哪些仍缺公司事實或落地控制 | 不冒充完成證明 |
| Artifact | [Helix Workforce Document Catalog](helix-workforce-document-catalog.md) | 需要哪些 Candidate policy、procedure、notice、agreement、form、record 或 register | 不代表模板已核准 |
| Module Package | [HLC Module Index](../modules/README.md) | 每個 HLC 實際需要哪些文件、gate、owner、evidence 與輸出 | 不表示文件已生效 |
| Source | [Taiwan Workforce Law Catalog](taiwan-workforce-law-catalog.md) | 應檢查哪些官方法源與 selectors | 不作獨立法律結論 |
| Routing | [Workforce Legal Topic Matrix](workforce-legal-topic-matrix.md) | 法律議題路由到哪些 HLC 與 evidence family | 不證明個案適用 |
| Evidence | [Taiwan Workforce Legal Evidence Register](taiwan-legal-register.md) | 已查證的獨立義務、狀態、來源、觸發、證據與 unresolved | 不取代個案法律意見 |

## 2. 依賴方向

```text
Official source
  -> Law Catalog
  -> Independent Legal Evidence
  -> Topic Matrix routing
  -> HLC module legal gate
  -> Candidate Artifact
  -> Company review and approval
  -> Controlled procedure and record
```

組織決策權由 Organization layer 提供，HLC module 不自行創造 authority。Gap layer 橫跨所有層，直到 selector、owner、evidence 與驗證完成才可關閉。

各 HLC 文件 package 是 lifecycle model 與 artifact catalog 的可執行導覽層；若 package 與 canonical 文件不一致，以 lifecycle model、legal register 與 artifact catalog 為準，並立即修正 package。

## 3. 核心物件

| Object | Stable ID／Key | 最低必要欄位 |
| --- | --- | --- |
| HLC module | `HLC00`–`HLC14` | purpose、allowed states、trigger、decision、evidence、owner、authority、legal IDs |
| Workforce instance | `workforce_instance_id` | employer、relationship type／state、effective dates、history |
| Helix assignment | `assignment_id` | project／Bench、allocation、eight roles、start／end、escalation |
| Overlay | `overlay_id` | type、legal basis、start／end、wage／insurance／access／return states |
| Case | `case_id` | type、intake、conflict route、confidentiality、investigator、findings、decision、follow-up |
| Work item | `work_item_id` | type、owner、due date、status、evidence、transfer target |
| Candidate artifact | `HX-ART-*` | HLC、population、type、purpose、signature mode、roles、evidence、status |
| Gap | `WF-GAP-*` | HLC、risk、decision、evidence、priority、status |
| Law source | `TW-LAW-*` | authority、type、official source、effective status、selector、HLC、evidence IDs |
| Legal topic | `TOP-*` | primary HLC、triggers、evidence family、review status |
| Legal evidence | `TW-WF-*` | one requirement、source、status、classification、trigger、required evidence、unresolved |

## 4. 變更順序

1. 若改變 HLC 或角色語意，先更新 Organization／Lifecycle canonical 文件。
2. 更新受影響的 Gap、Topic 與 Candidate artifact 路由。
3. 法律用語改為必須或禁止前，建立或更新獨立 Evidence ID。
4. 執行 ID、連結、HLC-only、狀態與情境驗證。
5. 取得公司 selector、owner、專業審查與核准後，才能建立 controlled template。

## 5. 發布邊界

- `Draft`：治理設計尚待公司核准。
- `Candidate`：建議 artifact；不是可直接簽署的正式文件。
- `current`：法律 evidence 在基準日已施行，不表示每家公司都適用。
- `future-effective`：已公布、尚未施行，交由 regulatory-change case 管理。
- `pending`：缺逐條查證或適用 selector，不得支撐強制文字。
