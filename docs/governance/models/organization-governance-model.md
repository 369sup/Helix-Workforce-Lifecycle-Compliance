# Helix Organization Governance Model

> 狀態：Draft
> 架構決策日：2026-07-23
> 適用範圍：臺灣機電、起重、EPC、營造、設備與工程整合 workforce 治理
> 相關 canonical model：[Helix Workforce Lifecycle Model](workforce-lifecycle-model.md)

> [!IMPORTANT]
> Helix 是公司治理選擇，不是臺灣法定組織型態。本模型不改變實際雇主、勞動契約、承攬層級、法定專業責任或職業安全衛生責任，也不授權任何角色免除強制法令。

## 1. 核心設計

Helix 採「單一雇主、雙重治理、單一工作排序權」：

- **公司法人／Employer Authority**：承擔實際勞動契約與雇主責任；只有具授權者可決定勞動條件、懲戒與終止。
- **Delivery line**：決定核准工作範圍內做什麼、何時完成、交付優先順序及專案介面。
- **Capability line／CoE**：管理專業標準、能力基線、職級、培育及技術風險，不形成第二個日常工作排序者。
- **Technical Authority**：在書面授權範圍內審查或否決不符法令、安全、標準或核准設計基準的技術決定。
- **Resource governance**：提出與核准跨專案配置，不成為第三個日常主管。
- **Shared engineering platform**：提供資料、工具、標準、文件、BIM、估算、排程及品質服務，不取得人事或工作指揮權。

任何角色名稱都不取代實際法律關係判斷。派遣、承攬、顧問、實習或其他人員必須依實際指揮監督與履行事實使用相應分支。

## 2. 組織參考結構

```text
Board / Corporate Governance
└── CEO / Employer Authority
    ├── Projectized Business Units
    │   └── Project Delivery Teams
    ├── Professional Capability Centers (CoE)
    ├── Shared Engineering Platform
    └── Enterprise Functions
        ├── HR
        ├── Legal / Compliance
        ├── Finance / Payroll
        ├── Information Security / Privacy
        ├── Occupational Safety and Health
        └── Internal Audit
```

大型專案可配置 Project Director、Engineering Manager、discipline leads、Procurement、Construction、Project Controls、Commercial／Contract、Quality 及 HSE。專案配置是治理參考，不等於每個專案依法必須設置所有相同職稱；法定專業人員、職安人員或資格須依實際觸發事實另查。

## 3. Helix Role Assignment Contract

```yaml
helix_assignment_id:
workforce_instance_ref:
relationship_type:
employer_entity_ref:
business_unit_ref:
coe_ref:
project_or_bench_ref:
company_role:
project_role:
people_manager_role:
delivery_manager_role:
work_priority_owner_role:
technical_authority_role:
resource_owner_role:
hse_authority_role:
hr_or_contract_owner_role:
allocation_percentage:
work_location:
technical_authorization_ids:
site_authorization_ids:
effective_from:
effective_to:
approved_at:
approver_role:
escalation_route:
conflict_status:
evidence_refs:
legal_review_status:
```

限制：

1. `employer_entity_ref` 不得以專案、CoE、客戶或主管姓名代替。
2. 每個有效 assignment 必須有一個 `work_priority_owner_role`。
3. 同一人可配置多專案，但每個工作包須有單一 priority owner；跨專案衝突由 Resource Governance 決定，不能讓個別主管直接競逐員工時間。
4. People Manager、Delivery Manager 或 Technical Authority 可由同一人兼任，但必須記錄兼任、權限來源、利益衝突及替代升級路徑。
5. assignment 不得自行改變工資、工時、工作地點、雇主法人或其他勞動條件；涉及變更時進入 HLC09 gate。

## 4. 角色權限邊界

| Role | 可以決定 | 不得單獨決定 |
| --- | --- | --- |
| Employer Authority / HR | 勞動或合作條件、正式人事決定、法定申報及關係紀錄 | 免除法定權益、安全要求或個案審查 |
| People Manager | 能力評估、發展建議、CoE 職級輸入、導師與訓練需求 | 日常專案排序、單獨調薪、懲戒或終止 |
| Delivery Manager | 已核准派任內的工作包、交付優先、專案進度與交付績效輸入 | 技術標準例外、勞動條件變更、法定資格豁免 |
| Technical Authority | 技術標準、授權範圍內的審查、偏離決定或技術 hold | 一般人事處分、無依據插單或以個人偏好否決 |
| Resource Owner | 需求彙整、配置方案、容量與稀缺能力衝突升級 | 每日工作指揮、片面抽調或改變勞動條件 |
| HSE Authority | 法定／授權安全控制、停止受影響工作及解除前檢查 | 以安全名義作不相關人事處分 |
| Shared Platform Owner | 平台標準、服務等級、資料與工具治理 | 專案交付排序或員工人事決定 |

