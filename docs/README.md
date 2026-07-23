# Helix-Workforce-Lifecycle-Compliance Documentation Tree

> 狀態：Draft
> Canonical lifecycle：HLC00–HLC29

本目錄把組織治理、生命週期模組、法律來源、法律證據與 Candidate 文件分開管理。所有文件都是空白治理設計，不得填入具名 workforce 資料。

```text
docs/
├── README.md
├── governance/
│   ├── README.md
│   ├── models/
│   │   ├── organization-governance-model.md
│   │   └── workforce-lifecycle-model.md
│   ├── assurance/
│   │   ├── workforce-artifact-catalog.md
│   │   └── workforce-lifecycle-gap-analysis.md
│   └── legal/
│       ├── workforce-law-source-catalog.md
│       ├── workforce-legal-topic-matrix.md
│       └── workforce-legal-evidence-register.md
├── enterprise/
│   └── README.md
├── shared/
│   └── artifact-governance.md
└── modules/
    ├── README.md
    ├── HLC00/README.md
    ├── HLC01/README.md
    ├── HLC02/README.md
    ├── HLC03/README.md
    ├── HLC04/README.md
    ├── HLC05/README.md
    ├── HLC06/README.md
    ├── HLC07/README.md
    ├── HLC08/README.md
    ├── HLC09/README.md
    ├── HLC10/README.md
    ├── HLC11/README.md
    ├── HLC12/README.md
    ├── HLC13/README.md
    ├── ...
    └── HLC29/README.md
```

## 閱讀順序

1. [Governance Document Map](governance/README.md)
2. [Enterprise Governance Artifacts](enterprise/README.md)
3. [HLC Module Index](modules/README.md)
4. 目標 HLC module 的 `README.md`
5. 該 module 引用的 [Legal Evidence Register](governance/legal/workforce-legal-evidence-register.md)
6. [Artifact Governance](shared/artifact-governance.md)

## 權威邊界

- `governance/` 定義 canonical 模型、法源與 evidence。
- `enterprise/` 定義跨 HLC 的公司治理文件。
- `modules/` 的每個目錄都是一個可發布頁面，定義單一業務邊界、Trigger Matrix、必要文件與 gate。
- `shared/` 定義所有 Candidate artifact 共用的原子化、type、execution、版本、核准與紀錄規則。
- 正式模板只能在公司 selector、owner、法律／專業審查及核准完成後建立。
