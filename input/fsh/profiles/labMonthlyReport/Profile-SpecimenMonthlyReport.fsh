Profile:  SpecimenMonthlyReport
Parent:   Specimen
Id:       specimen-lars-monthly-report
Title:    "每日總收件數檢驗檢體(Specimen MonthlyReport LARS)"
Description: "此每日總收件數檢驗檢體(Specimen MonthlyReport LARS)Profile說明本IG如何進一步定義FHIR Specimen Resource，以呈現每日總收件數之檢體資料。

本Profile未繼承臺灣核心-檢體(TW Core Specimen) Profile，係因TW Core Specimen要求subject（病人）為必填；而每日總收件數之檢體資料係依檢體種類及收件日期彙總，非屬單一病人之檢體，無法提供subject，故改以FHIR原生Specimen Resource為基礎進行定義。"
* ^version = "0.0.1"

* receivedTime 1..1 MS
* receivedTime ^short = "檢體收件日期時間，格式為YYYY-MM-DDThh:mm:ss+zz:zz。"
* receivedTime ^example.label = "檢體收件日期時間"
* receivedTime ^example.valueDateTime = "2024-03-31T10:03:45+08:00"

* type 1..1 MS 
* type ^short = "檢體種類"
* type from LARSSpecimenTypeVS (required)