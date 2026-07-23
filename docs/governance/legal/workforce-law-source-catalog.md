# Taiwan Workforce Law Source Catalog

> 狀態：Draft
> 法域：臺灣
> 查證基準日：2026-07-23
> 範圍：HLC workforce 的法規級官方來源路由；不是個案法律結論

本 catalog 回答「應檢查哪些官方法源」。只有 [Taiwan Workforce Legal Evidence Register](workforce-legal-evidence-register.md) 中的獨立 Evidence ID 能支持具體法律結論。

## 1. 結構化資料契約

```yaml
law_id:
name:
authority:
source_type: law | regulation | order | announcement | official-guidance
official_source:
status: current | future-effective | pending
promulgated_date:
amended_date:
effective_date:
future_effective_date:
transition_period:
applicability_trigger:
related_hlc:
related_relationships:
topics:
evidence_ids:
verified_at:
unresolved_questions:
```

日期欄位不得互相推定。法律、法規命令、公告與 guidance 必須分筆；同一法規有分期施行時，current 與 future-effective 要求必須建立不同 Evidence ID。

## 2. 共同核心法源

### 2.1 契約、勞動條件與爭議

| Law ID | 正式名稱／類型 | 官方來源 | 狀態 | 適用觸發 | HLC／Topic | Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| TW-LAW-CORE-001 | 民法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=B0000001) | current | Offer、契約成立、承攬、委任或意思表示效果 | HLC02、HLC24、HLC26／OFFER、REL | TW-WF-OFFER-P001 |
| TW-LAW-CORE-002 | 勞動基準法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0030001) | current；2024-07-31 修正 | 實質勞動契約且適用本法 | HLC00–HLC29／REL、CONTRACT、RECORD、WAGE、TIME、TRANSFER、TERM | 多筆 current evidence |
| TW-LAW-CORE-003 | 勞動基準法施行細則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/flaw/FLAWDAT01.aspx?id=FL014931) | current；2024-03-27 修正 | 勞基法授權事項 | HLC00–HLC29／CONTRACT、RECORD、WAGE、TIME | pending |
| TW-LAW-CORE-004 | 最低工資法／law | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT0202.aspx?id=FL102659) | current | 適用勞基法之勞工及工資 | HLC02、HLC10、HLC16、HLC21、HLC24–HLC27／WAGE | pending |
| TW-LAW-CORE-005 | 2026 年最低工資公告／announcement | [勞動部公告](https://laws.mol.gov.tw/FLAW/FLAWDOC03.aspx?datatype=etype&ecase=%E5%8B%9E%E5%8B%95%E6%A2%9D+2&ecode=N00000&edate=20251021&eno=1140148807) | current；2026-01-01 生效，月薪 29,500 元、時薪 196 元 | 計薪型態與最低工資法適用 | HLC02、HLC10、HLC16、HLC21、HLC24–HLC27／WAGE | pending independent evidence |
| TW-LAW-CORE-006 | 勞工請假規則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/flaw/FLAWDAT01.aspx?id=FL014935) | current；2026-01-01 施行版本 | 適用勞基法之勞工請假 | HLC10、HLC21–HLC22／LEAVE、TIME | pending |
| TW-LAW-CORE-007 | 勞資會議實施辦法／regulation | [勞動部法令系統](https://laws.mol.gov.tw/flaw/FLAWDAT0202.aspx?id=FL014925) | current | 事業單位、事業場所及代表制度 | HLC10、HLC16、HLC20、HLC25–HLC27／COLLECTIVE、TIME | TW-WF-COLLECTIVE-P001 |
| TW-LAW-CORE-008 | 大量解僱勞工保護法／law | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDOC01.aspx?flno=1&id=FL023225) | current | 事業規模、期間及解僱人數達門檻 | HLC25、HLC27／MASSLAYOFF | TW-WF-MASSLAYOFF-P001 |
| TW-LAW-CORE-009 | 勞資爭議處理法／law | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDOC01.aspx?flno=1&id=FL014924) | current | 權利或調整事項勞資爭議 | HLC18–HLC20、HLC24–HLC28／DISPUTE、COLLECTIVE | pending |
| TW-LAW-CORE-010 | 勞動事件法／law | [司法院勞動事件專區](https://www.judicial.gov.tw/tw/lp-1854-1.html) | current | 勞動事件進入法院程序 | HLC18–HLC20、HLC24–HLC28／DISPUTE、EVIDENCE | pending |

### 2.2 招募、平等、性騷擾與霸凌

| Law ID | 正式名稱／類型 | 官方來源 | 狀態 | 適用觸發 | HLC／Topic | Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| TW-LAW-CORE-011 | 就業服務法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0090001) | current；2025-01-20 修正 | 招募、僱用、就業服務或外國人 | HLC00–HLC02、HLC14–HLC16、HLC18–HLC20、HLC24–HLC29／RECRUIT、FOREIGN | TW-WF-RECRUIT-001–004 |
| TW-LAW-CORE-012 | 就業服務法施行細則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015133) | current | 就業服務法授權事項 | HLC00–HLC03／RECRUIT、FOREIGN | pending |
| TW-LAW-CORE-013 | 性別平等工作法／law | [勞動部法令系統](https://laws.mol.gov.tw/flaw/FLAWDAT01.aspx?id=FL015149) | current；2023-08-16 修正 | 求職者、受僱者、實習生、性騷擾或家庭責任事件 | HLC00–HLC01、HLC09–HLC10、HLC14–HLC16、HLC18–HLC22、HLC24–HLC27／EQUAL、HARASS、LEAVE | TW-WF-HARASS-002、TW-WF-LEAVE-001 |
| TW-LAW-CORE-014 | 性別平等工作法施行細則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDOC01.aspx?flno=2&id=FL015150) | current；2026-04-08 修正 | 性別平等工作法授權事項 | HLC00–HLC01、HLC09–HLC10、HLC14–HLC16、HLC18–HLC22、HLC24–HLC27／EQUAL、HARASS、LEAVE | pending |
| TW-LAW-CORE-015 | 工作場所性騷擾防治措施準則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015154) | current；2024-03-08 施行版本 | 僱用人數、工作場所、當事人身分與事件 | HLC00–HLC01、HLC04–HLC05、HLC08、HLC18–HLC20／HARASS | TW-WF-HARASS-001–002 |
| TW-LAW-CORE-016 | 職場霸凌防治措施準則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL106701) | current；2026-07-01 施行 | 知悉或受理疑似職場霸凌 | HLC05、HLC08、HLC11–HLC14、HLC18–HLC20、HLC23–HLC27／BULLY、RETAL | TW-WF-BULLY-001–002 |
| TW-LAW-CORE-017 | 身心障礙者權益保障法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=D0050046) | pending | 身心障礙求職者／受僱者或法定進用門檻 | HLC00–HLC29／EQUAL、ACCESSIBILITY | pending |
| TW-LAW-CORE-018 | 中高齡者及高齡者就業促進法／law | [勞動部法令系統](https://laws.mol.gov.tw/flaw/FLAWDAT0201.aspx?beginpos=1&id=FL092435) | current；2024-07-31 修正 | 中高齡或高齡求職者／受僱者 | HLC00–HLC29／EQUAL、RETIRE、REHIRE | pending |
| TW-LAW-CORE-019 | 原住民族工作權保障法／law | [原住民族委員會法規系統](https://law.cip.gov.tw/LawContent.aspx?id=FL002069&media=print) | pending | 特定機關、企業、政府採購或人數門檻 | HLC00–HLC29／EQUAL、PROCUREMENT | pending |

### 2.3 保險、退休與職災

| Law ID | 正式名稱／類型 | 官方來源 | 狀態 | 適用觸發 | HLC／Topic | Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| TW-LAW-CORE-020 | 勞工保險條例／law | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL014980) | current | 投保單位與被保險人資格 | HLC03–HLC04、HLC09、HLC21–HLC22、HLC24–HLC27／INS | pending |
| TW-LAW-CORE-021 | 就業保險法／law | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL023221) | current | 投保單位、被保險人、育嬰留停或非自願離職 | HLC03–HLC04、HLC09、HLC21–HLC22、HLC24–HLC27／INS、LEAVE、TERM | pending |
| TW-LAW-CORE-022 | 勞工職業災害保險及保護法／law | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL096423) | current；2022-05-01 施行 | 受僱、訓練、建教、自營或實際從事勞動等法定身分 | HLC00、HLC03–HLC05、HLC08–HLC13、HLC17–HLC23、HLC25–HLC27／INS、INJURY、REHAB | TW-WF-INS-001–002；其他章節 pending |
| TW-LAW-CORE-023 | 勞工退休金條例／law | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL030634) | current | 適用人員、雇主、工資、資遣或退休事件 | HLC03–HLC04、HLC09、HLC16、HLC21–HLC22、HLC24–HLC27／PENSION、SEVERANCE | TW-WF-PENSION-001–002、TW-WF-SEVERANCE-001 |
| TW-LAW-CORE-024 | 勞工退休金條例施行細則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT0201.aspx?id=FL033689&ldate=20260325) | current；另有 2026-08-01 future-effective 條文 | 到職、離職、復職、留停、工資異動或申報 | HLC04、HLC09、HLC16、HLC21–HLC22、HLC24–HLC27／PENSION | TW-WF-PENSION-002、TW-WF-FUTURE-PENSION-001 |
| TW-LAW-CORE-040 | 全民健康保險法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=L0060001) | current；2023-06-28 修正 | 國籍／居留、受僱、投保順序、投保單位、到職、退保原因及三日申報期間 | HLC03–HLC04、HLC09、HLC21–HLC22、HLC24–HLC27／NHI | TW-WF-NHI-001–002 |

