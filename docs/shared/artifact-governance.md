# Artifact Governance

> 狀態：Draft

## 1. Artifact metadata

```yaml
artifact_id:
title:
hlc_ids: []
relationship_types: []
artifact_type:
purpose:
signature_mode:
owner_role:
approver_role:
legal_evidence_ids: []
version:
status: Candidate | In-Review | Approved | Effective | Superseded | Retired
approved_at:
effective_from:
review_due_at:
supersedes:
system_of_record:
retention_rule:
```

## 2. 簽署語意

| Mode | 證明內容 | 不得推定 |
| --- | --- | --- |
| `no-signature` | 系統或執行者建立紀錄 | 當事人同意 |
| `delivery-receipt` | 已送達或收受指定版本 | 已閱讀、同意或放棄權利 |
| `acknowledgement` | 已閱讀／知悉特定內容 | 同意不利變更 |
| `consent` | 對明確事項作自由且可證明的同意 | 可用於任何法律基礎或不可撤回 |
| `bilateral-signature` | 雙方對契約內容形成可證明表示 | 內容必然合法或公平 |
| `authority-approval` | 有權角色核准公司決定 | 當事人已收受或同意 |
| `external-filing` | 已向外部機關完成申報／送件 | 機關已核准或公司已完全合規 |

## 3. 文件、程序與紀錄

- Policy 定義原則、權利、義務與禁止事項。
- Standard 定義必須達成的最低條件。
- Procedure 定義角色、時點、步驟、例外、升級與證據。
- Form／Checklist 提供資料輸入結構，不自行創造法律效果。
- Record 證明事件、活動或決定已發生。
- Register 管理多筆 record 的狀態、期限與關聯。
- Notice 證明提供內容；Agreement 才記錄雙方契約表示。

## 4. 控制規則

- Git 只保存空白 schema 與治理文字；具名資料進入核准的 system of record。
- 每個 artifact 只能有一個 current effective version。
- 變更法律效果、勞動條件、保存、權限或安全 gate 時，必須重新執行相應 review。
- Candidate 不得直接交付員工簽署，也不得被描述成現行公司制度。
- Retired／Superseded 版本保持不可改寫的 audit trail，並依 retention 與 legal hold 處理。
