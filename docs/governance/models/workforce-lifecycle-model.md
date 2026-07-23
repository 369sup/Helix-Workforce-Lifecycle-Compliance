# Helix Workforce Lifecycle Model

> 狀態：Draft
> 架構決策日：2026-07-23
> 適用範圍：臺灣機電、起重、EPC、營造、設備與工程整合 workforce 文件治理
> Canonical scope：HLC00–HLC29、relationship state、module、overlay、case、assignment 與 work item

> [!IMPORTANT]
> HLC 是治理模組，不是法律結論或自動決策器。本模型不保存具名人事資料，不以文件簽收取代法定程序，也不自動決定契約成立、試用結果、調動、懲戒、終止、退休或再聘。

## 1. Canonical Dimensions

本文件是 HLC ID、狀態、並行規則與共同流程的唯一來源。配套角色見 [Helix Organization Governance Model](organization-governance-model.md)，候選文件見 [Helix Workforce Artifact Catalog](../assurance/workforce-artifact-catalog.md)。

同一 workforce instance 同時由下列維度描述：

1. `relationship_type`：實際勞動、派遣、承攬、顧問、實習或其他關係。
2. `relationship_state`：關係的核心狀態。
3. `hlc_module_instance`：HLC00–HLC29 中正在處理的治理模組；可並行或重入。
4. `helix_assignment`：雇主、CoE、專案、工作排序、技術與安全權限。
5. `lifecycle_overlay`：留停、職災醫療、長期病假或暫時措施。
6. `lifecycle_event`：Offer、工作開始、績效、事故、調動、通報或終止等事件。
7. `case_instance`：申訴、調查、職災、紀律、法律或資料事件案件。
8. `parallel_work_item`：Onboarding、回復、派任、結清或資料處置待辦。

HLC05–HLC23 不是互斥階段。職員可同時存在有效專案派任、訓練、績效評估、健康事件及申訴案件；不得以單一「目前 HLC」覆蓋其他模組。HLC ID 同時是 docs 的穩定頁面識別碼，編號順序只提供導覽，不表示法律或作業上的固定 transition。

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

關係在 HLC00、HLC02、HLC04、HLC09 及實際履行改變時重新檢查，保存原分類、事實、effective date 與 remediation work items。

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
| active | 自請離職、雇主終止、退休或合意終止程序啟動 | termination_pending | HLC24／HLC25／HLC26 path、previous snapshot 及法律 review |
| termination_pending | 終止撤回／取消 | restore(previous_state_snapshot) | 撤回決定與 restoration work items |
| termination_pending | 關係終止生效 | ended | 法律／契約依據、核准、通知及 effective date |
| ended | 再聘／再合作需求 | 新 planning 或 candidate instance | 新 workforce instance；原 instance 不重開 |

`restore(previous_state_snapshot)` 是唯一動態 relationship target。關係終止與 closeout 完成是不同事件；ended 後仍可存在 HLC18–HLC20 case、職災、爭議、legal hold 或 post-employment work item。

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

## 5. HLC00–HLC29 Modules

本表只定義穩定頁面邊界；每頁的 Trigger Matrix 與 atomic artifacts 見 [HLC Module Index](../../modules/README.md)。

| HLC | Page Boundary | Allowed Relationship State | Primary Authority |
| --- | --- | --- | --- |
| HLC00 | 人力需求與職位治理 | planning | Business／Resource／Employer |
| HLC01 | 招募、甄選與候選人結案 | candidate | Recruitment／Hiring／Data |
| HLC02 | Offer 與契約成立 | candidate、offer_pending、pre_start | Employer／HR／Contract |
| HLC03 | 開始前法定與風險 Clearance | offer_pending、pre_start | HR／HSE／Technical／Data |
| HLC04 | 實際開始與行政 Onboarding | pre_start、active | Employer／HR／Payroll／IT |
| HLC05 | Assignment 與角色治理 | active | Resource／Project／Employer |
| HLC06 | 能力基線與公司職級 | active | Capability／Grade |
| HLC07 | 技術授權生命週期 | active | Technical／Authorization |
| HLC08 | 工地動員、危害與專案存取 | active | Site／HSE／Technical／Data |
| HLC09 | 派任條件、調動與工作條件變更 | active | HR／Resource／Employer |
| HLC10 | 工時、出勤、請假與加班 | active | Time／HR／Employer |
| HLC11 | 工作排序與資源衝突 | active | Work Priority／Resource |
| HLC12 | 技術交付控制 | active | Technical／Authorization |
| HLC13 | 品質、HSE 檢查與事件 | active | Quality／HSE／Employer |
| HLC14 | 績效目標、評估與改善 | active | Performance／Appeal |
| HLC15 | 試用約定、評估、延長與結果 | offer_pending、pre_start、active | HR／Performance／Employer |
| HLC16 | 晉升、職級、薪酬與職涯變動 | active | Promotion／Grade／Compensation |
| HLC17 | 訓練、發展與資格證照 | active | Training／Technical／HSE |
| HLC18 | 案件受理、分類與獨立路由 | 所有 state | Independent Case／HSE |
| HLC19 | 調查、證據與暫時措施 | 所有 state | Investigator／Independent Case |
| HLC20 | 案件決定、申復與反報復 | 所有 state | Decision／Appeal／Independent Case |
| HLC21 | 關係暫停 Overlay | active、termination_pending | HR／Case／HSE |
| HLC22 | 復職、復工與狀態恢復 | active、termination_pending | HR／Health／HSE／Resource |
| HLC23 | 專案釋放、Bench 與再配置 | active | Delivery／Resource／CoE |
| HLC24 | 自請離職表示與生效 | active、termination_pending | Employee／HR／Employer |
| HLC25 | 雇主終止審查與決定 | active、termination_pending | Employer／HR／Legal |
| HLC26 | 退休與合意終止 | active、termination_pending | Employer／HR／Legal |
| HLC27 | 關係結清、申報與 Closeout | termination_pending、ended | HR／Payroll／IT／Data |
| HLC28 | 離職後請求、義務與保存 | ended | HR／Legal／Data |
| HLC29 | 再聘與新 Workforce Instance | ended、planning、candidate | Hiring／HR／Employer |

