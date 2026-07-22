# Helix Workforce Lifecycle Model

> 狀態：Draft
> 架構決策日：2026-07-23
> 適用範圍：臺灣機電、起重、EPC、營造、設備與工程整合 workforce 文件治理
> Canonical scope：HLC00–HLC14、relationship state、module、overlay、case、assignment 與 work item

> [!IMPORTANT]
> HLC 是治理模組，不是法律結論或自動決策器。本模型不保存具名人事資料，不以文件簽收取代法定程序，也不自動決定契約成立、試用結果、調動、懲戒、終止、退休或再聘。

## 1. Canonical Dimensions

本文件是 HLC ID、狀態、並行規則與共同流程的唯一來源。配套角色見 [Helix Organization Governance Model](organization-governance-model.md)，候選文件見 [Helix Workforce Artifact Catalog](../assurance/workforce-artifact-catalog.md)。

同一 workforce instance 同時由下列維度描述：

1. `relationship_type`：實際勞動、派遣、承攬、顧問、實習或其他關係。
2. `relationship_state`：關係的核心狀態。
3. `hlc_module_instance`：HLC00–HLC14 中正在處理的流程模組；可並行或重入。
4. `helix_assignment`：雇主、CoE、專案、工作排序、技術與安全權限。
5. `lifecycle_overlay`：留停、職災醫療、長期病假或暫時措施。
6. `lifecycle_event`：Offer、工作開始、績效、事故、調動、通報或終止等事件。
7. `case_instance`：申訴、調查、職災、紀律、法律或資料事件案件。
8. `parallel_work_item`：Onboarding、回復、派任、結清或資料處置待辦。

HLC03–HLC12 不是互斥階段。職員可同時存在有效專案派任、訓練、績效評估、健康事件及申訴案件；不得以單一「目前 HLC」覆蓋其他模組。

## 2. Relationship Types

| Relationship Type | Required Gate | Boundary |
| --- | --- | --- |
| 直聘不定期受僱 | 雇主法人、工作、工資、工時與開始事實 | 一般持續性工作候選分支 |
| 直聘定期受僱 | 定期契約法定類型與期間 evidence | 專案名稱或預算期間不足以自動成立定期契約 |
| 部分工時受僱 | 工時、工資、保險與休假適用性 | 不是較低權益的獨立員工類別 |
| 派遣勞工 | 派遣雇主、要派單位與實際指揮監督 | 不使用要派單位的員工錄取／轉正流程 |
| 承攬／再承攬商人員 | 法人、契約、承攬層級、自主管理與風險 | 不得由定作人直接套用員工人事指揮 |
| 獨立承攬人／顧問 | 從屬性、設備成本、成果風險與報酬 | 契約標題不控制實質關係 |
| 實習／見習／訓練人員 | 教育目的、工作內容、報酬、年齡與指揮事實 | 依實質關係與特殊法規分支 |

關係在 HLC00、HLC01、HLC02、HLC08 及實際履行改變時重新檢查，保存原分類、事實、effective date 與 remediation work items。

## 3. Relationship State Contract

```yaml
relationship_state:
  value: planning | candidate | offer_pending | pre_start | active | termination_pending | ended
  entered_at:
  effective_from:
  effective_to:
  trigger_event_ref:
  previous_state_snapshot:
  approver_role:
  evidence_refs:
  legal_review_status:
```

| From | Trigger | To | Minimum Evidence |
| --- | --- | --- | --- |
| planning | 招募或合作搜尋核准 | candidate | 需求、預算、關係初評及核准 |
| planning | 需求取消 | ended | 取消理由與決定；未形成 workforce relationship |
| candidate | 提案對象核准 | offer_pending | 甄選／採購決定、版本及授權 |
| candidate | 未錄取／搜尋結束 | ended | disposition、通知與資料處理 |
| offer_pending | 提案接受並進入 clearance | pre_start | 接受內容、時間、方式及未完成條件 |
| offer_pending | 拒絕／撤回／失效 | ended | 結果、版本、期限、通知及法律 review |
| pre_start | 實際關係開始 | active | contract start、actual work start、必要 clearance 與開始證據 |
| pre_start | 開始取消 | ended | 取消依據、通知、已成立權利義務 review 及資料處理 |
| active | 自請離職或雇主終止／退休程序啟動 | termination_pending | HLC13／HLC14 path、previous snapshot 及法律 review |
| termination_pending | 終止撤回／取消 | restore(previous_state_snapshot) | 撤回決定與 restoration work items |
| termination_pending | 關係終止生效 | ended | 法律／契約依據、核准、通知及 effective date |
| ended | 再聘／再合作需求 | 新 planning 或 candidate instance | 新 workforce instance；原 instance 不重開 |

