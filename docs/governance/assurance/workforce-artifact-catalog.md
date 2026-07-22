# Helix Workforce Artifact Catalog

> 狀態：Draft / Candidate inventory
> 建立日：2026-07-23
> Canonical modules：[Helix Workforce Lifecycle Model](../models/workforce-lifecycle-model.md)

> [!IMPORTANT]
> 本 catalog 保存候選 artifact 與簽署語意，不表示每家公司、每位人員或每個專案都必須建立或簽署全部項目。正式啟用前須完成適用性、法律 evidence、Owner、版本、系統及個案文字審查。

依 HLC 整理的文件 package 見 [HLC Module Index](../../modules/README.md)；公司級共同文件見 [Enterprise Governance Artifacts](../../enterprise/README.md)，共用簽署與版本規則見 [Artifact Governance](../../shared/artifact-governance.md)。

## 1. Artifact Contract

```yaml
artifact_id:
title:
hlc_ids:
relationship_types:
artifact_type: policy | standard | procedure | plan | agreement | notice | form | checklist | record | register | authorization | case-record
purpose:
signature_mode: no-signature | delivery-receipt | acknowledgement | consent | bilateral-signature | authority-approval | external-filing
parties_or_roles:
trigger:
owner_role:
approver_role:
evidence_output:
legal_evidence_ids:
legal_status: 依法必須 | 公司政策選擇 | 個案待法律審查 | mixed | pending-verification
template_status: Candidate
```

`acknowledgement` 只證明知悉或收受；`consent` 才表示特定同意；`bilateral-signature` 用於雙方約定。法律要求取決於內容與事實，不能只看 artifact 名稱。

## 2. Organization and Enterprise Governance

| Artifact ID | HLC | Candidate Artifact | Relationship | Type / Signature | Trigger / Purpose | Owner / Approver | Evidence / Legal Status | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-GOV-001 | All | Helix 組織章程 | 全部 | standard / authority-approval | 定義 Employer、Delivery、CoE、Technical Authority、Resource 與 Shared Platform 邊界 | Corporate Governance / Employer Authority | 公司政策選擇 | Candidate |
| HX-ART-GOV-002 | All | 決策權與授權矩陣 | 全部 | register / authority-approval | 為每項決定指定單一 accountable role、代理與期限 | Corporate Governance / Employer Authority | 公司政策選擇；不得降低法定權限 | Candidate |
| HX-ART-GOV-003 | HLC03–HLC05 | 技術治理與 Technical Hold Standard | 全部 | standard / authority-approval | 管理標準、偏離、技術否決、升級與解除 | Technical Authority / Corporate Authority | OSH／專業資格 evidence；其餘公司政策 | Candidate |
| HX-ART-GOV-004 | HLC04、HLC08、HLC12 | 資源配置與衝突升級 Procedure | 全部 | procedure / authority-approval | 管理多專案容量、priority owner、釋放、Bench 與再配置 | Resource Governance / Employer Authority | TRANSFER evidence；其餘公司政策 | Candidate |
| HX-ART-GOV-005 | HLC04–HLC05 | Shared Engineering Platform Service Standard | 全部 | standard / authority-approval | 管理 BIM、文件、資料、元件庫、估算、排程與品質平台，不取得人事指揮權 | Platform Owner / Corporate Authority | DATA、TRADE evidence；其餘公司政策 | Candidate |
| HX-ART-GOV-006 | HLC10 | 申訴、調查、性騷擾、霸凌與禁止報復制度組 | 依適用人口 | policy / authority-approval | 建立多通路、迴避、保密、外部路徑與案件處理 | HR／Compliance／HSE / Employer Authority | HARASS、BULLY、COMPLAINT、DATA evidence | Candidate |

## 3. HLC00–HLC02：規劃、招募、契約與開始

