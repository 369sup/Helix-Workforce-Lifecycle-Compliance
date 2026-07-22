# HLC13 — 自請離職

> Relationship states：`active` → `termination_pending` → `ended`
> Primary authorities：HR／Employer Authority；Payroll／IT／Asset record owners

## 模組目的

確認勞工終止意思表示、預告與最後工作日，並把關係終止和工資、保險、退休、資產、權限、證明及資料 work items 分開處理。

## 必要文件

| Artifact ID | 文件 | 類型／簽署 | Owner／Approver | 必要證據 |
| --- | --- | --- | --- | --- |
| HX-ART-HLC13-001 | 離職意思表示、收受與最後工作日紀錄 | record／delivery-receipt | HR；Employer Authority | 意思表示、收受、年資、預告、最後工作日、工作免除與撤回 |
| HX-ART-HLC13-002 | 自請離職交接與 Closeout Work-item Register | register／authority-approval | HR／Payroll／IT／Asset | 工資、費用、特休、保險、健保三日退保、退休、資產、帳號、門禁、交接、證明與資料 |
| HX-ART-HLC14-004 | 服務證明書 | notice／authority-approval | HR；Employer Agent | TW-WF-SERVICE-001、請求與交付 |
| HX-ART-HLC14-005 | 離職後保密／競業提醒與補償紀錄 | notice／delivery-receipt | Legal／HR；Employer Authority | 既有有效義務、範圍、期間與補償；不得創設新義務 |

## Gate 與輸出

- 專案釋放、未到班、抱怨或主管轉述不得自動推定離職。
- 關係終止日期不因資產或交接未完而自動延後；未完項目各自有 owner 與期限。
- 最後工資不得因資產、訓練或賠償爭議被概括預扣。
- 輸出為可證明的 relationship transition、parallel closeout 與 post-employment work items。

Legal routing：[RESIGN／WAGE／LEAVE／INS／NHI／PENSION／SERVICE／DATA](../../governance/legal/workforce-legal-evidence-register.md)。
