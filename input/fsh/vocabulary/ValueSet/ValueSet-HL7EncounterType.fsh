Alias: $ActEncounterCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

ValueSet: HL7EncounterTypeVS
Id: hl7-twlars-encounter-type-values
Title: "Hl7 ActEncounterCode + CDC-LARS系統-就醫類型值集"
Description: "值集出版日期：2026-10-30；資料所屬單位：臺灣衛生福利部疾管署。

此值集優先採用國際標準碼，國際標準碼未能表述之概念則以普遍被使用標準碼表述，請實作者留意。

*因原始資料無值集版本資訊，故使用其「生效日期」作為版本資訊。*"

* ^version = "0.0.1"
* ^experimental = false

* TWLARSEncounterTypeCS#09

* $ActEncounterCode#AMB
* $ActEncounterCode#EMER
* $ActEncounterCode#NONAC
