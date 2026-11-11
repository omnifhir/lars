Profile: BundleDailyReport
Parent: TWCoreBundleMessage
Id: bundle-lars-daily-report
Title: "實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)"
Description: "此實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)Profile說明本IG如何進一步定義臺灣核心-資料交換基本單位-訊息（TW Core Bundle Message）Profile，以呈現醫療院所上傳實驗室傳染病每日通報個案之資料。"
* ^version = "0.0.1"

* identifier 1..1 MS
* identifier ^short = "通報資料流水號，產生原則「西元年4碼+月+日+流水號(6碼)」共計14碼。"
* identifier ^example.label = "通報資料流水號"
* identifier ^comment = "2013年8月1日編號第1號之資料表示為：20130801000001"
* identifier ^example.valueIdentifier.value = "20130801000001"

* type ^short = "【此欄位為FHIR必填欄位】"
* type = #message
* type MS

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry contains

	condition  1..5 MS and
	diagnosticreport 1..1 MS and
	observation  1..1 MS and
	specimen 1..1 MS and
	encounter 1..1 MS and
	patient 1..1 MS and
	organization 1..1 MS 

// 沿用 TW Core Bundle Message 已定義之 MessageHeader slice，避免重複定義
* entry[TWCoreMessageHeader].resource 1..1 MS
* entry[TWCoreMessageHeader].resource only MessageHeaderDailyReport 

* entry[condition].resource 1..1 MS
* entry[condition].resource only ConditionDailyReport

* entry[diagnosticreport].resource 1..1 MS
* entry[diagnosticreport].resource only DiagnosticReportDailyReport

* entry[observation].resource 1..1 MS
* entry[observation].resource only ObservationDailyReport  or ObservationDailyReportLOINC

* entry[specimen].resource 1..1 MS
* entry[specimen].resource only SpecimenDailyReport

* entry[encounter].resource 1..1 MS
* entry[encounter].resource only EncounterDailyReport

* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientDailyReport

* entry[organization].resource 1..1 MS
* entry[organization].resource only OrganizationLARS