| Artifact ID | HLC | Candidate Artifact | Relationship | Type / Signature | Trigger / Purpose | Owner / Approver | Evidence / Legal Status | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC00-001 | HLC00 | 人力／用工需求申請 | 全部 | form / authority-approval | 記錄永久能力或專案需求、預算、期間與不採內部配置理由 | Business／Resource / Budget Authority | 公司政策選擇 | Candidate |
| HX-ART-HLC00-002 | HLC00 | 職務／工作範圍說明 | 全部 | record / authority-approval | 定義工作、地點、工時、危害、資格、CoE 與甄選標準 | Hiring Owner／CoE / Employer Authority | RECRUIT、OSH evidence；mixed | Candidate |
| HX-ART-HLC00-003 | HLC00 | 用工關係初評 | 全部 | checklist / authority-approval | 比較直聘、派遣、承攬、顧問、實習及定期契約 gate | HR／Procurement / Legal／Employer Authority | REL、CONTRACT evidence；個案待法律審查 | Candidate |
| HX-ART-HLC00-004 | HLC00 | 職位風險、健康與資格需求矩陣 | 全部 | register / authority-approval | 招募前定位法定／工作必要資格與不可豁免 gate | CoE／HSE / Technical／HSE Authority | OSH、HEALTH evidence；pending by task | Candidate |
| HX-ART-HLC00-005 | HLC00 | 招募個資告知與候選資料處理規則 | 求職者 | notice / delivery-receipt | 蒐集候選資料前告知目的、類別、利用、權利與結案處置 | Recruitment／Privacy / Data Authority | TW-WF-DATA-001–004 | Candidate |
| HX-ART-HLC00-006 | HLC00 | 面試／甄選與利益衝突紀錄 | 求職者 | record / no-signature | 保存一致標準、職務必要性、評選與迴避 | Recruitment / Hiring Approver | TW-WF-RECRUIT-001–003 | Candidate |
| HX-ART-HLC01-001 | HLC01 | 錄取通知書／合作提案 | 依關係分支 | notice / delivery-receipt | 提供版本、有效期、條件、接受方式及先決條件 | HR／Procurement / Employer Authority | TW-WF-OFFER-P001；個案待法律審查 | Candidate |
| HX-ART-HLC01-002 | HLC01 | 勞動契約／服務協議 | 依關係分支 | agreement / bilateral-signature | 記錄實際關係、工作／服務、報酬、地點、工時、開始及終止 | HR／Procurement / Employer／Contract Authority | REL、CONTRACT evidence；個案待法律審查 | Candidate |
| HX-ART-HLC01-003 | HLC01 | 個別勞動條件明細 | 受僱者 | notice or agreement / delivery-receipt or bilateral-signature | 分開工資、津貼、工時、發薪、地點與個別條件 | HR／Payroll / Employer Authority | WAGE、TIME、TRANSFER evidence；mixed | Candidate |
| HX-ART-HLC01-004 | HLC01 | 試用目標與期間約定 | 約定試用受僱者 | agreement / bilateral-signature | 在開始前說明合理目標、期間、支持與評核點 | Hiring／Performance / Employer Authority | TW-WF-TRIAL-001–003 | Candidate |
| HX-ART-HLC01-005 | HLC01 | 保密、營業秘密與職務成果約定 | 依職務 | agreement / bilateral-signature | 依資訊與成果範圍建立義務；不得過度擴張 | Legal／IP / Employer Authority | TRADE／IP evidence；個案待法律審查 | Candidate |
| HX-ART-HLC01-006 | HLC01 | 離職後競業禁止協議 | 僅符合 gate 的受僱者 | agreement / bilateral-signature | 個別記錄利益、職務、期間、區域、活動、對象與補償 | Legal／HR / Employer Authority | TW-WF-CONTRACT-002；個案待法律審查 | Candidate |
| HX-ART-HLC01-007 | HLC01、HLC09 | 最低服務年限協議 | 僅符合 gate 的受僱者 | agreement / bilateral-signature | 記錄專業技術培訓／合理補償、成本、期間與不可歸責例外 | HR／Training／Legal / Employer Authority | TW-WF-CONTRACT-003；個案待法律審查 | Candidate |
| HX-ART-HLC01-008 | HLC01 | Offer／提案結果與開始前 Clearance Register | 全部 | register / authority-approval | 分開接受、失效、contract、identity、eligibility、insurance、pension、fitness、qualification、site 與 data gate | HR／Procurement / Relationship Authority | OFFER、REL、INS、NHI、PENSION、OSH、DATA evidence | Candidate |
| HX-ART-HLC02-001 | HLC02 | 到職／進場 Onboarding Work-item Register | 全部 | register / authority-approval | 管理開始日期、名卡、保險、退休、資產、帳號、訓練、告知及 blocker | HR／Site / Employer Authority | RECORD、INS、NHI、PENSION、OSH evidence | Candidate |
| HX-ART-HLC02-002 | HLC02 | 員工基本資料與緊急聯絡資料 | 受僱者 | form / no-signature | 建立必要人事及緊急資料；分流敏感資料 | HR / Data Authority | TW-WF-RECORD-001、TW-WF-DATA-001–004 | Candidate |
| HX-ART-HLC02-003 | HLC02 | 工作規則／政策收受紀錄 | 受僱者 | record / acknowledgement | 證明提供版本與取得方式，不推定同意不利變更 | HR / Employer Authority | WORKRULE evidence；mixed | Candidate |
| HX-ART-HLC02-004 | HLC02 | 資產、防護具與帳號領用／授權 | 依工作 | record / acknowledgement | 保存資產、用途、權限、限制與返還責任 | IT／Asset／HSE / Respective Authority | OSH、DATA evidence；mixed | Candidate |
| HX-ART-HLC02-005 | HLC02 | 初始 Helix Role Assignment | 全部 | authorization / authority-approval | 指定 Employer、CoE、People、Delivery、Priority、Technical、Resource 與 HSE roles | HR／Resource / Employer Authority | 公司政策選擇；不得取代法律 gate | Candidate |

