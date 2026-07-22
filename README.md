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
- HLC00–HLC02 是一般入口導航。
- HLC03–HLC12 是可並行、可重入的工作模組，不是單線階段。
- HLC13 是自請離職路徑；HLC14 是資遣、解僱、退休及共同離場路徑。
- `helix_assignment` 分別記錄 Employer、CoE、People、Delivery、Work Priority、Technical、Resource 與 HSE roles。
- overlay 不取代 active relationship；case 不因離職自動結案。

唯一 canonical 定義見 [Helix Workforce Lifecycle Model](docs/governance/models/workforce-lifecycle-model.md)，Helix 權責見 [Helix Organization Governance Model](docs/governance/models/organization-governance-model.md)。

## 3. HLC00–HLC14

| ID | 模組 | 邊界 |
| --- | --- | --- |
| HLC00 | 人力規劃、職缺與招募 | 需求、關係初判、職務／危害／資格、甄選與候選資料 |
| HLC01 | 錄取、契約與開始前條件 | Offer／協議版本、接受、clearance、取消或延後 |
| HLC02 | 到職、Onboarding 與初始 Helix 配置 | 三類開始日期、名卡、保險、退休、權限、資產與 assignment |
| HLC03 | 能力基線、公司職級與技術授權 | 能力、職級、資格與授權互不自動推導 |
| HLC04 | 專案派任、配置與工地動員 | 角色、比例、priority owner、地點、工時、技術與安全 gate |
| HLC05 | 在職交付、工時與日常工作指揮 | 工作包、出勤、加班、品質、技術、安全與資源衝突 |
| HLC06 | 試用、績效、改善與申覆 | 雙軌輸入、單一結果；不得直接產生終止 |
| HLC07 | 調薪、晉升、職級與職涯 | 校準、決定、通知／同意與生效日 |
| HLC08 | 跨專案調動、借調及工作條件變更 | 前後條件、不利益、員工意見、法律與安全 gate |
| HLC09 | 訓練、證照、續證與人才發展 | 訓練類型、費用、能力、資格、到期與服務年限 gate |
| HLC10 | 職場事件、申訴、調查與紀律 | 性騷擾、霸凌、禁止報復、迴避、外部路徑與申復 |
| HLC11 | 留停、職災醫療及其他暫停 overlay | active relationship 上的工資、保險、權限、聯絡與復職狀態 |
| HLC12 | 專案結案、釋放、Bench 與再配置 | 專案結束不等於勞動契約終止 |
| HLC13 | 自請離職 | 意思表示、最後工作日及平行 closeout |
| HLC14 | 資遣、解僱、退休與共同離場 | 法定路徑審查、平行 closeout 與離職後義務 |

## 4. 不變條件

- 公司職級、專案角色及技術授權是三個獨立物件。
- 每位職員在特定 assignment 只有一位日常 Work Priority Owner。
- Offer 接受、契約成立、契約開始、實際工作及行政 onboarding 完成分開記錄。
- 試用是 HLC06 的可選子型；已成立關係的法定權益不因試用降低。
- HLC03–HLC12 不得被實作成固定直線流程。
- 專案釋放先進 HLC12；Bench 維持 active，不得停薪、強迫請假或自動轉為 ended。
- HLC10 case 可跨所有 relationship state，且須有衝突迴避、外部路徑與禁止報復控制。
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
| [Helix Workforce Artifact Catalog](docs/governance/assurance/workforce-artifact-catalog.md) | Candidate artifact 與簽署語意；不是正式模板 |
| [HLC Module Packages](docs/modules/README.md) | HLC00–HLC14 各模組的必要文件、gate、owner、evidence 與輸出 |

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
└── HLC00/ ... HLC14/

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
