# Tests

本目錄放置文件治理、結構與未來自動化驗證。

優先驗證：

- Markdown 結構、UTF-8、相對連結與 repository boundary；
- HLC00–HLC14 定義、relationship state 與 HLC module 分離；
- HLC03–HLC12 可並行／重入，沒有固定線性 transition；
- `WF-GAP-*`、`TW-LAW-*`、`TOP-*`、`TW-WF-*`、`HX-ART-*` ID 唯一；
- `docs/modules/HLC00` 至 `HLC14` 共 15 個 package 均存在，primary artifact 分配與 catalog 一致；
- company-level `HX-ART-GOV-*` 六項文件均由 enterprise package 索引；
- Helix assignment 的 Employer、CoE、Delivery、Priority、Technical、Resource 與 HSE roles；
- Offer／契約／實際開始／行政完成日期分離；
- HLC11 overlay 不替換 active，HLC12 release／Bench 不終止關係；
- HLC10 case 的迴避、外部路徑與禁止報復；
- HLC13／HLC14 closeout work item 只接受 `completed`、具理由的 `not-applicable` 或有 Owner／期限的 `transferred`；
- current／future-effective／pending 法規狀態、官方來源與 Candidate artifact evidence 引用；
- 全專案的 lifecycle 命名只使用 HLC00–HLC14。

最低情境：有／無試用、試用延長／不繼續、派遣、承攬、顧問、Offer 結案、並行派任／訓練／績效、雙重命令、技術 hold、安全停工、留停、職災復工、重大調動、性騷擾／霸凌、專案釋放／Bench、自請離職、雇主終止撤回、closeout 未結與再聘。

測試通過只代表已定義的 repository contract 通過，不代表法律適用性、公司程序或現場遵循已完成。
