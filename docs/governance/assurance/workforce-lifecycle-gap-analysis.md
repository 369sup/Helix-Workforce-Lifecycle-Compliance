# Helix Workforce Lifecycle Gap Analysis

> 狀態：Draft
> 基準日：2026-07-23
> Canonical：HLC00–HLC14 hybrid module model

本清單只追蹤尚未由公司事實、正式程序或系統落地解決的缺口。`Accepted` 表示設計決定已寫入 canonical model；`Open` 表示仍需公司 selector、owner、法律覆核或操作設計。

| Gap ID | HLC | 缺口／風險 | 已採納或必要決定 | 必要 evidence | Priority / Status |
| --- | --- | --- | --- | --- | --- |
| WF-GAP-HLC00-001 | HLC00 | 專案需求可能被直接等同定期僱用 | 需求核准前分開永久能力、短期需求與法定契約類型 | 工作持續性、期間、關係初評、審查理由 | P0 / Accepted |
| WF-GAP-HLC00-002 | HLC00 | 招募條件可能含歧視、非必要隱私或未揭示薪資 | 職缺發布 gate 引用 RECRUIT evidence | 職務必要性、評分準則、告知、薪資揭示 | P0 / Accepted |
| WF-GAP-HLC00-003 | HLC00 | 外國人、未成年、實習／建教與特殊作業人口未分支 | 保留 protected-population selector；未查清不得一般化處理 | 身分、年齡、工作許可、教育安排、危害 | P0 / Open |
| WF-GAP-HLC01-001 | HLC01 | Offer 接受、契約成立與實際開始可能被合併 | 分別記錄 offer、acceptance、contract、start 與 administrative dates | 版本、送達、表示、條件完成與各時間戳 | P0 / Accepted |
| WF-GAP-HLC01-002 | HLC01 | clearance 被壓成單一完成布林值 | relationship、identity、eligibility、contract、payroll、insurance、pension、fitness、qualification、site、data 平行處理 | 每項 status、owner、due date、evidence、blocker | P0 / Accepted |
| WF-GAP-HLC01-003 | HLC01 | Offer 撤回、附條件接受、no-show 與延後開始法律效果未確定 | 流程只記 disposition；法律效果保留 pending evidence | 完整往來、事件時間軸與法律 review | P0 / Open |
| WF-GAP-HLC02-001 | HLC02 | 已開始工作但 onboarding 未完時法定控制可能延後 | 法定控制依實際觸發事實啟用；未完項目另列 blocker／remediation | 三類開始日、投保／提繳／工時／安全 work items | P0 / Accepted |
| WF-GAP-HLC02-002 | HLC02 | 初始 Helix roles 可能混淆雇主、工作指揮與技術治理 | assignment 強制分列八種 roles 與唯一 Priority Owner | assignment 版本、授權、比例、起訖與升級路徑 | P0 / Accepted |
| WF-GAP-HLC03-001 | HLC03 | 職稱可能被當成能力、法定資格或技術授權 | 職級、專案角色、能力與授權分開；到期或範圍改變重評 | assessment、資格、authorization、限制、expiry | P0 / Accepted |
| WF-GAP-HLC03-002 | HLC03 | 技術否決可能成為個人偏好或隱性工作排序 | 限定合法觸發；書面 hold、升級、處置與 release | 法源／標準、風險、範圍、決定者與解除 | P0 / Accepted |
| WF-GAP-HLC04-001 | HLC04 | 派任書可能被用來單方不利變更勞動條件 | 派任與契約變更分開；重大變更送 HLC08 gate | 原契約、派任、before／after、員工意見與同意判斷 | P0 / Accepted |
| WF-GAP-HLC04-002 | HLC04 | 工地進場文件可能被誤認為完成職安控制 | HLC04 只做 mobilization gate；操作控制留在 site／task system | 危害告知、訓練、資格、設備、permit、檢查 | P0 / Open |
| WF-GAP-HLC04-003 | HLC04 | 多專案配置比例超過容量或產生多重命令 | assignment 比例與 Priority Owner 統一由 Resource Governance 協調 | capacity、需求、衝突、決定與通知 | P0 / Accepted |
| WF-GAP-HLC05-001 | HLC05 | CoE 活動、客戶要求或遠端工作可能形成未記錄工時 | 所有工作經 Priority Owner 排序並進出勤／工時記錄 | work package、實際出勤、加班與補正 | P0 / Accepted |
| WF-GAP-HLC05-002 | HLC05 | 技術、安全與進度衝突沒有唯一升級路徑 | Technical Hold、stop-work 與 delivery escalation 分流 | 觸發、即時措施、風險、升級、復工作業 | P0 / Accepted |
| WF-GAP-HLC06-001 | HLC06 | 兩條管理線可能各自給結果或重複處罰 | Delivery、Capability、Conduct 只作 inputs；校準後只留一份最終結果 | inputs、衝突檢查、校準、final result、申覆 | P0 / Accepted |
| WF-GAP-HLC06-002 | HLC06 | 試用、績效或 PIP 可能自動觸發終止 | HLC06 只能輸出評估；終止另開 HLC14 法律 gate | 工作要求、支持、陳述、保護期間與 legal review | P0 / Accepted |
| WF-GAP-HLC06-003 | HLC06 | 固定績效權重可能不適合不同角色並掩蓋平等風險 | canonical 不採固定比例；各角色方案須經治理核准 | role profile、metric rationale、calibration 與 bias review | P1 / Open |
| WF-GAP-HLC07-001 | HLC07 | 晉升、薪資、職級、職務及授權變更可能混成一份通知 | 分開決定物件，逐項判斷通知或雙方同意 | calibration、decision、notice／agreement、effective date | P0 / Accepted |
| WF-GAP-HLC08-001 | HLC08 | 調動、借調、臨時指派與永久變更欠缺 taxonomy | 明定 change type、期限、雇主、回復及五原則 gate | before／after、必要性、不利益、距離、家庭、勝任 | P0 / Accepted |
| WF-GAP-HLC08-002 | HLC08 | 改變地點、任務、設備或危害後未重算控制 | 只重跑受影響的能力、資格、健康、安全、權限與資料 gate | delta assessment、remediation、new assignment | P0 / Accepted |
| WF-GAP-HLC09-001 | HLC09 | 訓練完成、能力、資格與授權被視為同義 | 四個物件分開，依任務與到期日銜接 | requirement、attendance、assessment、credential、authorization | P0 / Accepted |
| WF-GAP-HLC09-002 | HLC09 | 一般或法定訓練可能被一律綁定服務年限及返還 | 只有符合法律 gate 的高額專門安排才建立獨立協議 | 成本、可攜性、補償、期間、遞減與例外 | P0 / Accepted |
| WF-GAP-HLC10-001 | HLC10 | 管理線、最高負責人或客戶涉案時內部處理有利益衝突 | intake 先做 conflict routing；法定時走地方主管機關或跨雇主路徑 | 行為人身分、迴避、外部受理、存取與通知 | P0 / Accepted |
| WF-GAP-HLC10-002 | HLC10 | 性騷擾、霸凌、職安與一般申訴可能被迫單選 | 允許多重分類與共用證據計畫，不重複詢問 | classification、申訴人意願、程序、findings、申復 | P0 / Accepted |
| WF-GAP-HLC10-003 | HLC10 | 報復可能透過績效、派任、權限或終止發生 | 案件與後續 HLC06–08、12–14 決定連動反報復檢查 | follow-up、adverse action、independent review | P0 / Open |
| WF-GAP-HLC11-001 | HLC11 | 留停、職災醫療、長病假或暫時措施會錯誤終止 active state | 採 overlay，分列工資、保險、提繳、權限、資產、聯絡與復職 | legal basis、起訖、各狀態、review date、return gate | P0 / Accepted |
| WF-GAP-HLC11-002 | HLC11 | 職災事件、醫療、補償、調查、復工與重建仍可能被合併 | 使用事件鏈與平行 work items；健康資料隔離 | 通報、醫療、保險、調查、調整、適任與復工 evidence | P0 / Open |
| WF-GAP-HLC12-001 | HLC12 | 專案結案可能自動被當作契約終止或低績效 | project release、Bench、再配置與終止審查分開 | release、結案評語、權限、Bench 任務、職缺搜尋 | P0 / Accepted |
| WF-GAP-HLC12-002 | HLC12 | Bench 可能變成停薪、強迫請假或無限期排除 | Bench 維持 active 勞動條件並設任務、review date 與再配置 owner | 工資、工時、任務、訓練、職缺與定期 review | P0 / Accepted |
| WF-GAP-HLC13-001 | HLC13 | 含糊談話、專案釋放或未到班可能被推定離職 | 要求可證明的終止意思表示並個案判斷爭議 | 表示、收受、年資、最後工作日與後續確認 | P0 / Accepted |
| WF-GAP-HLC14-001 | HLC14 | 資遣、解僱、退休、死亡與非僱傭結束共用單一路徑 | termination path taxonomy；每條路徑獨立 legal gate | 事由、保護期、安置、通知、給付、通報與核准 | P0 / Accepted |
| WF-GAP-HLC14-002 | HLC14 | 關係 ended 與所有 closeout 完成被綁在一起 | relationship transition 與平行 work items 分離 | final wage、severance、insurance、pension、asset、access、service、data | P0 / Accepted |
| WF-GAP-HLC14-003 | HLC14 | 終止撤回後原狀與補正無可執行資訊 | 保存 previous relationship／assignment／overlay snapshot 並逐項 restore | 工資、排班、投保、提繳、權限、通知與復原 evidence | P0 / Accepted |
| WF-GAP-CROSS-001 | 全部 | occurred、recorded、approved、notified、received、effective 時間被混用 | 所有 module／case／work item 採多時間欄位 | 原始事件、來源、每個時間戳與更正歷史 | P0 / Accepted |
| WF-GAP-CROSS-002 | 全部 | 具名 workforce 資料可能進入 Git 或跨系統過度共享 | Git 只存 schema；建立資料分類、system of record、access、retention 與 hold | data inventory、purpose、access、retention、disposition | P0 / Open |
| WF-GAP-CROSS-003 | 全部 | Candidate 文件被誤稱已核准模板或已完成法律遵循 | 所有 artifact 明示 Candidate、signature mode、legal status 與 approver | artifact register、版本、review、approval、effective date | P0 / Accepted |

## 導入優先順序

1. 取得公司 selectors：法人、人數、關係、工時、工會、工程、承攬、設備、危害及系統。
2. 指定 Employer、Delivery、CoE、Technical、Resource、HSE、Case、Privacy、Legal authorities。
3. 先實作 HLC00–02、HLC04–05、HLC10–12、HLC13–14 的高風險 gates。
4. 以 legal register 的 current evidence 校核；future-effective 另走 regulatory-change case。
5. 通過情境驗證後，才從 Candidate catalog 選擇垂直切片起草正式文件。