`restore(previous_state_snapshot)` 是唯一動態 relationship target。關係終止與 closeout 完成是不同事件；ended 後仍可存在 HLC10 case、職災、爭議、legal hold 或 post-employment work item。

## 4. HLC Module Contract

```yaml
hlc_module_instance_id:
hlc_id:
workforce_instance_ref:
relationship_state_at_open:
trigger_event_ref:
opened_at:
effective_from:
effective_to:
owner_role:
approver_role:
status: not-applicable | pending | active | blocked | completed | cancelled
required_inputs:
decisions:
work_item_refs:
case_refs:
assignment_refs:
evidence_refs:
legal_evidence_ids:
unresolved_questions:
```

相同 HLC 可重入，但每個 instance 必須有新 ID；不得覆寫既有決定、日期或 evidence。

## 5. HLC00–HLC14 Modules

| HLC | Module / Boundary | Allowed Relationship State | Required Decisions | Minimum Outputs | Owner / Approver | Legal Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| HLC00 | 人力規劃、職缺與招募；不作契約承諾 | planning、candidate | 永久能力或專案需求、用工方式、職務／危害／資格、CoE、預算、甄選與資料處理 | 需求、職務範圍、關係初評、招募與結案 evidence | Business／Resource／Recruitment；授權 Approver | RECRUIT、REL、TERM-TYPE、DATA evidence |
| HLC01 | 錄取、契約與開始前條件；提案接受不等於實際開始 | offer_pending、pre_start | 雇主、關係、條件、有效期、接受、clearance、開始取消或延後 | Offer／合作版本、接受、relationship／identity／eligibility／contract／payroll／insurance／retirement／fitness／qualification／site／data clearance | Employer／HR／Procurement；授權 Approver | OFFER、CONTRACT、REL、DATA evidence |
| HLC02 | 到職、Onboarding 與初始 Helix 配置；不是轉正 | pre_start、active | contract start、actual work start、administrative completion、保險／退休／名卡、初始 assignment、權限、資產、訓練 | 三類開始日期、onboarding work items、初始 Helix assignment 與未完成 blocker | HR／Site／IT／Asset；Employer Approver | RECORD、INS、PENSION、OSH、DATA evidence |
| HLC03 | 能力基線、公司職級與技術授權；三者不得互相自動推導 | active | 能力等級、資格、授權範圍、限制、到期、複核、暫停／撤銷 | competency assessment、grade decision、authorization record、expiry controls | CoE／Technical Authority | COMPETENCY、OSH／專業資格 evidence |
| HLC04 | 專案派任、配置與工地動員；派任不是新僱傭關係 | active | 專案角色、比例、工作排序者、地點、工時、津貼、技術／site authority、客戶規則、HLC08 gate | helix_assignment、project role、mobilization／site clearance、access evidence | Resource／Delivery／Site；Employer／Project Approver | ASSIGN、TIME、OSH、DATA evidence |
| HLC05 | 在職交付、工時與日常工作指揮 | active | 工作包、優先順序、出勤、加班、品質、技術問題、偏離、安全與資源衝突 | work package、attendance、overtime、review／deviation、HSE 與 escalation evidence | Work Priority Owner；相應 Authority | WAGE、TIME、OSH、RECORD evidence |
| HLC06 | 試用、績效、改善與申覆；不得直接產生終止 | active | 試用適用性、目標、期間、Delivery／Capability／Conduct inputs、資源、回饋、衝突、改善、申覆與校準 | objective version、assessment inputs、single final result、appeal／review evidence | Performance Owner；Performance Authority | TRIAL、PERF、EQUAL、TERM evidence |
| HLC07 | 調薪、晉升、職級與職涯；通知與同意分開 | active | 薪酬、職級、角色、授權與是否變更勞動條件 | calibration、decision、notice／agreement、effective date | Compensation／CoE；Employer Authority | WAGE、EQUAL、CONTRACT evidence |
| HLC08 | 跨專案調動、借調及工作條件變更 | active | change type、雇主法人、工資／工時／地點、期間、回復、不利益、能力、安全及合意／通知 | before／after version、employee input、legal gate、new assignment、remediation items | HR／Resource；Employer Authority | TRANSFER、CONTRACT、INS、PENSION、OSH evidence |
| HLC09 | 訓練、證照、續證與人才發展 | active | 法定／必要／一般／高額專門訓練分類、費用、工時、資格、到期、最低服務年限 gate | training requirement、attendance、assessment、qualification、agreement if lawful | CoE／HSE／Training；授權 Approver | TRAIN、CONTRACT、OSH evidence |
| HLC10 | 職場事件、申訴、調查、性騷擾、霸凌、紀律與禁止報復 | candidate、offer_pending、pre_start、active、termination_pending、ended | intake、conflict routing、保密、暫時措施、調查、外部路徑、決定、申復與反報復 follow-up | case instance、evidence index、findings、decision、notification、retention | Independent Case Owner；Decision Authority | SPEAKUP、HARASS、BULLY、DISCIPLINE、DATA evidence |
| HLC11 | 留停、職災醫療、長期病假、兵役或調查暫時措施 overlay | active、termination_pending | overlay 類型、工資、保險、退休、權限、資產、接觸、複核、復職與適任 | suspension overlay、review、return clearance、restoration evidence | HR／Case／HSE；相應 Authority | LEAVE、INJURY、INS、PENSION、DATA evidence |
| HLC12 | 專案結案、釋放、Bench 與再配置；不自動終止關係 | active | assignment release、交接、權限撤銷、feedback、可用性、新配置、Bench 工作與 review | release、handover、access removal、bench work items、reassignment search | Delivery／Resource／CoE；Resource Authority | ASSIGN、TRANSFER、TIME、TERM evidence |
| HLC13 | 自請離職；意思表示、預告與撤回個案分開 | active、termination_pending、ended | 意思表示、最後工作日、預告、撤回、工作免除、共同 closeout 與 post-employment items | resignation event、last-day decision、notice／receipt、closeout evidence | HR／Employer；授權 Approver | RESIGN、SERVICE、CLOSEOUT、DATA evidence |
| HLC14 | 資遣、解僱、退休、共同離場與離職後義務 | active、termination_pending、ended | termination path、事由、保護、安置、預告、費用、通報、退休、closeout、競業、保存／legal hold | legal review、decision、notification、parallel closeout、post-employment disposition | HR／Legal／Employer；法定或授權 Authority | TERM、SEVERANCE、RETIRE、SERVICE、POST evidence |

