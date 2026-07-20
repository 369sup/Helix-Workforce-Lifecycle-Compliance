# Workforce Lifecycle Model

> 狀態：Draft
> 架構決策日：2026-07-20
> 適用範圍：臺灣地區機電工程與起重工程 workforce 文件治理
> Canonical scope：LC00–LC10、關係分支、轉換規則、跨階段事件與候選文件清單

## 1. 決策與邊界

本文件是 workforce lifecycle 階段、允許轉換與候選文件的唯一來源。README 只提供摘要。

本模型管理文件與治理狀態，不判定個案法律關係，不保存具名人事資料，也不自動決定錄取、試用結果、解僱、終止、懲戒或再聘。

目前三個獨立維度為：

1. `relationship_type`：雙方實際法律或合作關係。
2. `lifecycle_stage`：目前位於 LC00–LC10 的哪個階段。
3. `lifecycle_event`：績效、異動、留停、申訴、事故等可跨階段發生的事件。

職能、資格、權限、設備、任務及場所控制 taxonomy 不在本輪定義。未來這些控制必須依實際指派與風險啟用，不得以「尚未轉正」為理由延後。

## 2. 關係性質

| 候選類型 | 最低辨識問題 | 分支原則 |
| --- | --- | --- |
| 直聘不定期受僱 | 是否具有從屬性，工作是否具繼續性 | 使用員工文件；試用僅為可選狀態 |
| 直聘定期受僱 | 是否依法得使用定期契約及其法定類型 | 未查證前不得只因試用或專案名稱採定期契約 |
| 部分工時受僱 | 是否仍具勞動契約從屬性 | 不因工時較少而降低法定權益 |
| 派遣勞工 | 誰是雇主、誰實際指揮監督、是否符合派遣實質 | 區分派遣事業單位與要派單位文件及責任 |
| 承攬商／再承攬商人員 | 承攬商是否自主完成工作並自行管理其人員 | 本公司不直接套用員工錄取、試用或轉正文件 |
| 獨立承攬人／顧問 | 是否實際自主承擔工作方法與風險 | 依實質履行判斷，不以顧問或承攬名稱規避勞動法令 |
| 實習／見習／訓練人員 | 主要目的、報酬、指揮監督與實際工作內容為何 | 先完成關係認定，再選擇員工或非員工分支 |

