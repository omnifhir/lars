Profile: ObservationMonthlyReport
Parent: Observation
Id: observation-lars-monthly-report
Title: "每日總收件數檢驗檢查(Observation MonthlyReport LARS)"
Description: "此每日總收件數檢驗檢查(Observation MonthlyReport LARS)Profile說明本IG如何進一步定義臺灣核心-實驗室檢驗檢查(TW Core Observation Laboratory Result) Profile，以呈現實驗室傳染病每日總收件數之檢驗檢查資料。"
* ^version = "0.0.1"

* status = #final
* status ^short = "【此欄位為FHIR必填欄位】" 


* code ^short = "通報個案之健保批價碼，二擇一填寫：有健保批價碼者，請使用 臺灣健保署醫療服務給付項目-檢驗值集；無健保批價碼或自費者，請使用  CDC-LARS系統-無健保批價碼值集。"
* code.coding 1..1
* code.coding.system 1..1
* code.coding.code 1..1
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains
    TWLaboratoryCategory 0..1 MS and
    LARSNoNHICode 0..1 MS
* code.coding[TWLaboratoryCategory] from https://twcore.mohw.gov.tw/ig/twcore/ValueSet/laboratory-category-tw (required)
* code.coding[TWLaboratoryCategory] ^short = "健保批價碼"
* code.coding[TWLaboratoryCategory].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw"
* code.coding[LARSNoNHICode] from LARSNHICodeVS (required)
* code.coding[LARSNoNHICode] ^short = "無健保批價碼或自費"
* code.coding[LARSNoNHICode].system = "https://cdc.gov.tw/lars/CodeSystem/lars-code-values"


* valueInteger 1..1 MS
* valueInteger ^short = "檢驗總件數"

* specimen ^short = "檢體種類"
* specimen only Reference(SpecimenMonthlyReport)
