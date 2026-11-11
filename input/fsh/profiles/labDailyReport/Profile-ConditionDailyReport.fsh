Profile: ConditionDailyReport
Parent: TWCoreCondition
Id: condition-lars-daily-report
Title: "每日通報個案檢驗疾病(Condition DailyReport LARS)"
Description: "此每日通報個案檢驗疾病(Condition DailyReport LARS)Profile說明本IG如何進一步定義臺灣核心-病情、問題或診斷(TW Core Condition) Profile，以呈現實驗室傳染病每日通報個案之檢驗疾病資料。"
* ^version = "0.0.1"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* clinicalStatus ^short = "【此欄位為FHIR必填欄位】" 

* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category ^short = "【此欄位為FHIR必填欄位】" 

* subject MS
* subject only Reference(PatientDailyReport) 

* code.coding[icd9-cm-2001] 0..0
* code.coding[absentOrUnknownProblem] 0..0
* code.coding[sct] 0..0

* code.text  ^short = "若於發檢驗報告時，院內尚未有診斷碼記錄，請先填入「XXXX」，待醫師開立診斷碼後，須更新該筆資料。"

* encounter 1..1 MS 
* encounter only Reference(EncounterDailyReport) 
* code 1..1 MS
* code obeys condition-code-or-text
* code ^short = "診斷代碼"

* evidence.detail 1..1 MS
* evidence.detail ^short = "每日通報個案檢驗報告"
* evidence.detail only Reference(DiagnosticReportDailyReport) 


Invariant: condition-code-or-text
Description: "code 必須填入 code.coding 或 code.text 其中之一；若於發檢驗報告時，院內尚未有診斷碼記錄，請先於 code.text 填入「XXXX」，待醫師開立診斷碼後，須更新該筆資料。"
Expression: "coding.exists() or text.exists()"
Severity: #error