## 5. Decision Right Contract

```yaml
decision_right_id:
decision_type:
scope:
accountable_role:
initiator_roles:
consulted_roles:
reviewer_roles:
approver_role:
segregation_of_duties:
required_inputs:
required_evidence:
escalation_target:
effective_from:
version:
```

每項決定只有一個 `accountable_role`。諮詢、提供輸入或技術審查不等於共同最終決策。至少建立下列決策權：

| Decision | Accountable Role | Required Inputs / Gate |
| --- | --- | --- |
| 招募需求與預算 | Business / Resource Authority | CoE 能力需求、專案需求、關係初評 |
| 錄用與勞動條件 | Employer Authority | HR、用人、CoE、法律 gate |
| 日常工作排序 | Work Priority Owner | 核准 assignment、工時與安全限制 |
| 技術標準 | Technical Authority | 法規、設計基準、品質及風險 |
| 技術偏離 | 授權 Technical Authority | 偏離內容、風險、補償措施、專案影響 |
| 職業安全停止工作 | 法定或授權 HSE Authority | 即時危害事實；不得等待成本核准 |
| 專業能力／授權 | CoE / Technical Authorization Authority | 評估、資格、經驗、期限與限制 |
| 跨專案配置 | Resource Governance Authority | 需求、容量、員工條件、HLC09 gate |
| 績效最終結果 | 指定 Performance Authority | Delivery、CoE、行為輸入及校準 |
| 調薪／晉升 | Employer Compensation Authority | 績效、職級、薪酬與平等 review |
| 調查與懲戒 | 指定 Employer Authority | 獨立調查、迴避、工作規則及法律 review |
| 終止／退休決定 | 法定或授權 Employer Authority | HLC24／HLC25／HLC26 path、法律與費用 review |

## 6. Technical Hold / Veto Contract

```yaml
technical_hold_id:
authority_assignment_ref:
basis_type: law | safety | approved_standard | design_basis | authorization_limit
basis_reference:
affected_scope:
facts:
risk_statement:
immediate_action:
delivery_impact:
issued_at:
notified_roles:
escalation_status:
resolution:
release_authority:
released_at:
evidence_refs:
```

`preference`、資歷、職稱或未文件化慣例不能單獨作為 technical hold 依據。Delivery Manager 不得因成本或工期要求未授權人員解除 hold；Technical Authority 也不得以 hold 取代一般工作排序或績效處分。

## 7. 雙軌績效與單一結果

- Delivery input：交付品質、時程、成本、協作、專案風險與 HSE 行為。
- Capability input：專業深度、方法、審查能力、知識分享、培育、資格與持續發展。
- Conduct input：誠信、法遵、尊重職場、通報合作及禁止報復。
- 最終結果只能有一份，由明定 Performance Authority 經校準後作成；同一事實不得由兩條線重複處罰。
- 權重屬公司政策選擇，不在本模型設定固定百分比。
- 績效、能力不足、技術授權撤銷或單一專案負評不得自動產生 HLC25 終止結果。

## 8. Project Release and Bench

專案結案只終止 assignment，不終止實際僱傭或合作關係。HLC23 應平行處理：

- 專案交付與文件完成；
- 客戶／專案權限撤銷；
- 專案資產與資料處置；
- delivery feedback 與 lessons learned；
- 能力及可用性更新；
- 新配置搜尋；
- Bench 期間的合法工作、訓練、投標、標準化或改善項目；
- 定期 review 及 HLC09／HLC24／HLC25 gate。

Bench 不得自動表示停薪、強迫請假、低績效、放棄工作權或關係結束。

## 9. 衝突與升級

至少分流：

1. **優先順序衝突**：Work Priority Owner → Resource Governance。
2. **技術分歧**：Technical Authority → 上級 Technical Authority／正式 deviation review。
3. **安全危害**：HSE stop-work route；不得以一般專案升級延遲必要措施。
4. **勞動條件或調動**：HR／Employer Authority → HLC08 legal gate。
5. **申訴、性騷擾、霸凌或報復**：HLC10 獨立案件路徑，不交由被申訴人的管理線自行結案。
6. **法律或合規疑義**：Legal／Compliance review；需要主管機關或外部專業者時保留書面 unresolved status。

## 10. 治理驗證問題

每個 assignment 必須能回答：雇主是誰、誰排今天的工作、誰評能力、誰能核准技術偏離、誰能停止不安全工作、誰能改變勞動條件、專案結束後誰負責配置，以及雙重命令或申訴如何升級。任一答案缺失即為 Helix design gap。
