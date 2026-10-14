Logical: RlabMonthlyReportModel
Id: labMonthlyReportModel
Title: "實驗室資料自動通報之每日總收件數(labMonthlyReport)之資料模型"
Description: "實驗室資料自動通報之每日總收件數(labMonthlyReport)之資料模型"
* ^version = "0.1.0"

* hospital 1..1 string "醫事機構代碼" "醫事機構代碼"
* hospital ^example.label = "醫事機構代碼"
* hospital ^example.valueString = "1101100011"

* nhiCode 1..1 string "健保批價碼" "健保批價碼"
* nhiCode ^example.label = "健保批價碼"
* nhiCode ^example.valueString = "06013C"

* sampleType 1..1 string "檢體種類" "檢體種類"
* sampleType ^example.label = "檢體種類"
* sampleType ^example.valueString = "T011"

* sampleReceivetime 1..1 string "檢體收件日期" "檢體收件日期，格式為 YYYYMMDD。"
* sampleReceivetime ^example.label = "檢體收件日期"
* sampleReceivetime ^example.valueString = "20130801"

* inspectionNum 1..1 integer "檢驗總件數" "檢驗總件數"


// -----------------------------Mapping-----------------------------

Mapping: LARSMonthlyReportDiagnosticReport
Id: LARSMonthlyReportDiagnosticReport
Title: "Mapping to LARS DiagnosticReport"
Source: RlabMonthlyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/diagnosticreport-lars-monthlyReport"
* hospital -> "DiagnosticReport.performer"
* nhiCode -> "DiagnosticReport.result"

Mapping: LARSMonthlyReportObservation
Id: LARSMonthlyReportObservation
Title: "Mapping to LARS Observation"
Source: RlabMonthlyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/observation-lars-monthlyReport"
* nhiCode -> "Observation.code"
* inspectionNum -> "Observation.valueInteger"
* sampleType -> "Observation.specimen"


Mapping: LARSMonthlyReportOrganization
Id: LARSMonthlyReportOrganization
Title: "Mapping to LARS Organization"
Source: RlabMonthlyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/organization-lars"
* hospital -> "Organization.identifier"

Mapping: LARSMonthlyReportSpecimen
Id: LARSMonthlyReportSpecimen
Title: "Mapping to LARS Specimen"
Source: RlabMonthlyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/specimen-lars"
* sampleType -> "Specimen.type"
* sampleReceivetime -> "Specimen.receivedTime"



