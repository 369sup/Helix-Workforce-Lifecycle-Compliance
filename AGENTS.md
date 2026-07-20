# Repository Agent Guide

## 目標與邊界

- 建立適用臺灣地區、機電工程與起重工程 workforce 的生命週期 Compliance & Code of Conduct 文件治理系統。
- LC00–LC10 是目前唯一核准的第一層架構；關係性質與跨階段事件是獨立維度。
- 職能控制 taxonomy 尚未核准，不得沿用或自行重建舊分類。
- 本 repo 只保存治理文件、空白模板與欄位定義，不保存具名履歷、人事、薪資、評核、申訴或健康資料。
- 文件架構不等於法律意見、實際程序完成或已達成法令遵循。

## 先讀順序

1. Serena `mem:core`。
2. Serena `mem:current_work_state`（延續未完成工作時）。
3. `README.md` 的目標、邊界與待確認事項。
4. `docs/governance/workforce-lifecycle-model.md` 的 canonical 階段、轉換與文件清單。
5. `docs/governance/taiwan-legal-register.md` 中與目標階段或文件直接相關的證據列。
6. 目標階段的已核准文件；沒有核准文件時不得把候選清單當成模板。

不要先讀完整 repo 或整份法規資料庫。

## 不變條件

- LC00–LC10 的語意與允許轉換以 lifecycle model 為準；修改前必須先處理所有引用與 transition 影響。
- 關係性質、生命週期階段與職能／任務控制不得混為同一分類。
- 試用是受僱後的生命週期狀態，不是獨立關係性質，也不得降低共同或法定標準。
- 非僱傭人員共用 lifecycle 骨架，但文件名稱、義務與終止程序必須依實際關係分支。
- `LC04 → LC05` 可選；沒有試用或初期評估時直接進入 LC06。
- 試用延長必須保存雙方合意與有效日期證據；不繼續任用必須經 LC08 與 LC09。
- 再聘或再合作建立新的 lifecycle instance，不改寫或倒轉已結束紀錄。
- 每次 transition 至少記錄事件、有效日期、發起人、核准人、證據及法律審查狀態。
- 政策不能取代工作規則、職安衛管理計畫、施工計畫、危害告知、法定訓練、技能資格、設備檢查或作業許可。
- 法定安全義務、資格、檢查、停止作業權與禁止報復不得設例外。
- 「已公布」不等於「已施行」；法規台帳分別記錄公布日、施行日、過渡期與查證日。

## 法規證據規則

- 法規事實只採臺灣政府官方來源，優先順序為全國法規資料庫、主管機關法令系統、主管機關正式公告。
- 新聞稿、FAQ 或懶人包只能作為明確標示的官方 guidance，不取代法條與子法。
- 每項獨立法律結論建立一筆 evidence，標成 `依法必須`、`公司政策選擇` 或 `個案待法律審查`。
- 涉及人數、工作關係、定期契約、派遣、承攬、工程身分、設備或日期門檻時不得自行假設。
- Offer Letter、試用終止、懲戒、解僱、競業禁止及個資監控必須保留個案法律審查，不得由文件或狀態自動決定。
- 無法確認的法律效果寫 `待驗證`，不得用公司慣例補空白。

## Serena 與工具

- 每個新 session 先呼叫 Serena `get_current_config`；未啟用時才以本 repo 絕對路徑 activate。
- 先讀 memory 名稱與 `mem:core`，再依引用漸進讀取。
- Markdown、YAML 與純文字使用精準文字工具；若未來加入程式碼，符號、引用、修改與 diagnostics 優先使用 Serena。
- 階段完成或需跨回合延續時更新 `mem:current_work_state`，並立即讀回確認。
- Git 與專案命令使用 `C:\Program Files\Git\bin\bash.exe -c` 相容語法；先確認 cwd 與 Git root。

## Codex 環境與 Skill 路由

- `.codex/config.toml` 是共享 repo 設定；不得放憑證、provider、個人模型或遙測設定。
- `.codex/rules/*.rules` 修改後須用 `codex execpolicy check` 驗證並重啟 Codex。
- `.agents/plugins/marketplace.json` 是本 repo 的 plugin marketplace。
- `plugins/taiwan-compliance-governance/` 是法律查證 skill 的唯一來源；不要在 `.agents/skills` 複製同名 skill。
- 涉及臺灣法源、條文、施行狀態、門檻或法規台帳時使用 `verify-taiwan-compliance-law`。
- 生命週期文件 drafting skill 尚未核准；不得把候選文件清單直接轉為員工義務或正式模板。
- 修改 skill 後執行 skill quick validation；交付 plugin 前執行 plugin validation。

## 文件修改規則

- 每個 LC 階段必須記錄進入事件／證據、適用關係、必要決定、候選文件、退出事件／證據、允許下一階段、Owner、Approver 及 Legal Evidence IDs。
- 每筆候選文件記錄名稱、LC 階段、關係性質、文件類型、目的、Owner、觸發條件、產出證據、法律查證狀態與模板狀態。
- 規範寫必須／禁止什麼；程序寫由誰、何時、如何執行及留下什麼證據。
- 法條不要大量複製進文件；在法規台帳記錄條文、影響、狀態與官方連結。
- 懲戒、解僱或終止不得寫成自動結果；保留比例、程序、工作規則、契約與強制法規審查。
- 不修改、刪除或還原與目前任務無關的使用者變更。

## 完成門檻

- 檢查 LC ID、轉換、退出條件、關係分支、Markdown 結構、相對連結及法規台帳引用。
- 以直聘有／無試用、延長、不通過、派遣、承攬、顧問、Offer 結案、留停、異動、離職撤回及再聘案例驗證流程。
- 使用 Git 檢查實際 diff、未追蹤檔案及空白錯誤。
- 法律內容回報查證日、官方來源及待法律／職安專業確認項目。
- 未執行法定程序、訓練、檢查或現場驗證時，不得宣稱已合規。
- 若修改 Codex／Serena 環境或 plugin，回報是否需要重啟、安裝狀態及實際驗證結果。
