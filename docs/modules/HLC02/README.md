# HLC02 — 到職、Onboarding 與初始 Helix 配置

> Relationship states：`pre_start`、`active`
> Primary authorities：Employer／HR；IT／Asset／Site／HSE authorities

## 模組目的

依實際觸發事實啟用工資、出勤、保險、退休、安全、資料與權限控制，並建立第一份可執行 Helix assignment。

## 必要文件

| Artifact ID | 文件 | 類型／簽署 | Owner／Approver | 必要證據 |
| --- | --- | --- | --- | --- |
| HX-ART-HLC02-001 | 到職／進場 Onboarding Work-item Register | register／authority-approval | HR／Site；Employer Authority | 三類開始日期、名卡、勞保／就保／職災保險／健保、退休、資產、帳號、訓練與 blocker |
| HX-ART-HLC02-002 | 員工基本資料與緊急聯絡資料 | form／no-signature | HR；Data Authority | TW-WF-RECORD-001、TW-WF-DATA-001–004 |
| HX-ART-HLC02-003 | 工作規則／政策收受紀錄 | record／acknowledgement | HR；Employer Authority | 文件版本、提供日、取得方式與收受證據 |
| HX-ART-HLC02-004 | 資產、防護具與帳號領用／授權 | record／acknowledgement | IT／Asset／HSE；各 Authority | 資產、用途、權限、限制、到期與返還責任 |
| HX-ART-HLC02-005 | Initial Helix Role Assignment | authorization／authority-approval | HR／Resource；Employer Authority | Employer、CoE、People、Delivery、Priority、Technical、Resource、HSE roles |

## Gate 與輸出

- 分別記錄 `contract_start_at`、`actual_work_start_at`、`administrative_onboarding_completed_at`。
- 實際開始工作後不得等待行政完成才啟用工時、職災保險、健保、退休或安全控制；健保另依 TW-WF-NHI-001–002 判斷資格、投保單位與三日申報期限。
- 未具資格、訓練、健康適任或 site clearance 的工作保持 blocked。
- 輸出為 active relationship、assignment、onboarding work items 與可追溯的未完成補正。

Legal routing：[RECORD／INS／NHI／PENSION／TRIAL／OSH／DATA](../../governance/legal/workforce-legal-evidence-register.md)。