## 4. HLC03–HLC09：能力、派任、交付、績效與發展

| Artifact ID | HLC | Candidate Artifact | Relationship | Type / Signature | Trigger / Purpose | Owner / Approver | Evidence / Legal Status | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC03-001 | HLC03 | Competency Matrix 與初始／定期能力評估 | 全部 | register / authority-approval | 分級能力、經驗、限制與複核，不由職稱自動推導 | CoE / Capability Authority | 公司政策選擇；法定資格另依 OSH evidence | Candidate |
| HX-ART-HLC03-002 | HLC03 | 專業職級評定 | 受僱者 | record / authority-approval | 公司職級與專案角色、技術授權分離 | CoE／HR / Grade Authority | 公司政策選擇 | Candidate |
| HX-ART-HLC03-003 | HLC03 | 技術／設計審查授權與簽核權限表 | 依任務 | authorization / authority-approval | 記錄授權範圍、資格、期限、限制及代理 | Technical Authority / Authorization Authority | OSH／專業資格 evidence；mixed | Candidate |
| HX-ART-HLC03-004 | HLC03 | 技術授權暫停、撤銷與回復紀錄 | 依任務 | record / delivery-receipt | 停止未授權工作並保存原因、影響、回復 gate | Technical／HSE / Authorization Authority | OSH evidence；mixed | Candidate |
| HX-ART-HLC04-001 | HLC04 | Project Assignment Letter | 全部 | authorization / acknowledgement | 記錄專案角色、比例、起訖、地點、priority owner、技術／安全 authority 與結束安排 | Resource／HR / Employer／Project Authority | TRANSFER、TIME、OSH evidence；mixed | Candidate |
| HX-ART-HLC04-002 | HLC04 | Project Role、Organization、RACI／Decision Rights | 全部 | plan / authority-approval | 定義交付介面與唯一決策者 | Project Governance / Project Authority | 公司政策選擇 | Candidate |
| HX-ART-HLC04-003 | HLC04 | Site Mobilization／Hazard／Qualification Clearance | 現場工作者 | checklist / authority-approval | 驗證工地、危害告知、訓練、資格、設備與作業許可 | Site／HSE／Contractor / HSE Authority | OSH／contractor evidence；依工地事實 | Candidate |
| HX-ART-HLC04-004 | HLC04 | 專案津貼、住宿、交通、輪班與外派條件 | 受影響人員 | notice or agreement / delivery-receipt or bilateral-signature | 分開公司標準、個別條件與重大變更同意 | HR／Project / Employer Authority | WAGE、TIME、TRANSFER evidence；mixed | Candidate |
| HX-ART-HLC04-005 | HLC04 | 客戶資料、系統、保密與利益衝突授權 | 依專案 | authorization / acknowledgement | 控制客戶／專案資料與利益衝突 | Project／Data／Compliance / Data Authority | DATA、TRADE evidence；mixed | Candidate |
| HX-ART-HLC05-001 | HLC05 | Work Package／工作分派與優先順序紀錄 | 全部 | record / no-signature | 記錄已核准 assignment 內工作、owner、期限與介面 | Work Priority Owner | 公司政策選擇；受工時／安全限制 | Candidate |
| HX-ART-HLC05-002 | HLC05 | 出勤、輪班、請假與加班紀錄 | 受僱者 | record / authority-approval | 保存實際時間、申請、核准與工資計算輸入 | Delivery／HR／Payroll / Time Authority | TIME、WAGE、LEAVE evidence | Candidate |
| HX-ART-HLC05-003 | HLC05 | Design Review、TQ、Deviation／Waiver 與 Technical Hold | 依任務 | record / authority-approval | 保存技術審查、正式偏離、hold、升級與解除 | Technical Authority / Authorization Authority | OSH／專業資格 evidence；mixed | Candidate |
| HX-ART-HLC05-004 | HLC05 | Quality NCR、HSE Inspection 與 Incident Record | 依工作 | record / authority-approval | 保存缺失、即時措施、責任、矯正及法定通報判斷 | Quality／HSE / Respective Authority | OSH、INJURY evidence | Candidate |
| HX-ART-HLC05-005 | HLC05 | Resource Conflict Escalation | 多專案人員 | record / authority-approval | 避免 Delivery／CoE／多專案直接競逐時間 | Resource Governance / Resource Authority | 公司政策選擇；TIME gate | Candidate |
| HX-ART-HLC06-001 | HLC06 | 年度／試用／專案目標版本 | 受僱者或合作評估分支 | plan / acknowledgement | 保存事前目標、期間、資源與評估角色 | Performance Owner / Performance Authority | TRIAL／PERF evidence；mixed | Candidate |
| HX-ART-HLC06-002 | HLC06 | Delivery、Capability 與 Conduct 評估 Inputs | 受僱者 | record / no-signature | 分開兩線輸入與事實，不直接形成處分 | Delivery／CoE／Compliance | EQUAL、PERF、DATA evidence；mixed | Candidate |
| HX-ART-HLC06-003 | HLC06 | 績效校準與單一最終結果 | 受僱者 | record / authority-approval | 去除重複處罰、衝突與不一致，形成一份結果 | Performance Governance / Performance Authority | PERF／EQUAL evidence；mixed | Candidate |
| HX-ART-HLC06-004 | HLC06 | Performance Improvement Plan 與員工陳述／申覆 | 受僱者 | plan / acknowledgement | 記錄標準、事實、支持、期間、回饋與 review | Manager／HR / Performance Authority | 個案待法律審查；TERM evidence | Candidate |
| HX-ART-HLC06-005 | HLC06 | 試用合意延長／持續關係通知 | 約定試用受僱者 | agreement or notice / bilateral-signature or delivery-receipt | 分開延長合意與通過後通知 | HR／Performance / Employer Authority | TW-WF-TRIAL-003–005 | Candidate |
| HX-ART-HLC07-001 | HLC07 | 晉升／職級／薪酬評審與校準 | 受僱者 | record / authority-approval | 保存標準、跨專案證據、平等與薪酬校準 | CoE／HR / Promotion／Compensation Authority | WAGE／EQUAL evidence；mixed | Candidate |
| HX-ART-HLC07-002 | HLC07 | 職級、薪資、職務或授權變更通知／協議 | 受僱者 | notice or agreement / delivery-receipt or bilateral-signature | 依是否變更契約條件選擇簽署語意 | HR／CoE / Employer Authority | CONTRACT、WAGE、TRANSFER、INS、NHI、PENSION evidence；mixed | Candidate |
| HX-ART-HLC08-001 | HLC08 | 調動／借調／工作變更評估 | 受僱者 | checklist / authority-approval | 檢查必要性、不利益、能力、距離、家庭、期限、回復與控制重算 | HR／Resource / Employer Authority | TW-WF-TRANSFER-001；個案待法律審查 | Candidate |
| HX-ART-HLC08-002 | HLC08 | 員工意見、條件差異與變更協議／通知 | 受僱者 | record or agreement / acknowledgement or bilateral-signature | 保存 before／after、意見、同意需求與 effective date | HR / Employer Authority | TRANSFER／CONTRACT evidence；mixed | Candidate |
| HX-ART-HLC08-003 | HLC08 | 原派任交接、權限異動與新 Assignment | 全部 | work-item register / authority-approval | 平行完成交接、資格／安全重算及新指派 | Resource／IT／Site / Respective Authority | INS、NHI、PENSION、OSH、DATA evidence；mixed | Candidate |
| HX-ART-HLC09-001 | HLC09 | Training Requirement／Annual Development Plan | 全部 | plan / authority-approval | 分類法定、工作必要、一般發展及高額專門訓練 | CoE／HSE / Training Authority | TRAIN、OSH evidence；mixed | Candidate |
| HX-ART-HLC09-002 | HLC09 | 訓練申請、費用、出勤、測驗與資格紀錄 | 全部 | record / authority-approval | 保存費用、工作時間、完成、能力、資格及到期 | Training／CoE／HSE | TRAIN、TIME、OSH evidence | Candidate |
| HX-ART-HLC09-003 | HLC09 | 證照取得、使用、續證、暫停與撤銷 Register | 依任務 | register / authority-approval | 管理法定／專業資格、使用範圍及到期 | CoE／HSE / Authorization Authority | OSH／專業資格 evidence；依任務 | Candidate |

