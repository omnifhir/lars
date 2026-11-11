Extension: LOINCInfo
Id: loinc-info-lars
Title: "LOINC資訊"
Description: "用於檢驗檢查（Observation）的LOINC資訊，包含LOINC代碼、檢驗時間屬性（Time）、測量單位屬性（Property）及檢驗單位屬性（Scale），供LARS系統轉換國際標準碼使用。"
* ^url = "https://cdc.gov.tw/lars/StructureDefinition/loinc-info-lars"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "LOINC代碼及檢驗屬性資訊"
* value[x] 0..0
* extension contains

    loincComponent 0..1 MS and
    loincTime 1..1 MS and
    loincMeasure 1..1 MS and
    loincScale 1..1 MS

* extension[loincComponent] ^short = "檢驗項目名稱(LOINC Component)"
* extension[loincComponent].extension 0..0
* extension[loincComponent].value[x] 1..1
* extension[loincComponent].value[x] only Coding
* extension[loincComponent].valueCoding from LARSLOINCComponentVS (required)
* extension[loincComponent].valueCoding.system 1..1
* extension[loincComponent].valueCoding.system = Canonical(LARSLOINCComponentCS)
* extension[loincComponent].valueCoding.code 1..1
* extension[loincComponent].valueCoding ^definition = "LOINC檢驗成份，即LOINC Component。"


* extension[loincMeasure] ^short = "LOINC測量單位屬性(Property)"
* extension[loincMeasure].extension 0..0
* extension[loincMeasure].value[x] 1..1
* extension[loincMeasure].value[x] only Coding
* extension[loincMeasure].valueCoding from LARSLOINCPropertyVS (required)
* extension[loincMeasure].valueCoding.system 1..1
* extension[loincMeasure].valueCoding.system = Canonical(LARSLOINCPropertyCS)
* extension[loincMeasure].valueCoding.code 1..1
* extension[loincMeasure].valueCoding ^definition = "LOINC測量單位的屬性，即LOINC Property；若無法填寫請填入 P99:- (無提供)。"

* extension[loincTime] ^short = "LOINC檢驗時間屬性(Time)"
* extension[loincTime].extension 0..0
* extension[loincTime].value[x] 1..1
* extension[loincTime].value[x] only string
* extension[loincTime].valueString ^definition = "LOINC採檢時間，即LOINC Timing；若無法填寫請填入 T99:其他。"

* extension[loincScale] ^short = "LOINC檢驗單位屬性(Scale)"
* extension[loincScale].extension 0..0
* extension[loincScale].value[x] 1..1
* extension[loincScale].value[x] only Coding
* extension[loincScale].valueCoding from LARSLOINCScaleVS (required)
* extension[loincScale].valueCoding.system 1..1
* extension[loincScale].valueCoding.system = Canonical(LARSLOINCScaleCS)
* extension[loincScale].valueCoding.code 1..1
* extension[loincScale].valueCoding ^definition = "LOINC檢驗結果的精度，即LOINC Scale；若無法填寫請填入 S99:- (無提供)。"