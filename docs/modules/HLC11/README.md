# HLC11 — 留停、職災醫療及其他暫停 Overlay

> Relationship state：通常維持 `active`
> Primary authorities：HR／HSE／Case／Payroll／IT／Resource authorities

## 模組目的

在不終止 relationship 的情況下，管理育嬰留停、職災醫療、兵役、長期病假、個人留停或調查暫時措施的平行狀態。

## 必要文件

| Artifact ID | 文件 | 類型／簽署 | Owner／Approver | 必要證據 |
| --- | --- | --- | --- | --- |
| HX-ART-HLC11-001 | Suspension Overlay Request／Decision | form／authority-approval | HR／Case／HSE；相應 Authority | type、legal basis、申請／事件、起訖與決定 |
| HX-ART-HLC11-002 | Overlay Status、保險／退休／權限／資產 Work Items | register／authority-approval | HR／IT／Asset／Payroll | wage、insurance、pension、assignment、access、asset、contact 與 review date |
| HX-ART-HLC11-003 | 復職通知、健康適任與 Return Clearance | checklist／authority-approval | HR／HSE／Resource；相應 Authority | return date、fitness、adjustment、資格、權限與新 assignment |

## Gate 與輸出

- 不同 overlay type 的工資、勞保／就保／職災保險／健保、退休、權限與聯絡規則分開，不用單一 suspension status 推定；健保留停與復職另依 TW-WF-NHI-002 建立申報 work item。
- 健康及案件資料分流，Delivery／CoE 只取得必要工作限制。
- 復職不是恢復全部權限；依工作、健康、資格、設備與 site 重新 clearance。
- 輸出為 overlay history、平行 work items、return decision 與 HLC04 assignment input。

Legal routing：[LEAVE／HEALTH／INS／NHI／PENSION／DATA／TRANSFER](../../governance/legal/workforce-legal-evidence-register.md)。
