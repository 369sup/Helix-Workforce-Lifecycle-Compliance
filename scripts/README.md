# Scripts

本目錄放置可重複執行的專案維護與驗證腳本。

- 腳本應採明確輸入、非互動執行、失敗即停止，並回傳可判讀的結束碼。
- Windows 專案命令以 Git Bash 相容語法為準。
- 預設不得修改法律來源、核准文件或使用者資料；會產生副作用的腳本必須明確說明。

## Governance validation

從 repository root 執行：

```bash
./scripts/validate-governance.sh
```

驗證器只讀取 repository 文件，檢查 HLC00–HLC29 page packages、atomic artifact contract、trigger 解析、ID、法律 evidence 引用、相對連結及 UTF-8 replacement character。
