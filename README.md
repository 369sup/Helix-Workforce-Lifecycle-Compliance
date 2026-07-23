# Helix-Workforce-Lifecycle-Compliance

臺灣工程企業的 Helix 組織、職員生命週期、法規證據與行為治理文件系統。

> 狀態：設計草案（Draft）
> 法域：臺灣
> 產業基準：機電、起重與工程專案企業
> 架構及法律查證基準日：2026-07-23

> [!IMPORTANT]
> 本 repo 建立治理模型、法律證據與 Candidate artifact catalog，不是法律意見，也不表示公司已完成法定程序或現場控制。正式導入前須依公司法人、人數、關係、工程角色、承攬層級、工作、設備、危害、地點及事件日期完成適用性審查。

## 1. 設計結論

本架構把 Helix 定義為「單一雇主、雙軌治理、單一日常工作排序者」：

- Employer／HR 對勞動條件、保險、退休、職安、個資與人事決定負責；
- Delivery line 對專案交付、工作包、優先順序、成本與工期負責；
- CoE／Technical Authority 對能力、技術標準、資格、授權與技術風險負責；
- Resource Governance 協調跨專案容量，不成為第三個日常主管；
- Shared Engineering Platform 提供資料與工程服務，不取得人事指揮權。

每一決定只有一位最終 accountable role。技術否決限於法令、安全、核准標準、設計基準或授權邊界，且須留下原因、範圍、升級與解除證據。

## 2. Canonical 模型

```text
適用文件與控制 = relationship_type + relationship_state
               + concurrent HLC module instances
               + helix_assignment + overlay + case
               + parallel_work_items
               + role／task／equipment／hazard／site selectors
```

- `relationship_state` 只表示 planning、candidate、offer_pending、pre_start、active、termination_pending 或 ended。
- HLC00–HLC04 是需求、招募、契約、clearance 與開始的一般入口導航。
- HLC05–HLC23 是依事件開啟、可並行及重入的治理頁面，不是單線階段。
- HLC24–HLC29 分開自請離職、雇主終止、退休／合意終止、結清、離職後事項與再聘。
- `helix_assignment` 分別記錄 Employer、CoE、People、Delivery、Work Priority、Technical、Resource 與 HSE roles。
- overlay 不取代 active relationship；case 不因離職自動結案。

唯一 canonical 定義見 [Helix Workforce Lifecycle Model](docs/governance/models/workforce-lifecycle-model.md)，Helix 權責見 [Helix Organization Governance Model](docs/governance/models/organization-governance-model.md)。

## 3. HLC00–HLC29

| ID | 模組 | 邊界 |
| --- | --- | --- |
| HLC00 | 人力需求與職位治理 | 需求、關係初判、職務、危害與資格 |
| HLC01 | 招募、甄選與候選人結案 | 資料告知、評估、衝突與 disposition |
| HLC02 | Offer 與契約成立 | 提案、回覆、契約與個別條款 |
| HLC03 | 開始前法定與風險 Clearance | 各人口、資格、健康、site 與 data gate |
| HLC04 | 實際開始與行政 Onboarding | 開始事實、申報、告知、資產與行政結案 |
| HLC05 | Assignment 與角色治理 | Helix 八類角色、專案與決策權 |
| HLC06 | 能力基線與公司職級 | 能力評估與職級決定 |
| HLC07 | 技術授權生命週期 | 授予、暫停、撤銷與回復 |
| HLC08 | 工地動員、危害與專案存取 | 現場、設備、permit 及客戶權限 gate |
| HLC09 | 派任條件、調動與工作條件變更 | before／after、意見、合意、通知與重新 clearance |
| HLC10 | 工時、出勤、請假與加班 | 計畫、申請、決定與實際工作事實 |
| HLC11 | 工作排序與資源衝突 | 唯一 Priority Owner 與跨案升級 |
| HLC12 | 技術交付控制 | review、query、deviation、hold 與 release |
| HLC13 | 品質、HSE 檢查與事件 | 不符合、矯正、檢查、incident 與申報 |
| HLC14 | 績效目標、評估與改善 | inputs、校準、結果、PIP、陳述與申覆 |
| HLC15 | 試用約定、評估、延長與結果 | 選擇、合理期間、checkpoint、延長、通過與未通過 |
| HLC16 | 晉升、職級、薪酬與職涯變動 | 評估、決定、通知或必要協議 |
| HLC17 | 訓練、發展與資格證照 | 需求、費用、出勤、評量、續證與資格使用 |
| HLC18 | 案件受理、分類與獨立路由 | intake、緊急風險、衝突與外部路徑 |
| HLC19 | 調查、證據與暫時措施 | scope、訪談、evidence、recusal、措施與 findings |
| HLC20 | 案件決定、申復與反報復 | 決定、通知、申復、追蹤與結案 |
| HLC21 | 關係暫停 Overlay | 適用性、決定、狀態 work items 與複核 |
| HLC22 | 復職、復工與狀態恢復 | 適能、調整、clearance、決定與通知 |
| HLC23 | 專案釋放、Bench 與再配置 | release、交接、Bench review 與新配置 |
| HLC24 | 自請離職表示與生效 | 意思表示、最後工作日、撤回與交接 |
| HLC25 | 雇主終止審查與決定 | 保護期、法定事由、安置、決定、通知與撤回 |
| HLC26 | 退休與合意終止 | ending path、退休決定、雙方協議與生效事實 |
| HLC27 | 關係結清、申報與 Closeout | 各給付計算／付款、申報與營運待辦 |
| HLC28 | 離職後請求、義務與保存 | 服務證明、競業、請求、retention 與 legal hold |
| HLC29 | 再聘與新 Workforce Instance | 新關係評估及舊 instance 參照 |

