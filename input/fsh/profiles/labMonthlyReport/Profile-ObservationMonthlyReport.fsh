Profile: ObservationMonthlyReport
Parent: Observation
Id: observation-lars-monthly-report
Title: "每日總收件數檢驗檢查(Observation MonthlyReport LARS)"
Description: "此每日總收件數檢驗檢查(Observation MonthlyReport LARS)Profile說明本IG如何進一步定義臺灣核心-實驗室檢驗檢查(TW Core Observation Laboratory Result) Profile，以呈現實驗室傳染病每日總收件數之檢驗檢查資料。"
* ^version = "0.0.1"

* status = #final
* status ^short = "【此欄位為FHIR必填欄位】" 


* code from LARSNHICodeVS (required)
* code ^short = "健保批價碼或無健保批價碼。"
* code.coding 1..1
* code.coding.system 1..1
* code.coding.code 1..1


* valueInteger 1..1 MS
* valueInteger ^short = "檢驗總件數"

* specimen ^short = "檢體種類"
* specimen only Reference(SpecimenMonthlyReport)
