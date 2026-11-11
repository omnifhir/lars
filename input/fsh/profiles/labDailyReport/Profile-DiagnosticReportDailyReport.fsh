Profile: DiagnosticReportDailyReport
Parent: TWCoreDiagnosticReport
Id: diagnosticreport-lars-daily-report
Title: "每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)"
Description: "此每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)Profile說明本IG如何進一步定義臺灣核心-診斷報告(TW Core DiagnosticReport) Profile，以呈現實驗室傳染病每日通報個案之檢驗報告。"
* ^version = "0.0.1"

* status = #final
* status ^short = "【此欄位為FHIR必填欄位】" 

* code = http://loinc.org#11502-2

* subject only Reference(PatientDailyReport)
* subject ^short = "個案資料"

* performer only Reference(OrganizationLARS)
* performer ^short = "醫療院所"

* encounter only Reference(EncounterDailyReport)
* encounter ^short = "就醫類型"

* result only Reference(ObservationDailyReport or ObservationDailyReportLOINC)
* result ^short = "檢驗檢查"