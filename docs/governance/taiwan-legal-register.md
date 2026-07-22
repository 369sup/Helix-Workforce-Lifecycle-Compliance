# Taiwan Workforce Legal Evidence Register

> 狀態：Draft
> 基準日：2026-07-23（Asia/Taipei）
> 範圍：臺灣 Helix workforce lifecycle 的官方法源查證；不是個案法律意見

本台帳把「法規名稱」轉成可被 HLC 模組引用的獨立法律要求。完整法規路由見 [Taiwan Workforce Law Catalog](taiwan-workforce-law-catalog.md)，議題覆蓋見 [Workforce Legal Topic Matrix](workforce-legal-topic-matrix.md)。

## 1. 證據契約

每個 Evidence ID 只承載一項要求，至少保存：適用 HLC、官方來源與條文、來源狀態、分類、結論、觸發條件、必要證據、控制影響及未決事項。

狀態只使用：

- `current`：基準日已施行；
- `future-effective`：已公布但尚未施行；
- `pending`：尚未完成逐條查證或須取得公司事實。

分類只使用：`依法必須`、`公司政策選擇`、`個案待法律審查`。官方 FAQ 或 guidance 只協助解釋，不取代法律或法規命令。

## 2. 已查證 Evidence

### 2.1 關係、招募與契約

