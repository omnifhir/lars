Profile:  SpecimenLARS
Parent:   TWCoreSpecimen
Id:       specimen-lars
Title:    "檢驗檢體(Specimen LARS)"
Description: "此檢驗檢體(Specimen LARS)Profile說明本IG如何進一步定義FHIR的Specimen Resource以呈現檢驗報告之檢體資料"
* ^version = "0.0.1"

* receivedTime 1..1 MS
* receivedTime ^short = "檢體收件日期時間，格式為YYYY-MM-DDThh:mm:ss+zz:zz。"
* receivedTime ^example.label = "檢體收件日期時間"
* receivedTime ^example.valueDateTime = "2024-03-31T10:03:45+08:00"

* type 1..1 MS 
* type ^short = "檢體種類"
* type from TWLARSSpecimenTypeVS (required)

* subject only Reference(PatientLARS)