## 5. HLC10–HLC14：案件、暫停、專案釋放與關係結束

| Artifact ID | HLC | Candidate Artifact | Relationship | Type / Signature | Trigger / Purpose | Owner / Approver | Evidence / Legal Status | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HX-ART-HLC10-001 | HLC10 | 多通路申訴／通報 Intake 與 Conflict Check | 求職者與 workforce | case-record / no-signature | 保存受理、緊急性、保密、被申訴人與替代路徑 | Independent Case Owner | COMPLAINT、HARASS、BULLY、OSH evidence | Candidate |
| HX-ART-HLC10-002 | HLC10 | 調查通知、訪談、證據清冊與迴避紀錄 | 案件當事人 | case-record / acknowledgement | 保存 scope、程序、陳述、證據與存取 | Investigator / Case Authority | HARASS、BULLY、DATA evidence；mixed | Candidate |
| HX-ART-HLC10-003 | HLC10 | 調查 Findings、處理／懲戒與申復決定 | 案件當事人 | case-record / authority-approval | 分開事實認定、法律／工作規則、比例、決定與通知 | Decision Authority | DISCIPLINE、HARASS、BULLY evidence；個案審查 | Candidate |
| HX-ART-HLC10-004 | HLC10 | Interim Measures 與 Anti-retaliation Follow-up | 案件當事人 | plan / authority-approval | 管理接觸、工作、安全、權限與報復監控，不預判結果 | Case／HR／HSE / Case Authority | COMPLAINT、HARASS、BULLY、OSH evidence | Candidate |
| HX-ART-HLC11-001 | HLC11 | Suspension Overlay Request／Decision | 依關係與事由 | form / authority-approval | 記錄留停、職災醫療、兵役、長期病假或暫時措施依據 | HR／Case／HSE / Respective Authority | LEAVE、INJURY、INS、PENSION evidence | Candidate |
| HX-ART-HLC11-002 | HLC11 | Overlay Status、保險／退休／權限／資產 Work Items | 依關係與事由 | register / authority-approval | 保存起訖、工資、申報、assignment、access 及複核 | HR／IT／Asset／Payroll | LEAVE、INS、NHI、PENSION、DATA evidence | Candidate |
| HX-ART-HLC11-003 | HLC11 | 復職通知、健康適任與 Return Clearance | 依事由 | checklist / authority-approval | 驗證復職、工作調整、資格、權限與新 assignment | HR／HSE／Resource / Respective Authority | HEALTH、INJURY、TRANSFER evidence | Candidate |
| HX-ART-HLC12-001 | HLC12 | Project Release、結案績效與 Lessons Learned | 全部 | record / authority-approval | 關閉 assignment、保存交付 feedback 與知識 | Delivery／CoE / Project Authority | 公司政策選擇；DATA／TRADE gate | Candidate |
| HX-ART-HLC12-002 | HLC12 | 專案文件、資產、客戶權限與資料交接 | 全部 | work-item register / authority-approval | 撤銷專案 access、返還資產、分類保存與資料移交 | Project／IT／Data / Respective Authority | DATA、TRADE evidence；mixed | Candidate |
| HX-ART-HLC12-003 | HLC12 | Bench 任務、再配置搜尋與定期 Review | 受僱者 | plan / acknowledgement | 保存合法工作、訓練、標準化、職缺搜尋及下一決定 | Resource／CoE／HR / Resource Authority | TIME、TRANSFER、TERM evidence；mixed | Candidate |
| HX-ART-HLC13-001 | HLC13 | 離職意思表示、收受與最後工作日紀錄 | 受僱者 | record / delivery-receipt | 保存意思表示、日期、預告、撤回及工作免除決定 | HR / Employer Authority | TW-WF-RESIGN-001；個案待法律審查 | Candidate |
| HX-ART-HLC13-002 | HLC13 | 自請離職交接與 Closeout Work-item Register | 受僱者 | register / authority-approval | 平行管理工資、費用、假、保險、退休、資產、帳號、證明與資料 | HR／Payroll／IT／Asset | CLOSEOUT、INS、NHI、PENSION、SERVICE、DATA evidence | Candidate |
| HX-ART-HLC14-001 | HLC14 | Termination Path、Legal Review 與適當工作搜尋 | 受僱者 | review / authority-approval | 分開資遣、重大違規、退休、死亡、資格失效及其他路徑 | HR／Legal / Employer Authority | TERM、SEVERANCE、RETIRE evidence；個案審查 | Candidate |
| HX-ART-HLC14-002 | HLC14 | 終止／退休通知、收受與生效紀錄 | 受僱者 | notice / delivery-receipt | 保存事由、核准、預告、費用、通報、effective date 與撤回快照 | HR／Legal / Employer Authority | TERM、SEVERANCE、RETIRE evidence | Candidate |
| HX-ART-HLC14-003 | HLC14 | Employer-initiated Closeout Work-item Register | 受僱者 | register / authority-approval | 管理資遣費／退休、工資、保險、退休、通報、證明、資產、權限與資料 | HR／Payroll／IT／Asset | TERM、SEVERANCE、INS、NHI、PENSION、SERVICE、DATA evidence | Candidate |
| HX-ART-HLC14-004 | HLC13–HLC14 | 服務證明書 | 受僱者 | notice / authority-approval | 勞動契約終止後依請求處理 | HR / Employer Agent | TW-WF-SERVICE-001；依法必須（適用時） | Candidate |
| HX-ART-HLC14-005 | HLC13–HLC14 | 離職後保密／競業提醒與補償紀錄 | 依既有有效義務 | notice / delivery-receipt | 提醒已存在義務並保存競業補償；不得創設新義務 | Legal／HR / Employer Authority | CONTRACT、TRADE evidence；個案審查 | Candidate |
| HX-ART-HLC14-006 | HLC14 | Post-employment Request、Dispute、Retention 與 Legal Hold Register | 全部 | register / authority-approval | 管理離職後請求、職災、爭議、保存、刪除、hold 與到期 | HR／Legal／Data | DATA、SERVICE、INJURY、DISPUTE evidence | Candidate |
| HX-ART-HLC14-007 | HLC14、HLC00 | 再聘／再合作評估與新 Instance Reference | 全部 | form / authority-approval | 建立新需求與新 workforce instance，既有紀錄維持不可改寫 | Hiring／HR / Employer Authority | 公司政策選擇；個案限制待審查 | Candidate |

## 6. Excluded Assumptions

- 不設定固定績效權重；權重需經公司治理、平等及角色審查。
- 不假設所有 Project Assignment Letter 都需要員工雙方簽署；若改變契約條件，另使用 agreement。
- 不把所有安全、健康、資格或訓練項目視為全員適用；依工作、危害、設備與場所 gate 判斷。
- 不把「已讀」當作同意，不以一般 policy acknowledgement 建立競業、最低服務年限、降薪或重大調動。
- 不建立具名人員、薪資、健康、申訴、調查或績效紀錄；本 repo 只保存 schema 與空白候選 artifact 定義。
