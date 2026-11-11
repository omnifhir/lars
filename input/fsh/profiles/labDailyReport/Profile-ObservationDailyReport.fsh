Profile: ObservationDailyReport
Parent: TWCoreObservationLaboratoryResult
Id: observation-lars-daily-report
Title: "每日通報個案檢驗檢查Code=99999(Observation DailyReport LARS)"
Description: "此每日通報個案檢驗檢查Code=99999(Observation DailyReport LARS)Profile說明本IG如何進一步定義臺灣核心-實驗室檢驗檢查(TW Core Observation Laboratory Result) Profile，以呈現實驗室傳染病每日通報個案之檢驗檢查資料。"
* ^version = "0.0.1"

* identifier ^short = "檢驗序號，醫院內部唯一的檢驗代碼。醫院端可自行組合所有相關代碼後上傳。例：檢驗管號+檢驗序號。"

* status = #final
* status ^short = "【此欄位為FHIR必填欄位】" 

* code.coding[TWLaboratoryCategory] 0..0
* code.coding[LOINCObservationCode] 0..0

* code 1..1 MS
* code.coding contains 
    LARSLOINCObservationCode 1..1 MS
* code.coding[LARSLOINCObservationCode] ^short = "無適用LOINC Code"
* code.coding[LARSLOINCObservationCode] 1..
* code.coding[LARSLOINCObservationCode] from LARSNoLOINCCodeVS (required)
* code.coding[LARSLOINCObservationCode].system = "https://cdc.gov.tw/lars/CodeSystem/lars-code-values"
* code.coding[LARSLOINCObservationCode].code = #99999

* subject only Reference(PatientDailyReport)

* method 1..1 MS 
* method ^short = "LOINC檢驗方法，即LOINC Method；若無法填寫請填入 M999:NULL (Method not specified)。"
* method from LARSLabMethodVS (required)



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
* note ^short = "備註，1. ALT 結果：若 INSPECTION_ITEM 為 A、B、C 肝，且「相同檢體收件日」有檢驗 ALT 時，須同時上傳 ALT 結果，格式為「ALT=數值+單位」，例如：`ALT=10U/L`。
2. 院區判斷碼：當申請醫院為多院區時，須註明院區判斷碼，格式為 `##` 開頭加 2 位數字，例如：`##01` 為 A 院區、`##02` 為 B 院區，以此類推，並須提供院區對應表。
3. 分隔方式：多筆備註資訊請以分號「;」區隔，例如：`ALT=10U/L;##01`。"

* note ^comment = """
備註填寫規則：

1. **ALT 結果**：若 INSPECTION_ITEM 為 A、B、C 肝，且「相同檢體收件日」有檢驗 ALT 時，須同時上傳 ALT 結果，格式為「ALT=數值+單位」，例如：`ALT=10U/L`。
2. **院區判斷碼**：當申請醫院為多院區時，須註明院區判斷碼，格式為 `##` 開頭加 2 位數字，例如：`##01` 為 A 院區、`##02` 為 B 院區，以此類推，並須提供院區對應表。
3. **分隔方式**：多筆備註資訊請以分號「;」區隔，例如：`ALT=10U/L;##01`。
"""

* specimen ^short = "LOINC檢體種類，即LOINC System；若無法填寫請填入 T999:XXX (To be specified in another part of the message)。"
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


* extension contains LOINCInfo named loinc 1..1 MS
* extension[loinc] ^short = "LOINC代碼及檢驗時間、測量單位與檢驗單位屬性"