## 6. Module Concurrency Rules

- HLC00→HLC01→HLC02 是一般入口導航；Offer 結案可在 HLC00／HLC01 結束未開始的 instance。
- HLC02 建立 `active` 後，可依事件並行開啟 HLC03–HLC12；沒有固定 HLC03→HLC04→…→HLC12 次序。
- HLC03 技術授權可在 HLC04 派任前、派任中或任務改變時重跑；未授權工作不得因專案時程略過。
- HLC06 試用只是 active 關係中的評估 module；沒有試用時不開啟 trial sub-type。
- HLC08 只管理實際 change transaction；HLC11 overlay 不以 HLC08 假轉換表示。
- HLC10 case 可與任何其他 module 並行，且不得因 relationship ended 自動結案。
- HLC12 project release 後可以開啟新 HLC04、維持 Bench，或經獨立審查進入 HLC13／HLC14；不得直接改為 ended。
- HLC13 與 HLC14 是不同 termination initiator／path；兩者共用 closeout work items，但不得合併法律事由。

## 7. Overlay Contract

```yaml
overlay_id:
overlay_type:
legal_basis_or_policy:
base_relationship_state:
active_hlc_modules:
start_at:
expected_end_at:
actual_end_at:
employment_continues:
wage_status:
insurance_status:
retirement_status:
assignment_status:
access_status:
asset_status:
contact_and_confidentiality_rule:
review_at:
return_conditions:
owner_role:
approver_role:
evidence_refs:
legal_review_status:
```

