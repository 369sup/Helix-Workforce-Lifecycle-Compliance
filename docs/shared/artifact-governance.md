# Artifact Governance

> 狀態：Draft

## 1. Atomic Artifact Contract

一個 `HX-ART-*` 只代表一種未來可被建立、交付、簽署、核准或申報的實體文件。申請、評估、決定、通知、協議、收受、外部申報與完成紀錄即使屬於同一程序，也必須分配不同 Artifact ID。

```yaml
artifact_id: HX-ART-GOV-NNN | HX-ART-HLCxx-NNN
title:
primary_hlc: GOV | HLC00..HLC29
related_hlcs: []
relationship_types: []
artifact_type:
purpose:
execution_mode:
trigger_ids: []
owner_role:
approver_role:
legal_evidence_ids: []
legal_status: 依法必須 | 公司政策選擇 | 個案待法律審查
template_status: Candidate | In-Review | Approved | Effective | Superseded | Retired
version:
approved_at:
effective_from:
review_due_at:
supersedes:
system_of_record:
retention_rule:
```

## 2. Artifact Type

`artifact_type` 必須且只能選一項：

`policy | standard | procedure | plan | agreement | notice | form | checklist | assessment | decision | authorization | work-item | record | register | case-record | external-filing`

- Policy 定義原則、權利、義務與禁止事項；Standard 定義必須達成的最低條件。
- Procedure 定義角色、時點、步驟、例外、升級與證據；Plan 定義特定期間或事件的預定安排。
- Form／Checklist 提供輸入與檢查結構；Assessment 保存分析；Decision 保存有權角色的結論。
- Notice 證明特定版本的內容被提供；Agreement 保存雙方契約表示；Authorization 保存權限授予或變更。
- Work item 保存一項應辦事項及狀態；Record 保存已發生事實；Case record 保存受限案件事實；External filing 保存對外送件。
- Register 只能索引同質 artifacts，不得取代被索引的 record、work item、decision 或 filing。

不得使用 `or`、`mixed`、複數 type，或以「通知／協議」「程序與紀錄」等複合名稱掩蓋不同法律效果。

## 3. Execution Mode

`execution_mode` 必須且只能選一項：

| Mode | 證明內容 | 不得推定 |
| --- | --- | --- |
| `no-signature` | 系統或執行者建立紀錄 | 當事人同意 |
| `submission` | 指定角色提交表單、請求或陳述 | 已核准、已同意或已送達結果 |
| `delivery-receipt` | 已送達或收受指定版本 | 已閱讀、同意或放棄權利 |
| `acknowledgement` | 已閱讀／知悉特定內容 | 同意不利變更 |
| `consent` | 對明確事項作自由且可證明的同意 | 可用於任何法律基礎或不可撤回 |
| `bilateral-signature` | 雙方對契約內容形成可證明表示 | 內容必然合法或公平 |
| `authority-approval` | 有權角色核准評估、決定、授權或計畫 | 當事人已收受或同意 |
| `external-filing` | 已向外部機關完成申報／送件 | 機關已核准或公司已完全合規 |

## 4. Trigger 與頁面歸屬

- 每個 artifact 必須有一個 `primary_hlc`，並列在該 module 頁面的 Primary Candidate Artifacts。
- 每個 artifact 至少引用一個已定義的 `HX-TRG-*`；Trigger Matrix 依 event、selectors、timing 與 blocker 產出確定文件清單。
- 同一 artifact 可被多個 trigger 重用，但只有在實體格式、法律效果、type 與 execution mode 完全相同時才可重用。
- HLC 編號是穩定頁面識別碼，不代表固定線性階段；HLC05–HLC23 可依事件並行及重入。

## 5. 控制規則

- Git 只保存空白 schema 與治理文字；具名資料進入核准的 system of record。
- 每個 artifact 只能有一個 current effective version。
- 變更法律效果、勞動條件、保存、權限或安全 gate 時，必須重新執行相應 review。
- Candidate 不得直接交付員工簽署，也不得被描述成現行公司制度。
- Retired／Superseded 版本保持不可改寫的 audit trail，並依 retention 與 legal hold 處理。