關係名稱是候選分類，不是法律結論。認定依 [TW-WF-REL-001](taiwan-legal-register.md#tw-wf-rel-001)、[TW-WF-REL-002](taiwan-legal-register.md#tw-wf-rel-002) 與 [TW-WF-REL-003](taiwan-legal-register.md#tw-wf-rel-003) 的證據及個案事實辦理。

## 3. 階段資料契約

每個 LC 階段固定記錄以下欄位：

| 欄位 | 要求 |
| --- | --- |
| LC ID / Name | 唯一且穩定的階段代碼與名稱 |
| Purpose / Boundary | 階段負責與明確不負責的事項 |
| Entry Event / Evidence | 進入階段的事件與可稽核證據 |
| Relationship Types | 可使用該階段的關係類型與分支 |
| Required Decisions | 離開階段前必須完成的決定 |
| Candidate Documents | 本階段可能需要的文件；本輪均為 Candidate |
| Exit Event / Evidence | 離開階段的事件與證據 |
| Allowed Next Stages | 唯一允許的後續階段或結案 |
| Owner | 流程責任角色；具名人員待指定 |
| Approver | 決策核准角色；具名人員待指定 |
| Legal Evidence IDs | 支持法律結論的法規台帳 evidence |

transition register 的欄位定義為：`Lifecycle Instance Reference`、`Relationship Type`、`From LC`、`Event`、`To LC`、`Effective Date`、`Initiator`、`Approver`、`Evidence Reference`、`Legal Review Status`。這是空白欄位規格，不得在 repo 建立具名個案列。

## 4. LC00–LC10 階段矩陣

| LC | Purpose / Boundary | Entry Event / Evidence | Relationship Types | Required Decisions | Candidate Documents | Exit Event / Evidence | Allowed Next | Owner | Approver | Legal Evidence |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| LC00 | 確認用人／用工需求、預算與預定關係；不決定特定候選人 | 業務或人力需求提出／需求紀錄 | 全部 | 是否招募、外包、派遣或其他方式；預算與核准 | 用人需求單、用工方式評估、職務／工作範圍草案 | 需求核准、退回或取消／核准紀錄 | LC01、Closed | 需求 Owner | 預算與用工 Approver | 待驗證 |
| LC01 | 管理招募、候選資料與甄選；不作最終契約承諾 | 已核准需求／LC00 核准證據 | 全部 | 甄選標準、候選人選、資料處理與結案 | 職缺／合作說明、候選資料告知、甄選紀錄、未錄取結案 | 候選人獲准提案或招募結案／甄選核准 | LC02、Closed | 招募 Owner | 用人 Approver | 待驗證 |
| LC02 | 管理 Offer Letter 或合作提案及其結果；不等於實際開始工作 | 提案對象核准／LC01 決定紀錄 | 全部，依關係分支 | 條件、有效期限、接受方式、先決條件及是否撤回 | 錄取通知書、合作提案、接受／拒絕／失效紀錄 | 接受、拒絕、撤回或失效／時間戳與通知證據 | LC03、Closed | 用人或採購 Owner | 授權 Approver | Offer 效果待驗證 |
| LC03 | 確認開始前條件；不得在關係認定前錯套員工文件 | 提案已接受／接受證據 | 全部 | 關係分類、開始日、必要資格與開始條件是否滿足 | 關係認定檢核、開始前文件清單、資格驗證、開始日確認 | 條件完成、取消或失效／完成或結案證據 | LC04、Closed | HR／採購／承攬 Owner | 權責 Approver | TW-WF-REL-001、TW-WF-REL-002、TW-WF-REL-003 |
| LC04 | 從約定開始日建立實際關係、基本義務、權限與資產；不是轉正 | 實際開始提供勞務或服務／開始日證據 | 全部，文件依關係分支 | 是否進入試用／初評、初始指派、權限、資產與必要訓練 | 契約或服務文件、到職／進場清單、資料告知、權限與資產紀錄 | Onboarding 完成／完成清單 | LC05、LC06、LC08 | HR／採購／現場 Owner | 關係 Approver | TW-WF-TRIAL-001、TW-WF-TRIAL-002、TW-WF-TRIAL-004、TW-WF-REL-001、TW-WF-REL-002、TW-WF-REL-003 |
| LC05 | 管理已約定的員工試用或非員工初期評估；不得降低既有權益 | LC04 完成且存在試用／初評約定／約定證據 | 全部；受僱與非僱傭分支不同 | 目標、期限、結果、是否合意延長、繼續或啟動終止審查 | 試用目標、評核紀錄、合意延長、轉正／持續合作通知、終止審查提案 | 通過、合意延長、轉換或終止程序啟動／決定證據 | LC05、LC06、LC07、LC08 | 主管與 HR／契約 Owner | 授權 Approver | TW-WF-TRIAL-001、TW-WF-TRIAL-002、TW-WF-TRIAL-003、TW-WF-TRIAL-004、TW-WF-TRIAL-005 |
| LC06 | 管理穩定在職或持續合作期間；不把跨階段事件誤作必經階段 | LC04 無初評或 LC05 完成／核准證據 | 全部 | 持續資格、發展、訓練、權限與文件是否有效 | 人員檔案索引、訓練／資格矩陣、績效與發展候選文件 | 異動、暫停或終止事件／事件證據 | LC07、LC08 | 關係 Owner | 權責 Approver | 待逐題查證 |
| LC07 | 管理調職、升遷、薪資／地點／主管變更、留停、回任及關係重分類 | LC05 或 LC06 發生變更事件／事件申請 | 全部 | 新條件、有效日、是否需重新認定關係及重新配置控制 | 異動申請、條件變更、留停／暫停、回任、關係重分類檢核 | 變更生效、回復、取消或轉終止／核准證據 | LC06、LC08 | HR／契約 Owner | 變更 Approver | TW-WF-REL-001、TW-WF-REL-003、待逐題查證 |
| LC08 | 管理離職／終止的提出、法律依據、審查與生效決定；不自動判斷合法性 | 辭職、契約屆期、終止提案或其他事件／提出證據 | 全部，法律路徑分支 | 法律與契約依據、程序、通知、比例與禁止報復檢查 | 離職申請、終止提案、法律審查、通知與撤回紀錄 | 核准生效、撤回或取消／決定證據 | 原 LC、LC09 | HR／契約／法務 Owner | 授權 Approver | TW-WF-TRIAL-005、個案待法律審查 |
| LC09 | 執行交接、結清、財物返還、撤權與必要證明；不改寫終止依據 | LC08 終止決定生效／決定與日期 | 全部 | 交接、費用／薪資、資產、權限、資料及文件是否完成 | Offboarding 清單、交接、結清、資產返還、撤權、服務證明候選文件 | 所有必要項目完成／closeout evidence | LC10 | HR／契約／IT／資產 Owner | closeout Approver | 待逐題查證 |
| LC10 | 管理離職後仍存續的合法義務、保存與再聘／再合作評估 | LC09 完成／closeout evidence | 全部 | 保存／刪除、保密、證明、再聘資格及個案限制 | 離職後義務通知、保存／刪除紀錄、再聘評估 | 義務到期或新需求核准／到期或新 instance reference | Closed、新 LC00 或 LC01 instance | 原關係 Owner | 再聘 Approver | 個案待法律審查 |

## 5. 允許轉換

| From | Event | To | 最低證據 |
| --- | --- | --- | --- |
| LC00 | 需求核准 | LC01 | 核准需求、預算與預定用工方式 |
| LC00 | 需求取消／退回 | Closed | 取消或退回理由與決定 |
| LC01 | 候選人獲准提案 | LC02 | 甄選與授權紀錄 |
| LC01 | 招募結案 | Closed | 未錄取、撤回或停止招募紀錄 |
| LC02 | 提案接受 | LC03 | 接受內容、時間與方式 |
| LC02 | 拒絕、撤回或失效 | Closed | 通知、期限及結案紀錄 |
| LC03 | 開始條件完成 | LC04 | 關係認定、開始日及條件完成紀錄 |
| LC03 | 開始取消 | Closed | 取消依據、通知與資料處理紀錄 |
| LC04 | 有效試用／初評安排 | LC05 | 事前約定、期限、目標與適用關係 |
| LC04 | 無試用／初評 | LC06 | Onboarding 完成及持續關係確認 |
| LC04 | 開始後立即進入終止審查 | LC08 | 事件、事實與審查提案 |
| LC05 | 合意延長 | LC05 | 雙方合意、新期限、理由與下次評核日 |
| LC05 | 通過／持續合作 | LC06 | 評核、核准與生效通知 |
| LC05 | 關係或條件轉換 | LC07 | 變更提案與核准 |
| LC05 | 不繼續提案 | LC08 | 評核事實與法律／契約審查提案 |
| LC06 | 異動、暫停或重分類 | LC07 | 事件、條件與核准 |
| LC06 | 離職／終止啟動 | LC08 | 申請、通知或提案 |
| LC07 | 變更完成或回復 | LC06 | 新條件、有效日與控制重算證據 |
| LC07 | 終止啟動 | LC08 | 申請、通知或提案 |
| LC08 | 終止撤回／取消 | 原 LC | 撤回或取消決定與回復措施 |
| LC08 | 終止決定生效 | LC09 | 法律／契約審查、核准與生效日 |
| LC09 | Closeout 完成 | LC10 | 結清、交接、返還與撤權 evidence |
| LC10 | 再聘／再合作需求核准 | 新 LC00 或 LC01 | 新 lifecycle instance reference；不得重開舊 instance |

未列出的轉換禁止直接使用；須先修改本文件、說明原因並完成治理核准。

## 6. 跨階段事件

| 事件 | 可發生階段 | 最低控制 |
| --- | --- | --- |
| 績效與發展 | LC05–LC07 | 目標、期間、事實、回饋、決定與申覆／審查路徑 |
| 獎勵、懲戒與調查 | LC04–LC08 | 事實、權限、程序、比例、禁止報復及個案法律審查 |
| 申訴與通報 | LC01–LC10 | 受理、保密、分流、禁止報復、調查與結案證據 |
| 事故、職災與健康事件 | LC03–LC10 | 緊急處置、法定通報、復工／適任與資料權限；待專業審查 |
| 休假、留停與暫停 | LC05–LC07 | 依據、起訖、權限／資產處理、回任或後續轉換 |
| 職務、薪資、地點或主管變更 | LC05–LC07 | 合法性、通知／合意、有效日及控制重新配置 |
| 關係性質重分類 | LC03–LC08 | 依實際履行重新認定，不得只更改契約標題 |

## 7. 候選文件清單

欄位契約：`Candidate Name`、`LC`、`Relationship Types`、`Document Type`、`Purpose`、`Owner`、`Trigger`、`Evidence Output`、`Legal Status`、`Template Status`。

| Candidate Name | LC | Relationship Types | Type | Purpose | Owner | Trigger | Evidence Output | Legal Status | Template Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 用人／用工需求單 | LC00 | 全部 | Form | 記錄需求、預算、預定關係與核准 | 待指定 | 新需求 | 核准／退回紀錄 | 公司政策選擇 | Candidate |
| 用工方式與關係初評 | LC00 | 全部 | Checklist | 比較直聘、派遣、承攬或顧問的實際需求與風險 | 待指定 | 需求審查 | 初步分類與待查事實 | 個案待法律審查 | Candidate |
| 職缺／工作範圍說明 | LC01 | 全部 | Notice | 說明工作內容、條件與甄選基準 | 待指定 | 招募開始 | 核准版本 | 待驗證 | Candidate |
| 候選資料告知與處理紀錄 | LC01 | 全部 | Notice / Record | 管理候選人資料蒐集、利用與結案 | 待指定 | 蒐集候選資料 | 告知與處理 evidence | 待驗證 | Candidate |
| 甄選與核准紀錄 | LC01 | 全部 | Record | 保存一致標準、評選事實與授權 | 待指定 | 評選 | 決定 evidence | 待驗證 | Candidate |
| 錄取通知書（Offer Letter） | LC02 | 受僱候選人 | Notice / Agreement candidate | 說明提案條件、有效期限與接受方式 | 待指定 | 錄取核准 | 發出及接受／拒絕 evidence | 法律效果待驗證 | Candidate |
| 合作提案 | LC02 | 非受僱候選人 | Notice / Agreement candidate | 說明合作範圍、條件與接受方式 | 待指定 | 合作核准 | 發出及接受／拒絕 evidence | 個案待法律審查 | Candidate |
| Offer／提案結果紀錄 | LC02 | 全部 | Register schema | 記錄接受、拒絕、撤回或失效 | 待指定 | 提案結果 | 時間與通知 evidence | 公司政策選擇 | Candidate |
| 開始前條件與關係認定檢核 | LC03 | 全部 | Checklist | 確認實際關係、開始日與必要條件 | 待指定 | 提案接受 | 分類、缺口與核准 evidence | TW-WF-REL-001／002／003 | Candidate |
| 到職／進場與 Onboarding 清單 | LC04 | 全部，分支版本 | Checklist | 建立開始日、權限、資產、訓練與必要告知 | 待指定 | 實際開始 | 完成與未完成 evidence | 待逐題查證 | Candidate |
| 受僱／服務關係文件 | LC04 | 依關係分支 | Agreement candidate | 記錄實際條件與雙方責任 | 待指定 | 關係開始 | 簽署／生效 evidence | 個案待法律審查 | Candidate |
| 試用目標與評核計畫 | LC05 | 約定試用的受僱者 | Plan | 定義合理目標、期間、支持與評核日 | 待指定 | 進入試用 | 已溝通計畫 | TW-WF-TRIAL-001／002 | Candidate |
| 初期合作評估計畫 | LC05 | 非受僱分支 | Plan | 依合作成果評估，不使用員工試用語意 | 待指定 | 存在初評安排 | 已溝通計畫 | 個案待法律審查 | Candidate |
| 試用／初評紀錄 | LC05 | 全部，分支版本 | Record | 保存事實、回饋與決定依據 | 待指定 | 評核點 | 評核 evidence | 待驗證 | Candidate |
| 試用合意延長紀錄 | LC05 | 受僱者 | Agreement / Record | 記錄理由、新期限、目標與雙方合意 | 待指定 | 延長提案 | 合意及有效日 evidence | TW-WF-TRIAL-003 | Candidate |
| 轉正／持續合作通知 | LC05 | 全部，分支版本 | Notice | 結束初評並確認持續關係 | 待指定 | 評核通過 | 核准與通知 evidence | 公司政策選擇；TW-WF-TRIAL-004 | Candidate |
| 在職／合作文件索引 | LC06 | 全部 | Register schema | 管理有效文件、資格、訓練、權限與複核日 | 待指定 | 進入持續階段 | 索引與 review evidence | 待逐題查證 | Candidate |
| 異動／暫停／回任申請 | LC07 | 全部，分支版本 | Form | 記錄變更內容、依據、日期與核准 | 待指定 | 發生變更 | 申請與核准 evidence | 待逐題查證 | Candidate |
| 關係重分類檢核 | LC07 | 全部 | Checklist | 依履行事實重新判斷關係 | 待指定 | 指揮監督或契約實質改變 | 分類與法律審查 evidence | TW-WF-REL-001／003 | Candidate |
| 離職／終止提案與審查 | LC08 | 全部，分支版本 | Form / Review | 記錄事實、法律／契約依據、程序與核准 | 待指定 | 終止事件 | 審查與決定 evidence | 個案待法律審查 | Candidate |
| 終止通知／撤回紀錄 | LC08 | 全部，分支版本 | Notice / Record | 保存生效日、通知及撤回／取消結果 | 待指定 | 終止決定 | 通知與送達 evidence | 個案待法律審查 | Candidate |
| Offboarding 與結清清單 | LC09 | 全部，分支版本 | Checklist | 管理交接、費用／薪資、資產、權限與資料 | 待指定 | 終止生效 | closeout evidence | 待逐題查證 | Candidate |
| 離職後義務與保存紀錄 | LC10 | 全部，分支版本 | Notice / Register schema | 管理合法存續義務、保存、刪除與到期 | 待指定 | LC09 完成 | 到期與處理 evidence | 個案待法律審查 | Candidate |
| 再聘／再合作評估 | LC10 | 全部 | Form | 建立新需求與新 lifecycle instance，不改寫舊紀錄 | 待指定 | 新需求 | 新 instance reference | 公司政策選擇；個案限制待審查 | Candidate |

## 8. 驗證案例與預期結果

| 案例 | 預期路徑／結果 |
| --- | --- |
| 直聘且有試用 | LC00→01→02→03→04→05→06；權益與必要控制自實際到職開始 |
| 直聘但無試用 | LC04 直接進入 LC06 |
| 試用延長 | LC05→LC05；必須有雙方合意、新期限及下次評核日 |
| 試用未通過 | LC05→LC08→LC09；禁止直接 LC05→LC10／Closed |
| 派遣人員 | 共用主線，但 LC02–LC05 使用派遣分支並確認雇主與實際指揮監督 |
| 承攬商人員 | 共用主線，不使用本公司的員工 Offer、試用或轉正文件 |
| 獨立顧問 | 依履行事實檢查從屬性；若事實改變則經 LC07 重分類 |
| Offer 拒絕／失效／撤回 | LC02→Closed，保存結果與通知 evidence，不進入 LC04 |
| 留停或暫停 | LC06→LC07→LC06，保存起訖、權限與回任 evidence |
| 離職／終止撤回 | LC08 回到原 LC，保存撤回決定與回復措施 |
| 再聘／再合作 | LC10 建立新的 LC00 或 LC01 instance；舊 instance 保持 Closed history |

## 9. 待法律與專業確認

- Offer Letter 各條款、接受方式與撤回的契約效果。
- 定期契約、部分工時、派遣、承攬、顧問及實習的實際適用條件。
- 招募與人事資料的個資告知、利用、保存與刪除。
- 到職時的勞健保、退休金、工資、工時、休假及其他法定文件與期限。
- 試用評核標準、延長及終止個案的比例、程序與證據。
- 調動、留停、職災、復工、懲戒、離職、資遣、退休與服務證明。
- 離職後競業禁止、保密、資料保存及再聘限制。
- 機電與起重工作的法定資格、訓練、健康、設備、承攬與現場安全文件。
