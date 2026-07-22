# HLC14 — 資遣、解僱、退休、共同離場與離職後

> Relationship states：`active` → `termination_pending` → `ended`
> Primary authorities：Employer／HR／Legal／Payroll／IT／Asset／Data authorities

## 模組目的

依不同 termination path 完成法定事由、保護期間、替代措施、通知、費用、通報與核准審查，並管理共同 closeout 及離職後義務。

## 必要文件

| Artifact ID | 文件 | 類型／簽署 | Owner／Approver | 必要證據 |
| --- | --- | --- | --- | --- |
| HX-ART-HLC14-001 | Termination Path、Legal Review 與適當工作搜尋 | review／authority-approval | HR／Legal；Employer Authority | path、法定事由、保護期、安置、比例、選擇標準與 legal review |
| HX-ART-HLC14-002 | 終止／退休通知、收受與生效紀錄 | notice／delivery-receipt | HR／Legal；Employer Authority | 事由、核准、預告、費用、通報、送達、effective date 與 restoration snapshot |
| HX-ART-HLC14-003 | Employer-initiated Closeout Work-item Register | register／authority-approval | HR／Payroll／IT／Asset | severance／retirement、工資、特休、保險、健保三日退保、退休、通報、證明、資產、權限與資料 |
| HX-ART-HLC14-004 | 服務證明書 | notice／authority-approval | HR；Employer Agent | TW-WF-SERVICE-001、請求與交付 |
| HX-ART-HLC14-005 | 離職後保密／競業提醒與補償紀錄 | notice／delivery-receipt | Legal／HR；Employer Authority | 有效契約、TW-WF-CONTRACT-002、補償與期限 |
| HX-ART-HLC14-006 | Post-employment Request、Dispute、Retention 與 Legal Hold Register | register／authority-approval | HR／Legal／Data | 請求、職災、爭議、保存、刪除、hold、解除與到期 |
| HX-ART-HLC14-007 | 再聘／再合作評估與新 Instance Reference | form／authority-approval | Hiring／HR；Employer Authority | 新需求、新 instance、既有紀錄 reference 與限制 review |

## Gate 與輸出

- Path 至少分一般法定事由、重大違規、退休、死亡、定期契約及非僱傭關係；各自使用不同 evidence。
- 試用未通過、專案結案、Bench 或單一負評不是獨立法定終止事由。
- Protected-period、適當工作、預告、資遣費／退休金及法定通報各自為 blocking gate。
- 終止撤回使用 `restore(previous_state_snapshot)` 並建立工資、排班、保險、退休、權限與通知 restoration work items。
- 再聘建立新 workforce instance；既有案件、紀錄與 legal hold 保持可追溯。

Legal routing：[TERM／SEVERANCE／RETIRE／SERVICE／WAGE／INS／NHI／PENSION／DATA](../../governance/legal/workforce-legal-evidence-register.md)。