## 6. Module Concurrency Rules

- HLC00→HLC01→HLC02→HLC03→HLC04 是一般入口導覽；是否需要每一頁及其 artifact 仍由 trigger selectors 決定。
- `active` 後可依事件並行開啟 HLC05–HLC23；沒有固定 HLC05→HLC06→…→HLC23 次序。
- HLC07 授權可在 HLC05 派任前、派任中或任務改變時重跑；HLC08 現場 gate 不得因專案時程略過。
- HLC15 是可選 module；沒有有效試用約定時不開啟，也不得以「轉正」重設年資。
- HLC09 只管理實際 change transaction；HLC21 overlay 不以 HLC09 假轉換表示。
- HLC18–HLC20 case 可與任何 module 並行，且不得因 relationship ended 自動結案。
- HLC23 project release 後可開啟新 HLC05、維持 Bench，或經獨立審查進入 HLC24–HLC26；不得直接改為 ended。
- HLC24、HLC25 與 HLC26 是不同 initiator／path；共用 HLC27 services 不表示法律事由相同。
- HLC27 closeout、HLC28 post-relationship obligations 與 HLC29 rehire 可在 relationship ended 後繼續或另行開啟。

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

HLC04、HLC21、HLC22、HLC23 與 HLC27 不使用單一完成布林值。closeout 項目至少涵蓋 final wage、severance／retirement、insurance、pension、tax、attendance、leave balance、expense、asset、account、physical access、handover、confidential data、service certificate、required reporting、injury continuity 及 retention classification。

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
| 直聘有／無試用 | 皆依 HLC00–04 的適用 trigger 進 active；有有效試用約定才開 HLC15 |
| 試用期間與 checkpoint | HLC15 分開合理期間決定、雙方附約、評估計畫與每個 checkpoint assessment |
| 試用延長／不繼續 | 延長須在期限前另作 assessment 與 bilateral agreement；未通過只送 HLC25 review |
| 並行派任、訓練與績效 | HLC05、HLC14、HLC17 同時 active，不互相覆蓋 |
| 多專案資源衝突 | 每個工作包有 priority owner，跨案衝突升級 Resource Governance |
| 技術否決 | 依授權與 basis 建 technical hold；不得變成人事處分或無依據插單 |
| 專案結案 | HLC23 release；關係仍 active，可進 Bench 或新 HLC05 |
| 重大調動 | HLC09 保存前後條件、不利益、員工意見、法律 gate 及新 assignment |
| 留停／職災醫療 | HLC21 overlay，relationship state 維持 active；HLC22 執行 return clearance |
| 客戶場所性騷擾／霸凌 | HLC18–HLC20 獨立 case 路徑，不交被申訴管理線結案 |
| 安全停工 | HSE route 優先；不得以交付成本壓過必要停止措施或進行報復 |
| 自請離職 | HLC24→termination_pending→ended；HLC27 work items 各自完成 |
| 資遣／解僱 | HLC25 依事由、保護、安置、通知與撤回建 evidence；HLC27 另行結清 |
| 退休／合意終止 | HLC26 分開退休決定、雙方協議與各自生效事實 |
| 離職後申訴／職災／legal hold | relationship ended，但 HLC18–HLC22／HLC28 可持續 |
| 再聘 | HLC29 建立新 workforce instance；既有事件、案件及 closeout history 不改寫 |

## 12. Legal and Professional Boundary

所有法律敘述引用 [Taiwan Workforce Legal Evidence Register](../legal/workforce-legal-evidence-register.md)。法規名稱清單與 HLC topic routing 分別見 [Taiwan Workforce Law Source Catalog](../legal/workforce-law-source-catalog.md) 與 [Taiwan Workforce Legal Topic Matrix](../legal/workforce-legal-topic-matrix.md)。未取得公司人數、雇主、工地、工程、承攬層級、設備、危害、工會、工作制度或事件日期前，不得把條件式 evidence 宣稱為實際適用。