overlay 結束前執行 return clearance；不得自動恢復已到期資格、project access 或 technical authorization。

## 8. Case Contract

```yaml
case_id:
case_type:
workforce_instance_ref:
intake_channel:
received_at:
confidentiality:
severity:
conflict_check:
case_owner_role:
investigator_role:
scope:
evidence_index_ref:
interim_measures:
anti_retaliation_controls:
external_route_review:
findings:
decision_authority:
actions:
review_or_appeal:
closed_at:
retention_rule:
legal_hold:
```

被申訴人、其直接管理線或受結果影響者不得單獨控制受理、調查與最終決定。案件資料與一般績效／人事資料分流，依目的與權限存取。

## 9. Parallel Work Item Contract

```yaml
work_item_id:
work_item_type:
related_hlc:
applicability_status: applicable | not-applicable | pending-review
rationale:
owner_role:
due_at:
status: pending | in-progress | blocked | completed | transferred
completed_at:
evidence_refs:
blocker:
escalation:
transfer_reason:
receiving_owner:
```

HLC02、HLC11、HLC12、HLC13 與 HLC14 不使用單一完成布林值。closeout 項目至少涵蓋 final wage、severance／retirement、insurance、pension、tax、attendance、leave balance、expense、asset、account、physical access、handover、confidential data、service certificate、required reporting、injury continuity 及 retention classification。

## 10. Start and Time Facts

下列日期不得互相覆蓋：

- `offer_issued_at`
- `offer_accepted_at`
- `contract_formed_at`
- `contract_start_at`
- `actual_work_start_at`
- `administrative_onboarding_completed_at`
- `assignment_effective_from`
- `recorded_at`
- `notified_at`
- `received_at`

法定或契約義務依各自觸發事實判斷；行政文件尚未完成不能合理化已開始但缺少必要資格、安全或申報的工作。

## 11. Validation Scenarios

| Scenario | Expected Result |
| --- | --- |
| 直聘有／無試用 | 皆經 HLC00–02 進 active；有試用才開 HLC06 trial sub-type |
| 並行派任、訓練與績效 | HLC04、HLC06、HLC09 同時 active，不互相覆蓋 |
| 多專案資源衝突 | 每個工作包有 priority owner，跨案衝突升級 Resource Governance |
| 技術否決 | 依授權與 basis 建 technical hold；不得變成人事處分或無依據插單 |
| 專案結案 | HLC12 release；關係仍 active，可進 Bench 或新 HLC04 |
| 重大調動 | HLC08 保存前後條件、不利益、員工意見、法律 gate 及新 assignment |
| 留停／職災醫療 | HLC11 overlay，relationship state 維持 active；復職前 return clearance |
| 客戶場所性騷擾／霸凌 | HLC10 獨立 case，檢查跨事業單位與外部路徑，不交被申訴管理線結案 |
| 安全停工 | HSE route 優先；不得以交付成本壓過必要停止措施或進行報復 |
| 自請離職 | HLC13→termination_pending→ended；closeout 各自完成 |
| 資遣／解僱／退休 | HLC14 依不同 path、事由、保護、費用與通知建 evidence |
| 離職後申訴／職災／legal hold | relationship ended，但 HLC10／post-employment work items 可持續 |
| 再聘 | 建立新 workforce instance；既有事件、案件及 closeout history 不改寫 |

## 12. Legal and Professional Boundary

所有法律敘述引用 [Taiwan Workforce Legal Evidence Register](../legal/workforce-legal-evidence-register.md)。法規名稱清單與 HLC topic routing 分別見 [Taiwan Workforce Law Source Catalog](../legal/workforce-law-source-catalog.md) 與 [Taiwan Workforce Legal Topic Matrix](../legal/workforce-legal-topic-matrix.md)。未取得公司人數、雇主、工地、工程、承攬層級、設備、危害、工會、工作制度或事件日期前，不得把條件式 evidence 宣稱為實際適用。