### 2.4 職安、健康、營造與起重

| Law ID | 正式名稱／類型 | 官方來源 | 狀態 | 適用觸發 | HLC／Topic | Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| TW-LAW-CORE-025 | 職業安全衛生法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=N0060001)、[職安署施行說明](https://www.osha.gov.tw/48110/48713/207079/207115/207278/post) | current；2026-07-01 施行版本 | 工作者、工作場所、業主、事業單位、承攬或工作危害 | HLC00、HLC03–HLC05、HLC07–HLC13、HLC17–HLC23／OSH、BULLY | TW-WF-OSH-001–004、TW-WF-HEALTH-001 |
| TW-LAW-CORE-026 | 職業安全衛生法施行細則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/) | pending | 職安法定義與授權事項 | HLC00、HLC03–HLC05、HLC07–HLC13、HLC17–HLC23／OSH | pending direct page verification |
| TW-LAW-CORE-027 | 職業安全衛生設施規則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015021) | current；部分條文 future-effective 至 2027-01-01 | 設備、作業、危害與環境 | HLC00、HLC08、HLC12–HLC13、HLC17、HLC21–HLC23／OSH | TW-WF-FUTURE-OSH-001；詳細義務 pending |
| TW-LAW-CORE-028 | 職業安全衛生管理辦法／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015039) | current | 行業、規模、勞工人數與場所 | HLC00、HLC05、HLC08、HLC11–HLC13、HLC18–HLC23／OSH | pending |
| TW-LAW-CORE-029 | 職業安全衛生教育訓練規則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015022) | current；部分附表 future-effective 至 2027-01-01 | 職務、作業、機械設備與訓練類型 | HLC03、HLC06–HLC08、HLC12–HLC13、HLC17、HLC22／TRAIN、OSH | TW-WF-OSH-004、TW-WF-FUTURE-OSH-001 |
| TW-LAW-CORE-030 | 勞工健康保護規則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015038) | current；部分規定分期施行 | 僱用、人數、危害、健康檢查或健康服務 | HLC00、HLC03–HLC04、HLC08–HLC09、HLC13、HLC21–HLC22／HEALTH | TW-WF-HEALTH-001 |
| TW-LAW-CORE-031 | 營造安全衛生設施標準／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015026) | current；部分條文 future-effective 至 2027-07-01 | 營造工程與特定施工風險 | HLC00、HLC05、HLC08、HLC11–HLC13、HLC23／CONSTRUCTION、OSH | TW-WF-FUTURE-OSH-001；詳細義務 pending |
| TW-LAW-CORE-032 | 起重升降機具安全規則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL015025) | current | 起重升降機具、荷重、吊掛、操作或指揮 | HLC00、HLC03、HLC06–HLC08、HLC12–HLC13、HLC17、HLC22／LIFTING、QUALIFICATION | pending |
| TW-LAW-CORE-033 | 危險性機械及設備安全檢查規則／regulation | [勞動部法令系統](https://laws.mol.gov.tw/flaw/FLAWDAT01.aspx?id=FL015054) | pending | 機械／設備種類、容量、所有人與檢查狀態 | HLC00、HLC03、HLC07–HLC08、HLC12–HLC13、HLC17、HLC22／EQUIPMENT、INSPECTION | pending latest status |
| TW-LAW-CORE-034 | 專項危害法規組／regulation routing | [勞動部法令系統](https://laws.mol.gov.tw/) | pending | 缺氧、有機溶劑、粉塵、高架或其他特定危害 | HLC00、HLC03、HLC07–HLC08、HLC12–HLC13、HLC17、HLC22／HAZARD | 每部法規須分筆查證 |

### 2.5 個資、電子文件與營業秘密

| Law ID | 正式名稱／類型 | 官方來源 | 狀態 | 適用觸發 | HLC／Topic | Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| TW-LAW-CORE-035 | 個人資料保護法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021) | current；2025-11-11 修正中另有施行日待定條文 | 任何可識別 workforce 資料 | HLC00–HLC29／DATA | TW-WF-DATA-001–005、TW-WF-FUTURE-DATA-001 |
| TW-LAW-CORE-036 | 個人資料保護法施行細則／regulation | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050022) | current；2026-03-02 修正 | 個資法授權事項 | HLC00–HLC29／DATA | pending detailed evidence |
| TW-LAW-CORE-037 | 特定目的及個人資料類別／order | [個資主管機關法規系統](https://law.pdpc.gov.tw/LawContent.aspx?id=FL010631) | current | 資料盤點、目的與類別索引 | HLC00–HLC29／DATA | pending |
| TW-LAW-CORE-038 | 電子簽章法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=J0080037) | current；2024-05-15 修正 | 電子文件、電子簽章、書面或送達 | HLC00–HLC29／ESIGN、EVIDENCE | TW-WF-ESIGN-001 |
| TW-LAW-CORE-039 | 營業秘密法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=J0080028) | current；2020-01-15 修正 | 主張資訊為營業秘密或管理職務成果 | HLC02、HLC05、HLC08、HLC12、HLC23、HLC27–HLC28／TRADE、IP | TW-WF-TRADE-001 |

