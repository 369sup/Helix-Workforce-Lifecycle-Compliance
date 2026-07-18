# Repository Agent Guide

## 目標與邊界

- 建立適用臺灣地區、機電工程與起重工程的 Modular Compliance & Code of Conduct。
- 實體架構固定為 D00–D12 Domain；Core、Role-Based、Conditional 是 applicability metadata，不是第一層目錄。
- 本 repo 目前是文件治理專案。文件架構不等於法律意見或已完成法令遵循。
- 僅處理使用者指定的模組或治理切片；不要一次撰寫全部政策。

## 先讀順序

1. Serena `mem:core`。
2. Serena `mem:current_work_state`（延續未完成工作時）。
3. `README.md` 的架構模型與待確認事項。
4. `docs/governance/domain-matrix.md` 的目標 Domain、責任邊界與初始控制矩陣。
5. 目標模組文件。
6. `docs/governance/taiwan-legal-register.md` 中與目標模組直接相關的法規列。

不要先讀完整 repo 或整份法規資料庫。

## 不變條件

- D00–D12 的編號、Primary Responsibility 與唯一 Primary Domain 原則不得任意變更。
- Core 對指定人口持續適用；Role-Based 與 Conditional 只能增加或具體化義務，不得降低共同標準。
- Role-Based 由職務、責任、法定資格或持續權限觸發。
- Conditional 必須有可稽核的觸發、開始、終止、撤銷與證據。
- Module ID 採 `Dxx-Mnnn`；不得把職稱、設備、地點或 applicability type 編入永久 ID。
- 政策不能取代工作規則、職安衛管理計畫、施工計畫、危害告知、法定教育訓練、技能資格、設備檢查或作業許可。
- 法定安全義務、資格、檢查、停止作業權與禁止報復不得設例外。
- 「已公布」不等於「已施行」；法規台帳必須分別記錄公布日、施行日、過渡期與查證日。

## 法規證據規則

- 法規事實只採臺灣政府官方來源，優先順序：全國法規資料庫、主管機關法令系統、主管機關正式公告。
- 新聞稿或懶人包僅用於確認施行規劃，不取代法條與子法。
- 每項法律結論標成：`依法必須`、`公司政策選擇`、`個案待法律審查`。
- 涉及人數、工程規模、承攬身分、機械容量、作業種類或日期門檻時，不得自行假設。
- 無法確認時寫 `待驗證`，不得用一般慣例補空白。

## Serena 與工具

- 每個新 session 先呼叫 Serena `get_current_config`；未啟用時才以本 repo 絕對路徑 activate。
- 先讀記憶名稱與 `mem:core`，再依引用漸進讀取。
- Markdown、YAML 與純文字可使用精準文字工具；若未來加入程式碼，符號、引用、修改與 diagnostics 優先用 Serena。
- 階段完成或需跨回合延續時，更新 `mem:current_work_state`，並立即讀回確認。
- Git 與專案命令使用 `C:\Program Files\Git\bin\bash.exe -c` 相容語法；先確認 cwd 與 Git root。

## Codex 環境與 Skill 路由

- `.codex/config.toml`：共享的 repo 設定；不得放憑證、provider、個人模型或遙測設定。
- `.codex/rules/*.rules`：命令核准／禁止規則；rules 為實驗性功能，修改後須用 `codex execpolicy check` 驗證並重啟 Codex。
- `.agents/plugins/marketplace.json`：本 repo 的 plugin marketplace。
- `plugins/taiwan-compliance-governance/`：法律查證與模組起草 skills 的唯一來源；不要在 `.agents/skills` 複製同名 skill。
- 涉及臺灣法源、條文、施行狀態、門檻或法規台帳時，使用 `verify-taiwan-compliance-law`。
- 只有在相關法規證據已確認後，才使用 `draft-compliance-module` 起草單一核准模組。
- 修改 skill 後執行 skill quick validation；交付 plugin 前執行 plugin validation。

## 文件修改規則

- 一個模組只處理一個主要責任邊界。
- 每個模組只能指定一個 Primary Domain；跨域內容使用 related module、procedure 或 evidence reference，不複製全文。
- 規範寫「必須／禁止什麼」；程序寫「由誰、何時、如何做與留下什麼證據」。
- 法條不要大量複製進政策；在法規台帳記錄條文、影響、狀態與官方連結。
- 懲戒或解僱不得寫成自動結果；必須保留比例、程序、工作規則與強制法規審查。
- 不修改與目前任務無關的使用者變更。

## 完成門檻

- 檢查 Markdown 結構、相對連結、模組 ID、觸發／終止條件與法規台帳引用。
- 使用 Git 檢查實際 diff、未追蹤檔案及空白錯誤。
- 法律內容須回報法規查證日與待法律／職安專業確認項目。
- 未執行法定程序、訓練、檢查或現場驗證時，不得宣稱「已合規」。
- 若本回合新增或修改 Codex／Serena 環境，須回報是否需要重啟、plugin 安裝狀態及實際驗證結果。
