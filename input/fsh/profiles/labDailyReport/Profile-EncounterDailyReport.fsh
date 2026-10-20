Profile: EncounterDailyReport
Parent: TWCoreEncounter
Id: encounter-lars-dailyReport
Title: "每日通報個案就醫資料(Encounter DailyReport LARS)"
Description: "此每日通報個案就醫資料(Encounter DailyReport LARS)Profile說明本IG如何進一步定義臺灣核心-就醫事件(TW Core Encounter) Profile，以呈現實驗室傳染病每日通報個案之就醫資料。"
* ^version = "0.0.1"

* status = #finished
* status ^short = "【此欄位為FHIR必填欄位】" 

* period 1..1
* period.start ^short = "就醫日期時間，格式為 YYYYMMDDHHMM。" 
* period.start 1..1 MS


* class ^short = "就醫類型，AMB:門診 | EMER:急診 | NONAC:住院 | 09:健檢、洗腎或其他。" 
* class from HL7EncounterTypeVS (required)
 