## 3. 關係與人口條件法源

| Law ID | 正式名稱／類型 | 官方來源 | 狀態 | 適用觸發 | HLC／Topic | Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| TW-LAW-REL-001 | 雇主聘僱外國人許可及管理辦法／regulation | [勞動部法令系統](https://laws.mol.gov.tw/FLAW/FLAWDAT01.aspx?id=FL028065) | current | 聘僱或管理外國人及其工作類別 | HLC00–HLC05、HLC08–HLC09、HLC21–HLC29／FOREIGN | TW-WF-FOREIGN-P001 |
| TW-LAW-REL-002 | 外國專業人才延攬及僱用法／law | [全國法規資料庫](https://law.moj.gov.tw/) | pending | 外國專業、特定專業或高級專業人才 | HLC00–HLC05、HLC08–HLC09、HLC21–HLC29／FOREIGN | TW-WF-FOREIGN-P001 |
| TW-LAW-REL-003 | 入出國及移民法／law | [移民署法規系統](https://law.immigration.gov.tw/) | pending | 居留、停留或身分影響工作資格 | HLC00–HLC05、HLC08–HLC09、HLC21–HLC29／FOREIGN | TW-WF-FOREIGN-P001 |
| TW-LAW-REL-004 | 部分時間工作勞工權益保障／official-guidance | [勞動部專區](https://www.mol.gov.tw/1607/28162/28166/28180/28182/) | pending | 約定部分工時 | HLC00–HLC29／REL、WAGE、TIME、INS、PENSION | 不取代法律 evidence |
| TW-LAW-REL-005 | 高級中等學校建教合作實施及建教生權益保障法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=H0060042) | pending | 建教合作與建教生事實 | HLC00–HLC15、HLC17–HLC20、HLC25／MINOR、EDUCATION | TW-WF-MINOR-P001 |
| TW-LAW-REL-006 | 兒童及少年福利與權益保障法／law | [全國法規資料庫](https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=D0050001) | pending | 未滿法定年齡或受限制工作者 | HLC00–HLC15、HLC17–HLC20、HLC25／MINOR、PROTECTION | TW-WF-MINOR-P001 |

## 4. 公司與工程 selector

| Selector ID | 必須取得的事實 | 影響法源／HLC | 未取得時的處理 |
| --- | --- | --- | --- |
| TW-SEL-ORG-001 | 法人、事業單位、場所、行業與員工人數 | 工作規則、性騷擾、霸凌、職安組織、健康服務／全 HLC | 保留 pending，不宣稱適用或免除 |
| TW-SEL-WORK-001 | 工時制度、班別、工會、團體協約與勞資會議 | 工時、請假、集體勞動／HLC10、HLC16、HLC20、HLC25–HLC27 | 不建立固定工作制度結論 |
| TW-SEL-PROJECT-001 | 業主、原事業單位、承攬層級、共同作業與政府採購 | 職安承攬、營造、採購／HLC00、HLC05、HLC08、HLC11–HLC13、HLC23 | 每案重算 applicability |
| TW-SEL-HAZARD-001 | 工地、工作包、任務、設備、物質、危害與資格 | 職安子法、健康、教育、檢查／HLC00、HLC03、HLC06–HLC08、HLC12–HLC13、HLC17、HLC22 | 未清查前不得派任受影響工作 |
| TW-SEL-POP-001 | 國籍、年齡、實習／建教、身心障礙及其他受保護身分 | 外國人、未成年、平等、進用／全 HLC | 最小化蒐集並分流法律審查 |
| TW-SEL-END-001 | 終止期間、人數、年資、退休制度與保護狀態 | 大量解僱、資遣、退休、保險／HLC25–HLC27 | 不選定 termination path 或金額 |

## 5. 維護規則

1. Catalog 新增法源不等於新增法律結論；必須再建 Evidence ID。
2. current、future-effective 與 pending 分開，不能用單一「最新」欄位覆蓋。
3. 每個 Evidence ID 應回填本表，並在 topic matrix 建立 HLC 路由。
4. 只有官方 guidance 可列入，且明確標示不具法條替代效果。
5. 公司 selector 改變時，重新執行 applicability review，不複製整份文件形成規則漂移。