| Evidence ID | HLC | 獨立要求與結論 | 官方來源／狀態 | 分類 | 觸發條件與必要證據 | 控制影響／未決事項 |
| --- | --- | --- | --- | --- | --- | --- |
| TW-WF-REL-001 | HLC00–HLC02、HLC08、HLC12–HLC14 | 是否為勞動契約須依從屬性與實際工作事實判斷，不得只看契約名稱。 | [勞基法第 2 條第 6 款](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)、[勞動契約認定指導原則](https://laws.mol.gov.tw/FLAW/FLAWDAT0202.aspx?id=FL092317)；`current` | 依法必須／個案待法律審查 | 觸發：任何受僱、顧問、承攬、派遣或實習安排。證據：工作指派、報酬、工時、工具、組織納入、考核與風險負擔事實。 | HLC00 必須完成關係初判並允許後續重分類；邊界個案送法律審查。 |
| TW-WF-REL-002 | HLC00–HLC02、HLC04–HLC05、HLC08 | 派遣勞工的雇主是派遣事業單位，要派單位是實際指揮監督其工作者；派遣契約應為不定期契約。 | [勞基法第 2 條第 7–10 款、第 9 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：透過派遣事業取得人力。證據：三方身分、派遣契約、指揮者、工作地點與期間。 | Helix assignment 不得錯列雇主；要派權限與雇主人事權須分離。 |
| TW-WF-REL-003 | HLC00、HLC04–HLC05、HLC08、HLC12 | 承攬與派遣須依自主完成工作或受要派單位指揮監督等事實辨識。 | [勞動部派遣與承攬區分行政指導](https://laws.mol.gov.tw/FLAW/FLAWDAT0202.aspx?id=FL092731)；`current` | 公司政策選擇／個案待法律審查 | 觸發：外包人員在公司或工地工作。證據：成果責任、指揮、排班、人員替代、工具與報酬風險。 | HLC04/05 出現實質直接指揮時，啟動關係重評，不得只補簽承攬文件。 |
| TW-WF-RECRUIT-001 | HLC00 | 雇主不得以就業服務法列舉特徵歧視求職人或員工。 | [就業服務法第 5 條第 1 項](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0090001)；`current` | 依法必須 | 觸發：職缺、篩選、面試、錄用與在職決定。證據：職務必要條件、評分準則、決定理由與覆核。 | 招募條件須能連回職務必要性；不得把受保護特徵寫入評分。 |
| TW-WF-RECRUIT-002 | HLC00 | 不得違反意思留置身分或工作證明文件，也不得要求非就業所需的隱私資料。 | [就業服務法第 5 條第 2 項第 2 款](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0090001)；`current` | 依法必須 | 觸發：招募或僱用資料蒐集。證據：欄位目的、必要性、告知版本、原件返還紀錄。 | Candidate 表單不得預設婚育、非必要健康、家庭或信用資料。 |
| TW-WF-RECRUIT-003 | HLC00 | 雇主不得扣留求職人或員工財物或收取保證金。 | [就業服務法第 5 條第 2 項第 3 款](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0090001)；`current` | 依法必須 | 觸發：招募、到職、設備領用。證據：無保證金設計、財物收付與返還紀錄。 | 資產風險應以領用、權限及追償程序處理，不得以押金替代。 |
| TW-WF-RECRUIT-004 | HLC00 | 職缺經常性薪資未達新臺幣四萬元時，須公開揭示或告知薪資範圍。 | [就業服務法第 5 條第 2 項第 6 款](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0090001)；`current` | 依法必須 | 觸發：對外提供該類職缺。證據：職缺版本、經常性薪資判斷與揭示畫面。 | HLC00 發布 gate 檢查薪資揭示；四萬元門檻不是最低工資。 |
| TW-WF-CONTRACT-001 | HLC00–HLC01、HLC12–HLC14 | 有繼續性工作原則上應為不定期契約；定期契約限臨時、短期、季節或特定性工作。 | [勞基法第 9 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須／個案待法律審查 | 觸發：擬採定期契約。證據：工作性質、期間、專案後是否持續、法定類型與審查理由。 | 「專案有期限」不能自動推導員工契約為定期。 |
| TW-WF-CONTRACT-002 | HLC01、HLC14 | 離職後競業禁止須同時符合正當營業利益、接觸營業秘密、合理範圍與合理補償，且最長二年。 | [勞基法第 9-1 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 公司政策選擇／個案待法律審查 | 觸發：擬要求離職後競業。證據：利益、接觸範圍、期間／區域／職業／對象、補償與簽署版本。 | 不得全員套用；HLC14 應追蹤補償與期限。 |
| TW-WF-CONTRACT-003 | HLC01、HLC09、HLC13–HLC14 | 最低服務年限須以雇主提供專業技術培訓並負擔費用，或提供合理補償為基礎，且約定須合理。 | [勞基法第 15-1 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 公司政策選擇／個案待法律審查 | 觸發：高額訓練或留任補償擬綁服務期。證據：實際成本、可攜性、合理期間、遞減及不可歸責例外。 | 法定或工作必要訓練不得自動轉成返還義務。 |
| TW-WF-TRIAL-001 | HLC01、HLC06 | 現行法令沒有獨立法定試用制度；是否約定及長度須按工作特性與合理性判斷。 | [勞動部試用期 FAQ](https://www.mol.gov.tw/1607/28162/28296/81778/81781/82213/post)；`current` | 公司政策選擇／個案待法律審查 | 觸發：擬約定試用。證據：工作特性、期間、目標、接受版本與開始事實。 | 試用是 HLC06 的可選評估事件，不是另一種關係狀態。 |
| TW-WF-TRIAL-002 | HLC02、HLC05–HLC06 | 試用期間已成立勞動關係，法定勞動權益不得降低。 | [勞基法第 1 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)、[勞動部試用期 FAQ](https://www.mol.gov.tw/1607/28162/28296/81778/81781/82213/post)；`current` | 依法必須 | 觸發：實際開始工作。證據：薪資、工時、出勤、投保、提繳與安全控制啟用日。 | HLC02 不得因 onboarding 未完或試用標籤延後法定控制。 |
| TW-WF-TRIAL-003 | HLC06 | 試用延長不是雇主當然單方權利，應保存原約定、延長理由、合理性及雙方合意。 | [勞動部試用期 FAQ](https://www.mol.gov.tw/1607/28162/28296/81778/81781/82213/post)；`current` | 公司政策選擇／個案待法律審查 | 觸發：原期限前提出延長。證據：未能評估原因、支持措施、延長期限、雙方表示。 | 逾期或未合意不得回溯補簽；是否可延長仍按個案審查。 |
| TW-WF-TRIAL-004 | HLC02、HLC06–HLC08、HLC13–HLC14 | 試用期間屬工作年資的一部分，不得在年資計算中排除。 | [勞基法第 84-2 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：計算年資相關權益。證據：實際開始日、連續服務與所有年資計算結果。 | HR system 不得於「轉正」日重設年資。 |
| TW-WF-TRIAL-005 | HLC06、HLC14 | 「試用未通過」不是獨立法定終止事由；終止仍須符合適用法定事由、程序與給付。 | [勞基法第 11–13、16–17 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)、[勞動部試用期 FAQ](https://www.mol.gov.tw/1607/28162/28296/81778/81781/82213/post)；`current` | 依法必須／個案待法律審查 | 觸發：試用結果擬不繼續僱用。證據：工作要求、評估事實、支持／安置、保護期間、法定事由、通知與給付。 | HLC06 只能送 HLC14 法律審查，不能直接把關係改為 ended。 |

### 2.2 工資、工時、紀錄、績效與異動

| Evidence ID | HLC | 獨立要求與結論 | 官方來源／狀態 | 分類 | 觸發條件與必要證據 | 控制影響／未決事項 |
| --- | --- | --- | --- | --- | --- | --- |
| TW-WF-RECORD-001 | HLC02–HLC14 | 雇主應置勞工名卡，記載法定人事事項並保存至離職後五年。 | [勞基法第 7 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：僱用勞工。證據：名卡欄位、建立日、異動歷史與保存期限。 | system of record 與離職後 disposition 須保留五年法定下限。 |
| TW-WF-RECORD-002 | HLC02、HLC05、HLC07–HLC08、HLC13–HLC14 | 雇主應提供工資各項目計算方式明細，工資清冊保存五年。 | [勞基法第 23 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：每次工資給付。證據：工資項目、計算、扣除、總額、明細交付與清冊。 | 薪資通知與清冊是 record，不以員工簽署取代正確計算。 |
| TW-WF-RECORD-003 | HLC02、HLC05、HLC08、HLC11、HLC13–HLC14 | 雇主應逐日記載勞工出勤至分鐘並保存五年，勞工申請副本不得拒絕。 | [勞基法第 30 條第 5–6 項](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：勞工提供工作。證據：逐日時間、修正軌跡、副本申請與交付。 | 專案工時表不得只記配置比例或天數。 |
| TW-WF-WAGE-001 | HLC01–HLC02、HLC05、HLC07–HLC08、HLC13–HLC14 | 工資應全額直接給付勞工，除法令另有規定或勞雇另有約定外不得片面扣款。 | [勞基法第 22 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：任何工資或扣除。證據：契約、工資計算、法源／約定、付款與異常補正。 | 資產未返還不得自動抵扣最後工資。 |
| TW-WF-WAGE-002 | HLC02、HLC05、HLC07–HLC08、HLC13–HLC14 | 雇主不得預扣工資作為違約金或賠償費用。 | [勞基法第 26 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：訓練返還、資產損害、違約或賠償主張。證據：獨立請求依據與未自工資預扣的付款紀錄。 | HLC09/14 候選文件不得授權概括薪資抵扣。 |
| TW-WF-TIME-001 | HLC02、HLC04–HLC05、HLC08、HLC11–HLC12 | 一般正常工作時間原則為每日八小時、每週四十小時；其他制度須符合其法定程序與條件。 | [勞基法第 30 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：排班、派任、輪班、Bench 或遠端工作。證據：適用制度、班表、同意／會議程序與工時紀錄。 | 專案時程、客戶要求或 CoE 活動不能另開未記錄工時。 |
| TW-WF-TIME-002 | HLC04–HLC05、HLC08 | 延長工時的工資須按勞基法法定標準計給。 | [勞基法第 24 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：實際延長工時。證據：實際時間、核准／補登、工資基數與加班費計算。 | 「未事前核准」不應被系統當作不記錄實際工時；個案給付仍按事實審查。 |
| TW-WF-TRANSFER-001 | HLC04、HLC08、HLC12 | 雇主調動勞工不得違反契約，並須符合經營必要、無不當動機、不利變更限制、勝任、必要協助及家庭生活利益等五原則。 | [勞基法第 10-1 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須／個案待法律審查 | 觸發：跨專案、職務、地點或班別調動。證據：前後條件、必要性、動機、勝任、距離協助、家庭影響與員工意見。 | Project Assignment Letter 不是單方不利變更工具；重大變更另判斷同意。 |
| TW-WF-WORKRULE-001 | HLC02、HLC05–HLC08、HLC10–HLC14 | 僱用勞工三十人以上的雇主應依勞基法規定訂立工作規則，報主管機關核備並公開揭示。 | [勞基法第 70 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：僱用人數達門檻。證據：人數基準、版本、核備、揭示與生效紀錄。 | 未取得公司人數前不得宣稱已適用或已完成；契約與專案規則不得取代工作規則。 |
| TW-WF-COMPLAINT-001 | HLC10、HLC13–HLC14 | 勞工得向雇主、主管機關或檢查機構申訴；雇主不得因申訴解僱、降調、減薪或為其他不利處分。 | [勞基法第 74 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：勞基法違反申訴。證據：受理時間、保密、案件存取、後續人事決定與反報復監控。 | HLC10 case 與 HLC06/07/08/14 決定必須做 retaliatory-effect check。 |

### 2.3 性騷擾、霸凌、職安、健康與資格

| Evidence ID | HLC | 獨立要求與結論 | 官方來源／狀態 | 分類 | 觸發條件與必要證據 | 控制影響／未決事項 |
| --- | --- | --- | --- | --- | --- | --- |
| TW-WF-HARASS-001 | HLC00、HLC02、HLC04–HLC05、HLC10 | 僱用十人以上未滿三十人者須設申訴管道並公開揭示；三十人以上者須訂定性騷擾防治措施、申訴及懲戒規範。 | [工作場所性騷擾防治措施準則第 2–3 條](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015154)；`current` | 依法必須 | 觸發：僱用人數達相應門檻。證據：人數、管道／規範、揭示、版本與教育對象。 | 未達十人仍不免除知悉事件後的法定處理義務；人數須依實際法定口徑確認。 |
| TW-WF-HARASS-002 | HLC10 | 雇主知悉工作場所性騷擾時應採立即有效之糾正及補救措施；案件須按法律與準則處理。 | [性別平等工作法第 13 條](https://laws.mol.gov.tw/flaw/FLAWDAT01.aspx?id=FL015149)、[防治措施準則](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015154)；`current` | 依法必須 | 觸發：接獲申訴或以其他方式知悉。證據：知悉日、保護措施、調查、迴避、決定、通知、申復與追蹤。 | 客戶、承攬商或不同雇主涉案須依身分與場所建立協作及外部路徑。 |
| TW-WF-BULLY-001 | HLC04–HLC05、HLC10 | 2026-07-01 起，無論事業單位規模，知悉或受理職場霸凌申訴時均須依法啟動防治機制。 | [職安署新制重點說明](https://www.osha.gov.tw/48110/48207/206868/206871/206925/)、[職場霸凌防治措施準則](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL106701)；`current` | 依法必須 | 觸發：知悉或受理疑似霸凌。證據：知悉日、受理、即時措施、協調意願、調查、迴避、決定、申復與反報復追蹤。 | HLC10 須依人數套用完整度；最高負責人涉案改走地方主管機關外部路徑。 |
| TW-WF-BULLY-002 | HLC10 | 同一事件同時涉及性騷擾時，雇主應依兩套程序辦理，並按申訴人意願併同調查訪談或釐清，避免重複詢問。 | [職場霸凌防治措施準則第 27 條](https://laws.mol.gov.tw/FLAW/PrintFLAWDOC01.aspx?flno=27&id=FL106701)；`current` | 依法必須 | 觸發：案件事實同時可能構成霸凌與性騷擾。證據：雙重分類、申訴人意願、共用證據計畫及程序結果。 | Case 不能強迫只能選一類；需隔離存取但避免重複傷害。 |
| TW-WF-OSH-001 | HLC00、HLC02、HLC04–HLC05、HLC08–HLC12 | 雇主對防止職業災害應提供必要安全衛生設備及措施；適用控制依工作、場所、危害、設備與角色決定。 | [職業安全衛生法](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0060001)；`current` | 依法必須 | 觸發：任何受職安法涵蓋的工作。證據：風險評估、作業控制、設備、防護、教育、檢查與改善。 | Lifecycle 文件不得取代施工計畫、危害告知、作業許可或現場控制。 |
| TW-WF-OSH-002 | HLC04–HLC05、HLC10–HLC11 | 工作有立即危險之虞時，勞工得在不危及他人安全下停止作業並退避，雇主不得因此解僱、調職、不給付停止期間工資或為其他不利處分。 | [職業安全衛生法第 18 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0060001)；`current` | 依法必須 | 觸發：工作者認知立即危險。證據：通報、停止時間、危害評估、改善、復工授權與不利處分檢查。 | Technical Hold 與 stop-work 可並行；安全通報不得被績效處罰。 |
| TW-WF-OSH-003 | HLC00、HLC04–HLC05、HLC12 | 事業交付承攬及共同作業時，須依職安法判斷危害告知、統合管理與承攬層級責任。 | [職業安全衛生法第 26–27 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0060001)；`current` | 依法必須／個案待法律審查 | 觸發：承攬、再承攬或共同作業。證據：契約層級、工作範圍、危害告知、協議組織、巡視、連繫與調整。 | 公司須先確認原事業單位／承攬角色；HLC04 只做進場 gate，不取代 operational control。 |
| TW-WF-OSH-004 | HLC02–HLC05、HLC08–HLC09 | 雇主對勞工應施以從事工作與預防災變所必要的安全衛生教育訓練；特殊作業另按子法判斷資格與時數。 | [職業安全衛生法第 32 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0060001)、[職業安全衛生教育訓練規則](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015022)；`current` | 依法必須 | 觸發：僱用、變更工作、特定職務／作業。證據：課程適用性、時數、講師、出席、測驗、證書與到期。 | 完成課程不等於取得公司／工地技術授權；HLC03、04、09 分別保存。 |
| TW-WF-HEALTH-001 | HLC00、HLC02、HLC04、HLC08–HLC09、HLC11 | 雇主應依職安法及勞工健康保護規則辦理適用的體格或健康檢查，特殊檢查依作業危害判斷。 | [職業安全衛生法第 20 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0060001)、[勞工健康保護規則](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015038)；`current` | 依法必須 | 觸發：僱用或在職且符合檢查條件。證據：作業分類、檢查類型、日期、合格醫療機構、費用、結果限制與追蹤。 | 健康資料須與一般人事資料分流；不必要診斷不得提供專案主管。 |

### 2.4 保險、退休、留停、終止與離職後

| Evidence ID | HLC | 獨立要求與結論 | 官方來源／狀態 | 分類 | 觸發條件與必要證據 | 控制影響／未決事項 |
| --- | --- | --- | --- | --- | --- | --- |
| TW-WF-INS-001 | HLC01–HLC02、HLC08、HLC11、HLC13–HLC14 | 年滿十五歲且受僱於領有執業證照、依法登記、設有稅籍或依法取得聘僱許可之雇主的勞工，應以雇主為投保單位參加勞工職業災害保險；法律另涵蓋特定未滿十五歲工作者、技術生、建教生及公告人口。 | [勞工職業災害保險及保護法第 6 條](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL096423)；`current` | 依法必須 | 觸發：符合第 6 條的受僱或準用人口。證據：雇主登記／許可、身分、到職、投保單位與加保資格。 | HLC01 clearance 先辨識人口；是否另適用勞保／就保須按各法分開判斷。 |
| TW-WF-INS-002 | HLC02、HLC08、HLC11、HLC13–HLC14 | 符合法定強制投保人口者，投保單位應於到職等法定當日辦理投保，離職等法定當日辦理退保；第 6 條勞工的保險效力原則自到職日起至離職日止。 | [勞工職業災害保險及保護法第 12–13 條](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL096423)；`current` | 依法必須 | 觸發：到職、離職或法定資格事件。證據：事件日、申報日、回執、保險效力起訖及補正。 | HLC02 依 actual start 啟動；HLC13/14 退保 work item 不得用行政完成日改寫關係事實。 |
| TW-WF-NHI-001 | HLC01–HLC02、HLC07–HLC08、HLC11、HLC13–HLC14 | 符合全民健康保險法第 8 條或第 9 條資格的公民營事業、機構或其他有一定雇主之受僱者，屬第一類被保險人；第一類被保險人以其服務事業、機構或雇主為投保單位。 | [全民健康保險法第 8–10、15 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=L0060001)；`current`；查證日 2026-07-23 | 依法必須 | 觸發：受僱且符合國籍、戶籍或居留資格。證據：國籍／居留、受僱事實、到職日、主要工作、投保分類及投保單位。 | 不能以眷屬身分或其他社會保險狀態直接推定健保分類；外國人及多重工作者須先判斷法定資格與投保順序。 |
| TW-WF-NHI-002 | HLC02、HLC07–HLC08、HLC11、HLC13–HLC14 | 投保單位應自保險對象合於投保條件之日起三日內辦理投保，並自退保原因發生之日起三日內辦理退保。 | [全民健康保險法第 15 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=L0060001)；`current`；查證日 2026-07-23 | 依法必須 | 觸發：到職、身分／主要工作變更、留停處理、復職、離職或其他退保原因。證據：事件日、投保／退保申報日、申報回執、眷屬異動及補正紀錄。 | HLC02、HLC11、HLC13/14 分別建立加保、留停／復職與退保 work item；行政申報日不得改寫實際關係事件日。 |
| TW-WF-PENSION-001 | HLC02、HLC05、HLC07–HLC08、HLC11、HLC13–HLC14 | 雇主應為適用勞工按月提繳不低於每月工資百分之六的勞工退休金。 | [勞工退休金條例第 14 條](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL030634)；`current` | 依法必須 | 觸發：適用勞退新制之勞動關係與工資。證據：資格、月提繳工資、比率、申報與繳款。 | HLC02 應以法定起始事實啟用，不得等 onboarding 完成。 |
| TW-WF-PENSION-002 | HLC02、HLC07–HLC08、HLC11、HLC13–HLC14 | 到職、離職、復職、留停或工資異動所生提繳申報，須依條例及施行細則的事件與期限辦理。 | [勞工退休金條例](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL030634)、[施行細則](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL033689)；`current`（第 21 條 2026-08-01 修正另見 Future） | 依法必須 | 觸發：相應人事事件。證據：事件日、申報日、提繳狀態與回執。 | 不能只靠關係狀態推定；每個事件建立獨立 work item。 |
| TW-WF-LEAVE-001 | HLC11 | 符合法定條件的受僱者得申請育嬰留職停薪，雇主不得拒絕法定權利或因申請為不利處分。 | [性別平等工作法](https://laws.mol.gov.tw/flaw/FLAWDAT01.aspx?id=FL015149)；`current` | 依法必須 | 觸發：合格申請。證據：申請、資格、起訖、保險／提繳處理、權限、復職與後續不利處分檢查。 | HLC11 是 active 關係上的 overlay，不建立新的雇主或中斷 lifecycle instance。 |
| TW-WF-RESIGN-001 | HLC13 | 不定期契約勞工終止契約時，預告期間依勞基法第 16 條規定準用。 | [勞基法第 15、16 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須／個案待法律審查 | 觸發：勞工自請離職。證據：意思表示、收受日、年資、最後工作日與雙方後續安排。 | 不得將專案釋放或口頭抱怨自動當成離職；爭議意思表示送個案審查。 |
| TW-WF-TERM-001 | HLC14 | 雇主依一般事由終止不定期契約，須符合勞基法第 11 條列舉事由。 | [勞基法第 11 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須／個案待法律審查 | 觸發：公司擬資遣或以不能勝任等理由終止。證據：法定事由事實、替代／安置、選擇標準與核准。 | Bench、專案結束或單一主管負評不是自動法定事由。 |
| TW-WF-TERM-002 | HLC10、HLC14 | 雇主不經預告終止須符合勞基法第 12 條列舉事由、情節與行使期間。 | [勞基法第 12 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須／個案待法律審查 | 觸發：擬懲戒解僱。證據：具體事實、規範版本、情節重大性、知悉日、陳述、比例與一致性。 | HLC10 調查結果不直接等於 HLC14 終止決定。 |
| TW-WF-TERM-003 | HLC06、HLC10–HLC11、HLC14 | 勞工在職災醫療期間，或女性勞工在法定停止工作期間，雇主原則上不得終止契約，除法律例外。 | [勞基法第 13 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須／個案待法律審查 | 觸發：任何雇主終止審查。證據：職災／停止工作狀態、期間、例外事實與主管機關核定。 | HLC14 必設 protected-period gate，不得由績效流程繞過。 |
| TW-WF-TERM-004 | HLC14 | 雇主依第 11 條或第 13 條但書終止時，預告期依年資為十、二十或三十日；未預告應給付預告期間工資。 | [勞基法第 16 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：適用的雇主終止。證據：年資、通知送達、終止日、謀職假及代通知金計算。 | HLC14 將通知與終止生效分開記錄。 |
| TW-WF-SEVERANCE-001 | HLC14 | 適用勞工退休金條例制度年資的資遣費，原則為每滿一年發給二分之一個月平均工資，未滿一年按比例，最高六個月，終止後三十日內給付。 | [勞工退休金條例第 12 條](https://laws.mol.gov.tw/FLAW/FLAWDOC01.aspx?flno=12&id=FL030634)；`current` | 依法必須 | 觸發：適用法定資遣路徑與該制度年資。證據：制度別、年資、平均工資、比例、上限與付款日。 | 依勞基法退休金制度保留的年資須另按勞基法第 17 條分算，不得混成單一公式。 |
| TW-WF-LEAVE-002 | HLC05、HLC07–HLC08、HLC13–HLC14 | 勞動契約終止時，未休完的法定特別休假日數，雇主應發給工資。 | [勞基法第 38 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：勞動契約終止且存在未休日數。證據：年資、年度、應休日、已休日、遞延、未休工資與付款。 | leave balance 是獨立 closeout work item，不與最後工資或資產返還互相抵銷。 |
| TW-WF-RETIRE-001 | HLC14 | 勞工符合勞基法第 53 條列舉的年齡與工作年資條件之一時，得自請退休。 | [勞基法第 53 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：勞工提出退休。證據：出生、工作年資、意思表示、制度別與生效日。 | HLC14 分開自請退休與自請離職；退休金制度與計算另按適用法律。 |
| TW-WF-RETIRE-002 | HLC14 | 雇主強制退休只限勞工年滿六十五歲或身心障礙不堪勝任工作等法定事由；年齡延後可由事業單位與工會或勞工協商，特殊工作降低年齡另有法定限制與核准。 | [勞基法第 54 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須／個案待法律審查 | 觸發：雇主擬強制退休。證據：法定事由、年齡／適任事實、協商或主管機關核准、決定與通知。 | 專案結案、組織調整或一般績效不屬當然強制退休事由。 |
| TW-WF-SERVICE-001 | HLC13–HLC14 | 勞動契約終止時，勞工請求服務證明書，雇主不得拒絕。 | [勞基法第 19 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001)；`current` | 依法必須 | 觸發：關係終止且勞工提出請求。證據：請求日、證明內容、核發日與交付。 | 服務證明不得以未交接、未返還資產或放棄權利為條件。 |

### 2.5 個資、電子文件與營業秘密

| Evidence ID | HLC | 獨立要求與結論 | 官方來源／狀態 | 分類 | 觸發條件與必要證據 | 控制影響／未決事項 |
| --- | --- | --- | --- | --- | --- | --- |
| TW-WF-DATA-001 | HLC00–HLC14 | 非公務機關向當事人蒐集個資時，應告知蒐集者、目的、類別、利用期間／地區／對象／方式、當事人權利及不提供之影響等法定事項。 | [個資法第 8 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021)；`current` | 依法必須 | 觸發：直接向求職者、員工或離職者蒐集個資。證據：告知版本、提供時間、資料來源、目的與欄位。 | 收受告知不等於同意；有其他法源時不得偽裝成自由同意。 |
| TW-WF-DATA-002 | HLC00–HLC02、HLC06、HLC09–HLC11、HLC14 | 病歷、醫療、基因、性生活、健康檢查及犯罪前科等特種個資原則不得蒐集、處理或利用，僅能落入法定例外。 | [個資法第 6 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021)；`current` | 依法必須／個案待法律審查 | 觸發：健康、背景、申訴、職災或調查資料。證據：資料類別、例外法源、目的、最小化、存取與保存。 | 健康與案件資料使用隔離 record store；專案主管只取得必要工作限制。 |
| TW-WF-DATA-003 | HLC00–HLC14 | 非公務機關蒐集或處理個資須有特定目的並符合個資法第 19 條所列基礎；利用原則上應在蒐集特定目的必要範圍。 | [個資法第 19、20 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021)；`current` | 依法必須／個案待法律審查 | 觸發：任何 workforce 個資處理或新用途。證據：目的、法律基礎、必要性、利用對象、跨系統流向與例外。 | 不得因為資料已在 HR 系統就供所有 Helix 角色使用。 |
| TW-WF-DATA-004 | HLC00–HLC14 | 特定目的消失或期限屆滿時，原則上應刪除、停止處理或利用；當事人亦有法定查詢、更正、停止與刪除權。 | [個資法第 3、11 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021)；`current` | 依法必須 | 觸發：目的消失、期限屆滿或權利請求。證據：record class、法定保存、legal hold、決定、處置與通知。 | 法定人事／工資／出勤五年保存優先，但不得推導所有資料永久保存。 |
| TW-WF-DATA-005 | HLC00–HLC14 | 非公務機關應採適當安全措施，違反個資法致個資被竊取、洩漏、竄改或其他侵害時，依現行法辦理查明後通知當事人。 | [個資法第 12、27 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021)；`current` | 依法必須 | 觸發：持有個資或發生疑似侵害。證據：安全措施、事件時間軸、影響資料、查明、通知與改善。 | 2025 修法新增制度不得在施行日前誤列 current，見 Future Evidence。 |
| TW-WF-ESIGN-001 | HLC00–HLC14 | 符合電子簽章法的電子文件及電子簽章，不得僅因電子形式而否認其效力；但特別法、主管機關公告與當事人約定仍須逐案確認。 | [電子簽章法](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=J0080037)；`current` | 公司政策選擇／個案待法律審查 | 觸發：以電子方式完成書面、簽署、通知或送達。證據：簽署人識別、意圖、版本、時間、完整性、交付與排除公告查核。 | `已讀`、`知悉`、`同意`、雙方簽署及法定書面同意須用不同 evidence type。 |
| TW-WF-TRADE-001 | HLC01–HLC05、HLC09、HLC12–HLC14 | 資訊須同時具非一般知悉、秘密經濟價值及所有人已採合理保密措施，才符合營業秘密法定義。 | [營業秘密法第 2 條](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=J0080028)；`current` | 依法必須／公司政策選擇 | 觸發：主張資訊為營業秘密或要求相關義務。證據：資訊清冊、價值、知悉範圍、分類、權限與合理保密措施。 | 單靠全員 NDA 標籤不足以證明營業秘密；離場須按實際資料與權限回收。 |

## 3. Future-effective Evidence

| Evidence ID | HLC | 已公布事項 | 官方來源／狀態 | 導入規則 |
| --- | --- | --- | --- | --- |
| TW-WF-FUTURE-DATA-001 | HLC00–HLC14 | 2025-11-11 公布的個資法部分修正條文，法規資料庫標示施行日由行政院定之；不得在施行前當作現行義務。 | [個資法沿革與附註](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021)；`future-effective`（施行日待定） | Regulatory-change case 追蹤施行命令、差異分析、程序與系統改版；正式施行前保留現行 TW-WF-DATA-005。 |
| TW-WF-FUTURE-PENSION-001 | HLC02、HLC07–HLC08、HLC11、HLC13–HLC14 | 2026-03-25 修正的勞工退休金條例施行細則第 21 條自 2026-08-01 施行。 | [勞退條例施行細則](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL033689&ldate=20260325)；`future-effective` | 依條文差異更新申報 work item 與生效日；2026-07-31 前仍按當時有效版本執行。 |
| TW-WF-FUTURE-OSH-001 | HLC04–HLC05、HLC09 | 2026 年修正的部分職安子法含 2027 年分期施行條文。 | [職安署修法配套與分階段施行說明](https://www.osha.gov.tw/48110/48713/207079/207115/207278/post)；`future-effective` | 不在本台帳合併推定；依設備、作業與條文逐項建立 regulatory-change case。 |

## 4. Pending Evidence

| Pending ID | HLC | 議題 | 尚缺事實或查證 |
| --- | --- | --- | --- |
| TW-WF-OFFER-P001 | HLC01 | Offer 發出、撤回、附條件接受、電子接受與契約成立時點 | 須依實際文字、往來與民法要約承諾規則個案審查；不得由流程模型預設法律效果。 |
| TW-WF-FOREIGN-P001 | HLC00–HLC02、HLC04、HLC08、HLC11–HLC14 | 外國人工作許可、居留與雇主申報 | 尚未取得國籍、工作類別、許可類型、雇主、地點與期間。 |
| TW-WF-MINOR-P001 | HLC00–HLC05、HLC08–HLC09 | 未成年、技術生、實習生與建教生 | 身分、年齡、教育安排、是否提供勞務及工作危害未知，須分法律制度。 |
| TW-WF-MASSLAYOFF-P001 | HLC12、HLC14 | 大量解僱 | 尚未取得公司／事業單位人數、期間與預計終止人數，不能判定門檻。 |
| TW-WF-COLLECTIVE-P001 | HLC05、HLC07–HLC08、HLC10–HLC14 | 工會、團體協約、勞資會議與集體爭議 | 尚未取得工會、團體協約、勞資會議及工時制度事實。 |

## 5. 使用限制

1. Evidence ID 只證明所列要求，不證明整部法律均已盤點完成。
2. HLC 模組不得直接把 `pending` 轉成公司義務或員工承諾。
3. 人數、行業、工程、工作者身分、危害與事件日期是適用性 selector；未取得時保留 unresolved。
4. 公司正式發布契約、工作規則、競業、最低服務年限、終止或案件決定前，仍須由臺灣勞動法務及相應專業 owner 依個案覆核。
