Profile: ObservationMonthlyReport
Parent: TWCoreObservationLaboratoryResult
Id: observation-lars-monthly-report
Title: "每日總收件數檢驗檢查(Observation MonthlyReport LARS)"
Description: "此每日總收件數檢驗檢查(Observation MonthlyReport LARS)Profile說明本IG如何進一步定義臺灣核心-實驗室檢驗檢查(TW Core Observation Laboratory Result) Profile，以呈現實驗室傳染病每日總收件數之檢驗檢查資料。"
* ^version = "0.0.1"

* status = #final
* status ^short = "【此欄位為FHIR必填欄位】" 


* code.coding[LOINCObservationCode] 0..0
* code obeys nhi-or-no-nhi-code
* code ^short = "健保批價碼與無健保批價碼兩者需擇一填寫。"

* code.coding[TWLaboratoryCategory] 0..1 MS
* code.coding[TWLaboratoryCategory] ^short = "健保批價碼"

* code.coding contains
    LARSNoNHICode 0..1 MS
* code.coding[LARSNoNHICode] ^short = "無健保批價碼，888888:SARS-CoV-2無健保批價碼或自費 | 999999:除SARS-CoV-2之其他病原體無健保批價碼或自費"
* code.coding[LARSNoNHICode].system 1..1
* code.coding[LARSNoNHICode].system = Canonical(LARSCodeCS)
* code.coding[LARSNoNHICode].code 1..1
* code.coding[LARSNoNHICode] from LARSNoNHICodeVS (required)

* subject ^short = "【此欄位為FHIR必填欄位】個案資料（每日總收件數為統計資料，沿用臺灣核心Patient）"

* valueInteger 1..1 MS
* valueInteger ^short = "檢驗總件數"

* specimen ^short = "檢體種類"
* specimen only Reference(SpecimenMonthlyReport)


Invariant: nhi-or-no-nhi-code
Description: "code.coding 必須填入「健保批價碼」(TWLaboratoryCategory) 或「無健保批價碼或自費」(LARSNoNHICode) 其中之一。"
Expression: "coding.where(system = 'https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw').exists() or coding.where(system = 'https://cdc.gov.tw/lars/CodeSystem/lars-code-values').exists()"
Severity: #error
