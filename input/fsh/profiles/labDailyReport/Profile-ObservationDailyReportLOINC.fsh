Profile: ObservationDailyReportLOINC
Parent: TWCoreObservationLaboratoryResult
Id: observation-lars-daily-report-loinc
Title: "每日通報個案檢驗檢查紀錄(LOINC)(Observation DailyReport LARS (LOINC))"
Description: "此每日通報個案檢驗檢查紀錄(LOINC)(Observation DailyReport LARS (LOINC))Profile 說明本 IG 如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile，以呈現實驗室傳染病每日通報個案之檢驗檢查資料，並以 LOINC 編碼識別檢驗檢查項目。"
* ^version = "0.0.1"

* identifier ^short = "檢驗序號，醫院內部唯一的檢驗代碼。"

* status = #final
* status ^short = "【此欄位為FHIR必填欄位】" 

* code.coding[TWLaboratoryCategory] 0..0
* code.coding[LOINCObservationCode] ^short = "LOINC Code"
* code.coding[LOINCObservationCode] 1..
//若LOINC範圍有不同，就需要在設定以下這部分
//* code.coding[LARSLOINCObservationCode] ^short = "檢驗項目名稱"
//* code.coding[LARSLOINCObservationCode] 1..
//* code.coding[LARSLOINCObservationCode] from 

* subject only Reference(PatientDailyReport)


* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "檢驗報告日期時間(發檢驗報告後7日內須將資料上傳)，格式為 YYYYMMDDHHMM。"


* value[x] 1..1 MS
* value[x] only Quantity or string

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "檢驗結果，填入數值型檢驗結果"

* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "測量單位，例：CPM、titer、mIU/mL"

* valueString MS
* valueString ^short = "檢驗結果，填入文字描述；使用本型別時，來源測量單位預設為99（無測量單位）"

* interpretation 1..1 MS
* interpretation ^short = "判讀後的檢驗結果，經過與檢驗參考值比對後的檢驗結果；POS:陽性 | NEG:陰性。"
* interpretation from HL7TestResultVS (required)

* referenceRange 0..1 MS
* referenceRange ^short = "檢驗參考值，文字描述。"
* referenceRange.text 1..1 MS
* referenceRange.text ^short = "檢驗參考值，文字描述。"

* note MS 
* note ^short = "備註"

* specimen ^short = "檢體種類"
* specimen only Reference(SpecimenDailyReport)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains

    LARSnhipayment 0..1 MS and
    DrugResistanceResult 0..1 MS

* component[LARSnhipayment] ^short = "健保批價碼"
* component[LARSnhipayment].code obeys nhi-or-no-nhi-code
* component[LARSnhipayment].code ^short = "健保批價碼與無健保批價碼兩者需擇一填寫。"
* component[LARSnhipayment].code.coding[LOINCObservationCode] 0..0


* component[LARSnhipayment].code.coding[TWLaboratoryCategory] 0..1 MS
* component[LARSnhipayment].code.coding[TWLaboratoryCategory] ^short = "健保批價碼"

* component[LARSnhipayment].code.coding contains
    LARSNoNHICode 0..1 MS
* component[LARSnhipayment].code.coding[LARSNoNHICode] ^short = "無健保批價碼，888888:SARS-CoV-2無健保批價碼或自費 | 999999:除SARS-CoV-2之其他病原體無健保批價碼或自費"
* component[LARSnhipayment].code.coding[LARSNoNHICode].system 1..1
* component[LARSnhipayment].code.coding[LARSNoNHICode].system = Canonical(LARSCodeCS)
* component[LARSnhipayment].code.coding[LARSNoNHICode].code 1..1
* component[LARSnhipayment].code.coding[LARSNoNHICode] from LARSNoNHICodeVS (required)

* component[DrugResistanceResult] ^short = "抗藥性檢測結果"
* component[DrugResistanceResult].code = LARSFHIRNeedCodeCS#抗藥性檢測結果 "抗藥性檢測結果"
* component[DrugResistanceResult].value[x] 1..1 MS
* component[DrugResistanceResult].value[x] only string
* component[DrugResistanceResult].valueString ^short = "抗藥性的檢測結果值"