# Modular Compliance & Code of Conduct

> 狀態：文件架構草案（Draft）
> 法域：臺灣地區
> 產業：機電工程、起重工程
> 法規基準日：2026-07-18
> 架構決策：D00–D12 Domain-first，Core／Role-Based／Conditional 為適用維度

> [!IMPORTANT]
> 本專案建立治理與文件架構，不是法律意見，也不代表公司已完成法令遵循。正式上線前仍須依公司人數、承攬層級、工程規模、設備容量、作業內容及所在地，由臺灣律師與合格職業安全衛生專業人員完成適用性確認。

## 1. 專案目標

建立一套可長期維護的 Compliance & Code of Conduct 文件系統，使每項規範同時具備：

- 穩定的控制領域（Domain）；
- 唯一主要責任人（Primary Owner）；
- 可判定的適用方式；
- 可追溯的法律、程序與紀錄證據；
- 清楚的啟用、終止、撤銷及版本狀態。

實體文件依 D00–D12 控制領域組織，不再依 Core、Role-Based、Conditional 分成三套目錄。三者保留為每個模組的 applicability metadata。

## 2. 架構模型

每位人員在特定時間與工作情境下的適用規範為：

```text
個人適用規範 = D00–D12 中所有目前有效的 Core rules
             + 所有符合職務或資格的 Role-Based rules
             + 所有目前有效的 Conditional rules
             + 適用的工地、業主及契約 Addenda
```

### 2.1 第一軸：Domain

Domain 表示穩定的控制目的與主要責任邊界。正式 taxonomy 固定為 D00–D12，詳見 [Domain Matrix](docs/governance/domain-matrix.md)。

### 2.2 第二軸：Applicability

| 類型 | 判定問題 | 最低要求 |
| --- | --- | --- |
| Core | 哪些規範對指定人口持續適用？ | 明確人口、開始適用方式及版本 |
| Role-Based | 誰因職務、責任、資格或持續權限承擔附加義務？ | 角色／資格依據、交接及撤銷規則 |
| Conditional | 何時、何地或因何種任務、資產、契約或權限啟用？ | 可稽核的 trigger、開始、終止、撤銷及證據 |
| Local Addendum | 哪些工地、業主、契約或所在地要求疊加適用？ | 適用範圍、有效期間、衝突處理及核准人 |

同一模組只能有一個 Primary Domain，但可以包含多筆 applicability rule；例如同時以 Role-Based rule 指派持續責任，再以 Conditional rule 啟用特定任務控制。

### 2.3 Applicability Rule 計算

- 每筆 rule 在模組內使用永久且不重複的 `AR-nnn` Rule ID。
- 同一 rule 內的 selectors 預設採 `all`（AND）；需要任一條件成立時必須明確標記 `match: any`。
- 不同 rules 預設採 `any`（OR）判定模組是否適用。
- 每筆 rule 必須以 `applies_to` 綁定 Requirement IDs；不可只啟用整份文件而無法辨識義務範圍。
- 同時命中多筆 rules 時，適用義務為各 rule 所指 Requirement IDs 的聯集，不能用其中一筆 rule 排除另一筆已成立的義務。
- 稽核與人員指派紀錄使用 `Module ID + Rule ID`，例如 `D07-M001#AR-002`。

## 3. 不變設計原則

- **Domain-first**：D00–D12 是實體架構；Applicability 是指派維度。
- **單一主要責任**：每份模組只屬於一個 Primary Domain，跨域內容以引用處理。
- **共同標準不得降低**：Role-Based、Conditional 與 Addendum 只能增加或具體化義務。
- **適用性可驗證**：非持續適用的模組必須有可觀察的觸發與終止證據。
- **規範與程序分離**：模組規定必須／禁止什麼；程序規定由誰、何時及如何執行。
- **法律與政策選擇分離**：每項結論標示為依法必須、公司政策選擇或個案待法律審查。
- **人員規範與作業控制分離**：Code of Conduct 不取代工作規則、施工計畫、危害告知、法定訓練、資格、設備檢查或作業許可。
- **現行與未生效法規分離**：法規台帳分別記錄公布日、施行日、過渡期與查證日。
- **ID 不承載易變語意**：Module ID 不編入角色名稱或 Core／Role／Conditional 類型。
- **避免空架構**：只有核准模組時才建立 Domain 子目錄或文件。

## 4. D00–D12 Domain 摘要

