# Repository Agent Guide

## 目標與邊界

- 建立臺灣工程企業的 Helix workforce lifecycle、法律證據與 Candidate artifact 治理。
- HLC00–HLC29、relationship state、assignment、overlay、case 與 work item 是核准的 canonical 維度；HLC 編號是穩定頁面識別碼，不代表固定線性階段。
- 本 repo 不保存具名人事、薪資、健康、績效、申訴或調查資料。
- Draft 架構、Candidate artifact 與測試通過都不等於法律意見或已完成遵循。

## 先讀順序

1. Serena `mem:core` 與延續工作時的 `mem:current_work_state`。
2. `README.md`。
3. `docs/governance/models/workforce-lifecycle-model.md`。
4. `docs/modules/<HLC>/README.md` 與該模組必要文件清單。
5. 與任務相關的 gap、law catalog、topic matrix 與 legal evidence。
6. `docs/governance/models/organization-governance-model.md`、`docs/governance/assurance/workforce-artifact-catalog.md` 與 `docs/shared/artifact-governance.md`。

不要先讀完整法規資料庫；依 HLC、topic 及 Evidence ID 漸進讀取。

## Canonical 不變條件

- relationship state 與 HLC module 分開；HLC05–HLC23 可依事件並行、重入，不得排成固定直線。
- Employer 身分不由 Project、CoE、People Manager 或客戶取代。
- 每個 assignment 只有一位 Work Priority Owner；CoE 不直接插入日常工作佇列。
- 公司職級、專案角色與技術授權分開。
- 技術否決限於法令、安全、核准標準、設計基準或授權邊界，並留下 hold／escalation／release evidence。
- Offer 接受、契約成立、契約開始、實際工作及行政 onboarding 完成分開。
- 試用是 HLC15 可選 module，不是較低權益關係；不通過只能啟動 HLC25 法律審查。
- HLC21 是 active 關係上的 overlay；HLC23 project release／Bench 不等於終止。
- HLC18–HLC20 case 不因離職自動結案；最高負責人或管理線涉案須走替代／外部路徑。
- HLC24–HLC26 的關係結束與 HLC27 closeout work items 分開；HLC29 再聘建立新 instance。
- 法定安全、資格、檢查、停止作業權與禁止報復不得設公司例外。

## 法規證據規則

- 臺灣法規事實只採官方來源：全國法規資料庫、主管機關法令系統、正式公告。
- 涉及臺灣法源、條文、施行、門檻或台帳時使用 `verify-taiwan-compliance-law` skill。
- 每個 Evidence ID 只記一項要求，狀態為 `current`、`future-effective` 或 `pending`。
- 分類只用 `依法必須`、`公司政策選擇`、`個案待法律審查`。
- Law catalog 只路由法源；topic matrix 只路由議題；都不能冒充已查證 evidence。
- FAQ、新聞稿與行政指導只能標示為 guidance，不取代法條。
- 人數、關係、工程角色、設備、危害與日期未知時不得自行假設。
- Offer、定期契約、試用終止、懲戒、解僱、競業、服務年限與敏感個資保留個案法律審查。

## 文件修改規則

- HLC module 記錄目的、允許 relationship states、觸發、必要決定、evidence、owner／authority 及 Legal Evidence IDs。
- `helix_assignment` 必須分列 Employer、CoE、People、Delivery、Work Priority、Technical、Resource 與 HSE roles。
- Candidate artifact 使用唯一 `HX-ART-*` ID，記錄 primary／related HLC、人口、單一類型、目的、單一 execution mode、`HX-TRG-*`、roles、evidence、法律狀態與 `Candidate`。
- 每個 HLC 必須有 `docs/modules/HLCxx/README.md`，作為未來 docs 頁面；其 artifact ID 集合須與 canonical catalog 的 primary HLC 分配一致。
- Execution mode 分 `no-signature`、`submission`、`delivery-receipt`、`acknowledgement`、`consent`、`bilateral-signature`、`authority-approval`、`external-filing`。
- 每個 artifact 只代表一種實體文件與一種法律行為；申請、評估、決定、通知、協議、收受、外部申報及完成紀錄分列。
- 每個 HLC 以 Trigger Matrix 定義 event、selectors、timing、required artifacts 與 blocker；不得用抽象 trigger 產出不確定文件清單。
- `WF-GAP-*`、`TW-LAW-*`、`TOP-*`、`TW-WF-*`、`HX-ART-*`、`HX-TRG-*` ID 必須唯一。
- 規範寫必須／禁止；程序寫角色、時點、步驟、例外與證據；record 只證明發生的事實。
- 不建立正式員工模板，除非公司事實、owner、法務審查及核准狀態均已明確。
- 不修改、刪除或還原與任務無關的使用者變更。

## Serena、工具與完成門檻

- 新 session 先讀 Serena config／memory；階段完成或跨回合延續時更新 `mem:current_work_state` 並讀回。
- Markdown 與設定使用精準文字工具；Git 前確認 cwd 及 root。
- 驗證 HLC、各 ID 唯一性、trigger resolution、相對連結、Evidence 引用、Markdown 結構，並確認全專案只使用 HLC 命名。
- 驗證 30 個 module page package 齊全、primary artifact 與 catalog 一致，且所有 enterprise artifacts 均被索引；不得以固定 artifact 數量代替 catalog 驗證。
- 最低情境：有／無試用、派遣／承攬重分類、並行派任訓練績效、雙重命令、技術 hold、安全停工、調動、霸凌／性騷擾、留停、職災復工、專案釋放／Bench、離職、終止撤回、closeout 未結與再聘。
- 使用 Git 檢查 diff、未追蹤檔案及 whitespace；法律回報包含基準日、官方來源與 unresolved。
- 未執行公司核准、法定程序、訓練、檢查或現場驗證時，不得宣稱已合規。
