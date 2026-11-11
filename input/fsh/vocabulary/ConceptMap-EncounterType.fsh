Instance: lars-encounter-type
InstanceOf: ConceptMap
Title: "LARS就醫類型代碼對應 HL7 ActCode"
Description: "臺灣衛生福利部疾管署LARS系統就醫類型代碼對應 HL7 ActCode 代碼，概念對應出版日期：未提供；資料所屬單位：臺灣衛生福利部疾管署。

*因原始資料未提供概念對應版本及生效日期，故本資源版本依本實作指引版本管理。*"
Usage: #definition
* url = "https://cdc.gov.tw/lars/ConceptMap/lars-encounter-type"
* status = #active
* version = "0.0.1"
* name = "LARSEncounterType"
* title = "LARS就醫類型代碼對應 HL7 ActCode"
* experimental = false
* sourceUri = "https://cdc.gov.tw/lars/ValueSet/lars-encounter-type-values"
* targetUri = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
* group.source = "https://cdc.gov.tw/lars/CodeSystem/lars-encounter-type-values"
* group.target = "http://terminology.hl7.org/CodeSystem/v3-ActCode"

* group.element[0].code = #01
* group.element[=].display = "門診"
* group.element[=].target.code = #AMB
* group.element[=].target.display = "ambulatory"
* group.element[=].target.equivalence = #equivalent
* group.element[1].code = #02
* group.element[=].display = "急診"
* group.element[=].target.code = #EMER
* group.element[=].target.display = "emergency"
* group.element[=].target.equivalence = #equivalent
* group.element[2].code = #03
* group.element[=].display = "住院"
* group.element[=].target.code = #NONAC
* group.element[=].target.display = "inpatient non-acute"
* group.element[=].target.equivalence = #relatedto

* group.element[3].code = #09
* group.element[=].display = "健檢、洗腎或其他"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "HL7 ActCode無可對應之代碼，故繼續使用原始代碼09"