| ID | Domain | 主要控制目的 |
| --- | --- | --- |
| D00 | 全員倫理與行為基準 | 誠信、尊重、安全底線、基本保密、通報及禁止報復 |
| D01 | 公司治理、法務與行政控制 | 授權、印鑑、公司紀錄、許可證照、法律事務及調查治理 |
| D02 | 人力與職場 | 招募、僱用、勞動條件、平等就業、職場行為、申訴及員工資料 |
| D03 | 財務、會計與稅務 | 帳務、資金、收付款、費用、稅務及職務分離 |
| D04 | 商務、客戶與市場行為 | 報價、投標、銷售、客戶承諾、競爭行為、佣金及招待 |
| D05 | 專案與工程交付 | 設計、估算、施工方法、工程變更、技術決策及專案交付 |
| D06 | 品質與技術完整性 | 檢驗、測試、校正、不符合事項、驗收及技術證據 |
| D07 | 職業安全衛生與環境 | 危害控制、承攬安全、作業許可、事故、健康、污染及廢棄物 |
| D08 | 採購、供應商與承攬治理 | 採購、第三方遴選、盡職調查、議價、契約及供應鏈誠信 |
| D09 | 物料、倉儲與物流 | 收發料、庫存、保管、盤點、追溯、搬運及運輸交接 |
| D10 | 設備、機具與車隊 | 起重設備、施工機具、工具及車輛的檢查、維護與生命週期 |
| D11 | 資訊、隱私與資安 | 系統權限、個資、營業秘密、資料生命週期及資安事件 |
| D12 | AI、自動化與演算法決策 | AI 准用、資料輸入、人工覆核、自動化決策及特殊權限 |

Domain 的完整責任、排除事項、跨域規則與初始控制矩陣，以 [Domain Matrix](docs/governance/domain-matrix.md) 為準。

## 5. 目標文件架構

下列是按需建立的目標結構，不代表所有檔案已存在：

```text
.
├── README.md
├── AGENTS.md
├── docs/
│   ├── governance/
│   │   ├── domain-matrix.md
│   │   ├── document-governance.md
│   │   ├── applicability-rules.md
│   │   ├── taiwan-legal-register.md
│   │   ├── definitions.md
│   │   └── change-log.md
│   ├── domains/
│   │   ├── D00-all/
│   │   ├── D01-governance/
│   │   ├── D02-people/
│   │   ├── D03-finance/
│   │   ├── D04-commercial/
│   │   ├── D05-engineering-projects/
│   │   ├── D06-quality/
│   │   ├── D07-hse/
│   │   ├── D08-procurement/
│   │   ├── D09-warehouse-logistics/
│   │   ├── D10-equipment-fleet/
│   │   ├── D11-information-data/
│   │   └── D12-ai-automation/
│   ├── addenda/
│   └── registers/
└── templates/
```

每個 Domain 只有在需要時才建立下列內容：

```text
README.md       # Domain 邊界、Owner、模組索引
coe.md          # 穩定的 Domain Code of Ethics & Conduct
modules/        # 單一責任模組
procedures/     # 執行程序與工作指引
forms/          # 表單或該 Domain 專用紀錄格式
```

跨 Domain 的人員指派、訓練、資格、設備、例外及版本紀錄放在 `docs/registers/`；具名員工資料原則上只保存格式與欄位定義，實際資料應置於受控系統。

## 6. Module ID 與 Metadata

Domain ID 永久固定。模組核准建立時依該 Domain 發給流水號：

```text
D07-M001
D07-M002
D10-M001
```

Core／Role-Based／Conditional 不寫入 ID，而記錄在 metadata：

```yaml
module_id: D07-M001
primary_domain: D07
title: Lifting Operation Safety
applicability:
  combine: any
  rules:
    - rule_id: AR-001
      type: role-based
      match: all
      roles:
        - lifting-supervisor
      applies_to:
        - REQ-001
        - REQ-002
      assignment_evidence: supervisor-appointment
      handover_evidence: signed-handover-record
      revocation_evidence: role-revocation-record
    - rule_id: AR-002
      type: conditional
      match: all
      roles:
        - rigger-signaler
      triggers:
        - approved-lifting-operation
      applies_to:
        - REQ-003
        - REQ-004
      trigger_evidence: approved-lift-permit
      effective_from: assigned-task-start
      end_conditions:
        - lifting-operation-completed
      revocation_conditions:
        - lift-permit-revoked
      end_evidence: lift-permit-closeout
status: draft
```

同一流水號不得重複使用。模組退役後保留 tombstone 與替代文件，不回收 ID。

## 7. 每份模組的標準結構