## 4. 不變條件

- 公司職級、專案角色及技術授權是三個獨立物件。
- 每位職員在特定 assignment 只有一位日常 Work Priority Owner。
- Offer 接受、契約成立、契約開始、實際工作及行政 onboarding 完成分開記錄。
- 試用是 HLC15 的可選 module；未選擇即不產生試用文件，已成立關係的法定權益不因試用降低。
- HLC05–HLC23 不得被實作成固定直線流程。
- 專案釋放進 HLC23；Bench 維持 active，不得停薪、強迫請假或自動轉為 ended。
- HLC18–HLC20 case 可跨所有 relationship state，且須有衝突迴避、外部路徑與禁止報復控制。
- 關係終止與工資、保險、資產、權限、證明及資料處置的完成是不同事件。
- 每個 closeout work item 只能是 `completed`、具理由的 `not-applicable`，或有 Owner／期限的 `transferred`。
- 再聘建立新 workforce instance，既有 instance 維持不可改寫。
- 收受、已讀、知悉、同意、雙方簽署與 authority approval 是不同 evidence type。
- 政策與簽收不能取代工作規則、法定協商、訓練、資格、檢查、許可、通報或現場控制。

## 5. 法律與文件治理

| 文件 | 權威邊界 |
| --- | --- |
| [Helix Workforce Lifecycle Gap Analysis](docs/governance/assurance/workforce-lifecycle-gap-analysis.md) | 追蹤設計缺口、決定、證據、嚴重度與狀態 |
| [Taiwan Workforce Law Source Catalog](docs/governance/legal/workforce-law-source-catalog.md) | 法源路由，不作個案適用結論 |
| [Taiwan Workforce Legal Topic Matrix](docs/governance/legal/workforce-legal-topic-matrix.md) | HLC 與法律議題覆蓋，不取代逐條 evidence |
| [Taiwan Workforce Legal Evidence Register](docs/governance/legal/workforce-legal-evidence-register.md) | 官方來源查證的獨立義務、狀態、觸發與 unresolved |
| [Helix Workforce Artifact Catalog](docs/governance/assurance/workforce-artifact-catalog.md) | Atomic Candidate artifact、execution 與 trigger；不是正式模板 |
| [HLC Module Pages](docs/modules/README.md) | HLC00–HLC29 各頁面的邊界、Trigger Matrix、文件與 gate |

法律 evidence 分 `current`、`future-effective`、`pending`，並分 `依法必須`、`公司政策選擇`、`個案待法律審查`。已公布不等於已施行；FAQ、新聞稿或行政指導只作明確標示的 guidance。

## 6. Repository 邊界

完整文件樹見 [Documentation Tree](docs/README.md)，治理文件的依賴關係見 [Governance Document Map](docs/governance/README.md)。

```text
docs/governance/
├── README.md
├── models/
│   ├── organization-governance-model.md
│   └── workforce-lifecycle-model.md
├── assurance/
│   ├── workforce-artifact-catalog.md
│   └── workforce-lifecycle-gap-analysis.md
└── legal/
    ├── workforce-law-source-catalog.md
    ├── workforce-legal-topic-matrix.md
    └── workforce-legal-evidence-register.md

docs/modules/
├── README.md
└── HLC00/ ... HLC29/

docs/enterprise/
└── README.md

docs/shared/
└── artifact-governance.md
```

本 repo 只保存治理文件、空白欄位與 schema。履歷、身分、薪資、健康、績效、申訴、調查與其他具名資料必須留在授權系統，不得提交 Git。正式模板、文件 ID 與公司制度待取得實際適用事實、owner 與核准後再建立。

## 7. 尚待公司確認

- 法人、事業分類、員工人數、工會／勞資會議、工作規則及工時制度；
- 工程、業主、原事業單位／承攬角色、工地、設備、作業及危害；
- 外國人、未成年、實習／建教、派遣、顧問與承攬等實際人口；
- HR、Payroll、IAM、HSE、採購、案件與文件系統及其 record owner；
- Employer、Delivery、CoE、Technical、Resource、HSE、Case 與 Legal authorities。

這些事實未取得前，所有門檻型法規與 Candidate artifact 都保留適用性 gate，不推定公司已合規。
