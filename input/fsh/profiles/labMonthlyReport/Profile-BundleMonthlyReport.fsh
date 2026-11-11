Profile: BundleMonthlyReport
Parent: TWCoreBundleMessage
Id: bundle-lars-monthly-report
Title: "實驗室傳染病每日總收件數上傳(Bundle MonthlyReport LARS)"
Description: "此實驗室傳染病每日總收件數上傳(Bundle MonthlyReport LARS)Profile說明本IG如何進一步定義臺灣核心-資料交換基本單位-訊息（TW Core Bundle Message）Profile，以呈現醫療院所上傳實驗室傳染病每日總收件數之資料。"
* ^version = "0.0.1"

* type ^short = "【此欄位為FHIR必填欄位】"
* type = #message
* type MS

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry contains

	observation  1..1 MS and
	specimen 1..1 MS and
	organization 1..1 MS 

* entry[TWCoreMessageHeader].resource 1..1 MS
* entry[TWCoreMessageHeader].resource only MessageHeaderMonthlyReport 

* entry[observation].resource 1..1 MS
* entry[observation].resource only ObservationMonthlyReport

* entry[specimen].resource 1..1 MS
* entry[specimen].resource only SpecimenMonthlyReport

* entry[organization].resource 1..1 MS
* entry[organization].resource only OrganizationLARS
