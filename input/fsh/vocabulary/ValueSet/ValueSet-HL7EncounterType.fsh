Alias: $ActEncounterCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

ValueSet: HL7EncounterTypeVS
Id: hl7-lars-encounter-type-values
Title: "Hl7 ActEncounterCode + CDC-LARS系統-就醫類型值集"
Description: "「Hl7 ActEncounterCode + CDC-LARS系統-就醫類型」值集；資料所屬單位：衛生福利部疾病管制署。"

* ^version = "0.0.1"
* ^experimental = false

* LARSEncounterTypeCS#09

* $ActEncounterCode#AMB
* $ActEncounterCode#EMER
* $ActEncounterCode#NONAC
