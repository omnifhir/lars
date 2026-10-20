Profile: ConditionDailyReport
Parent: TWCoreCondition
Id: condition-lars-dailyReport
Title: "每日通報個案檢驗疾病(Condition DailyReport LARS)"
Description: "此每日通報個案檢驗疾病(Condition DailyReport LARS)Profile說明本IG如何進一步定義臺灣核心-病情、問題或診斷(TW Core Condition) Profile，以呈現實驗室傳染病每日通報個案之檢驗疾病資料。"
* ^version = "0.0.1"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* clinicalStatus ^short = "【此欄位為FHIR必填欄位】" 

* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category ^short = "【此欄位為FHIR必填欄位】" 

* subject MS
* subject only Reference(PatientLARS) 

* encounter 1..1 MS 
* encounter only Reference(EncounterDailyReport) 
* code ^short = "診斷代碼"
* evidence.detail ^short = "檢驗序號"