```markdown
# [Module ID] [Module Name]

## Document Control
- Primary Domain:
- Applicability Rules:
- Status:
- Owner:
- Approver:
- Version:
- Effective Date:
- Next Review Date:

## Purpose and Responsibility Boundary
## Scope, Audience and Exclusions
## Definitions
## Applicability Rules and Requirement Mapping
## Trigger Conditions
## End and Revocation Conditions
## Requirements
## Prohibited Conduct
## Required Disclosures and Approvals
## Qualifications, Training and Inspection
## Records and Evidence
## Reporting, Escalation and Stop-Work Authority
## Exceptions
## Consequences of Non-Compliance
## Related Domains, Modules and Procedures
## Legal Evidence IDs
## Local Addenda
## Revision History
```

不適用的段落須標記 `不適用` 並說明原因；不得靜默刪除安全、資格、紀錄或申訴相關段落。

## 8. 文件治理與優先順序

### 8.1 文件狀態

```text
Draft → In Review → Approved → Effective → Superseded / Retired
```

只有 `Effective` 版本可作為正式適用規範；舊版本必須保留但不得與現行版本混淆。

### 8.2 衝突處理

原則上依下列順序處理：

1. 適用法律與主管機關要求；
2. 合法有效的僱傭契約、個別協議、工作規則或團體協約；
3. 工地、業主及契約 Addendum；
4. 採取較高安全或合規標準的 Domain 模組；
5. 無法判定時，停止受影響作業並交由法務／Compliance 與職安衛權責人書面判定。

上述優先順序仍須依實際法律關係個案確認，不能由本架構自動決定。

### 8.3 最低控制要求

- 每份文件有唯一 ID、Primary Domain、Owner、版本與狀態。
- 新進、轉調、升任、資格、資產、權限或作業情境改變時，重新計算適用模組。
- Conditional rule 保留開始日、終止日、撤銷及 trigger evidence。
- 法定資格、訓練、設備檢查及作業許可不得由閱讀或簽收取代。
- 有立即危險時適用停止作業與退避，不得由工期、成本或主管指示覆蓋。
- 例外必須限時、有理由、有風險評估及核准人；強制法規與禁止報復事項不得設例外。

## 9. Applicability Register 最低欄位

| 欄位 | 說明 |
| --- | --- |
| Person / Population | 個人或適用群組 |
| Module ID | Dxx-Mnnn |
| Applicability Rule ID | `AR-nnn`；與 Module ID 組成可稽核鍵值 |
| Primary Domain | D00–D12 |
| Applicability Rule Type | Core、Role-Based、Conditional 或 Local Addendum |
| Applied Requirement IDs | 該次匹配實際啟用的 Requirement IDs |
| Assignment Basis | 職務、資格、核准、契約、資產、權限或地點 |
| Trigger Evidence | 可驗證的指派或啟用證據 |
| Effective Date | 開始適用日 |
| End / Revocation Date | 終止或撤銷日 |
| Acknowledgement / Training | 簽收、訓練或測驗要求 |
| Record Owner | 紀錄保管責任人 |
| Status | Pending、Active、Expired 或 Revoked |

## 10. 待確認事項

正式撰寫政策內容前，仍須確認：

1. 公司及各事業單位人數與適用門檻。
2. 公司在各工程中的業主、承攬、再承攬或設備出租／出借身分。
3. 工程類型、規模、設備種類、容量及法規過渡期。
4. 適用人口是否包含董事、派遣、實習生、外籍工作者、顧問及承攬商人員。
5. Domain Owner、Approver、職安衛組織及文件發布流程。
6. 實際職務、法定資格、特殊權限及設備清冊。
7. 哪些模組需要個別契約、同意、作業許可或現場文件，而非政策告知。
8. 通報、調查、個資保存、訓練及指派紀錄系統。
9. 文件語言及不同語言版本的優先效力。
10. 懲戒與解僱如何依法納入工作規則、契約或團體協約並完成程序。

## 11. 建議建置順序

1. 核准 [D00–D12 Domain Matrix](docs/governance/domain-matrix.md) 與 Owner。
2. 建立臺灣法規台帳，將每項 evidence 映射到 Primary Domain。
3. 核准 D00 全員共同準則的責任邊界。
4. 依風險選擇一個 Domain，核准第一個最小模組。
5. 建立 applicability rule、指派紀錄、簽收及訓練規則。
6. 逐一完成法律與職安專業審查、核准及發布。
7. 以新進、轉調、工地進場、吊裝、設備交付及權限撤銷事件測試適用性。
