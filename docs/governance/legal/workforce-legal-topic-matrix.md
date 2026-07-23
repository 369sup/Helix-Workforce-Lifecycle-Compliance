# Taiwan Workforce Legal Topic Matrix

> 狀態：Draft
> 基準日：2026-07-23

本矩陣只回答法律議題應路由到哪些 HLC module、關係／事件物件與 Evidence family；不表示整部法律在所有標記模組都適用。

| Topic ID | 法律議題 | Primary HLC | 其他物件／觸發 | Evidence family | Review status |
| --- | --- | --- | --- | --- | --- |
| TOP-REL-001 | 勞動契約實質認定 | HLC00、HLC02、HLC05、HLC09、HLC23–HLC29 | relationship_type／reclassification | REL | current evidence |
| TOP-RECRUIT-001 | 就業歧視與職缺條件 | HLC00–HLC01、HLC14–HLC16、HLC18–HLC20、HLC24–HLC29 | recruitment／adverse decision | RECRUIT | current evidence |
| TOP-RECRUIT-002 | 招募隱私、證件、保證金與薪資揭示 | HLC00–HLC04 | candidate data／job posting | RECRUIT、DATA | current evidence |
| TOP-OFFER-001 | Offer、接受、撤回與契約成立 | HLC02 | offer event timeline | OFFER | pending case law review |
| TOP-CONTRACT-001 | 定期／不定期契約 | HLC00、HLC02、HLC23–HLC26 | work continuity／termination path | CONTRACT | current evidence |
| TOP-CONTRACT-002 | 競業、最低服務年限與保密 | HLC02、HLC17、HLC24、HLC28 | compensation／training／information | CONTRACT、TRADE | current + case review |
| TOP-START-001 | 契約開始、實際工作與行政完成 | HLC02–HLC04 | bitemporal events | TRIAL、RECORD、INS、PENSION | partial evidence |
| TOP-RECORD-001 | 名卡、工資清冊與出勤 | HLC04、HLC10、HLC16、HLC21–HLC22、HLC24–HLC28 | record class／five-year retention | RECORD | current evidence |
| TOP-WAGE-001 | 工資、扣除與最後工資 | HLC02–HLC04、HLC09–HLC10、HLC16、HLC21、HLC24–HLC27 | payroll work item | WAGE | current evidence |
| TOP-TIME-001 | 正常工時、排班與加班 | HLC04–HLC05、HLC08–HLC11、HLC21–HLC23 | assignment／attendance | TIME | current evidence |
| TOP-TRIAL-001 | 試用約定、延長、年資與不繼續 | HLC04、HLC15、HLC25、HLC27 | assessment／termination gate | TRIAL | current + case review |
| TOP-PERF-001 | 績效、改善、陳述與申覆 | HLC14–HLC16、HLC20、HLC25 | dual inputs／single result | TRIAL、TERM、DATA | partial evidence |
| TOP-TRANSFER-001 | 調動、派任、借調與工作變更 | HLC05、HLC09、HLC23 | assignment delta／family impact | TRANSFER | current evidence |
| TOP-TRAIN-001 | 訓練、能力、資格與授權 | HLC03、HLC06–HLC08、HLC12–HLC13、HLC17、HLC22 | task／hazard／expiry | OSH、CONTRACT | partial evidence |
| TOP-EQUAL-001 | 性別平等、家庭責任與育嬰留停 | HLC00–HLC01、HLC09–HLC10、HLC14–HLC16、HLC18–HLC22、HLC24–HLC27 | protected state／overlay | HARASS、LEAVE | partial evidence |
| TOP-HARASS-001 | 工作場所性騷擾 | HLC00–HLC01、HLC04–HLC05、HLC08、HLC18–HLC20 | case／headcount／cross-employer | HARASS | current evidence |
| TOP-BULLY-001 | 職場霸凌 | HLC05、HLC08、HLC11–HLC14、HLC18–HLC20、HLC23–HLC27 | case／highest responsible person | BULLY | current evidence from 2026-07-01 |
| TOP-RETAL-001 | 申訴、安全通報與禁止報復 | HLC10–HLC20、HLC23–HLC29 | case follow-up／adverse action | COMPLAINT、BULLY、OSH | current evidence |
| TOP-OSH-001 | 一般職安、教育及停止作業 | HLC00、HLC03–HLC05、HLC07–HLC13、HLC17–HLC23 | task／hazard／stop-work | OSH | current evidence |
| TOP-OSH-002 | 承攬、共同作業及工地控制 | HLC00、HLC05、HLC08、HLC11–HLC13、HLC23 | contractor level／site／work package | OSH、REL | current + applicability review |
| TOP-HEALTH-001 | 體格／健康檢查、職災與復工 | HLC00、HLC03–HLC04、HLC08–HLC09、HLC13、HLC21–HLC22、HLC25 | health overlay／case／sensitive data | HEALTH、OSH、DATA | partial evidence |
| TOP-INS-001 | 勞保、就保、職災保險與全民健康保險 | HLC03–HLC04、HLC09、HLC21–HLC22、HLC24–HLC27 | relationship／event date／國籍戶籍居留／主要工作 | INS、NHI | 職災保險與健保 current；勞保／就保 pending |
| TOP-PENSION-001 | 勞退提繳、異動與資遣費 | HLC03–HLC04、HLC09、HLC16、HLC21–HLC22、HLC24–HLC27 | wage／system type／event date | PENSION、SEVERANCE | current + future evidence |
| TOP-WORKRULE-001 | 工作規則、紀律與人數門檻 | HLC04、HLC10、HLC14、HLC16、HLC18–HLC20、HLC24–HLC27 | headcount／filing／publication | WORKRULE、TERM | partial evidence |
| TOP-END-001 | 自請離職、資遣、解僱、退休與保護期間 | HLC24–HLC27 | termination path／protected period | RESIGN、TERM、RETIRE | current evidence |
| TOP-END-002 | Closeout、服務證明與離職後義務 | HLC27–HLC28 | parallel work items／post-employment | WAGE、PENSION、SERVICE、DATA | partial evidence |
| TOP-DATA-001 | 個資告知、基礎、利用、安全與處置 | HLC00–HLC29 | data class／purpose／system／hold | DATA | current + future evidence |
| TOP-ESIGN-001 | 電子文件、簽章、送達與證據 | HLC00–HLC29 | execution_mode／special-law exclusion | ESIGN | current + case review |
| TOP-FOREIGN-001 | 外國人聘僱、許可、居留與申報 | HLC00–HLC05、HLC09、HLC21–HLC29 | nationality／work category／permit | FOREIGN | pending selectors |
| TOP-MINOR-001 | 未成年、實習、技術生與建教生 | HLC00–HLC15、HLC17–HLC20、HLC25 | age／education／work facts | MINOR | pending selectors |
| TOP-COLLECTIVE-001 | 工會、團體協約、勞資會議與大量解僱 | HLC10、HLC14、HLC16、HLC18–HLC20、HLC23–HLC27 | headcount／union／termination volume | COLLECTIVE、MASSLAYOFF | pending selectors |

## 覆蓋規則

- Primary HLC 不是順序，也不要求模組彼此轉換。
- `partial evidence` 表示已有部分獨立義務，不表示該 topic 已完整盤點。
- `pending selectors` 必須先取得公司／人員／事件事實，不能預設適用。
- 同一事件可同時命中多個 topic，例如客戶場所霸凌可同時命中 BULLY、HARASS、OSH、DATA、RETAL 與 REL。
