Logical: RlabDailyReportModel
Id: labDailyReportModel
Title: "實驗室資料自動通報之每日通報個案(labDailyReport)之資料模型"
Description: "實驗室資料自動通報之每日通報個案(labDailyReport)之資料模型"
* ^version = "0.1.0"

* hsNo 1..1 string "通報資料流水號" "通報資料流水號（由醫院端產生），代碼產生原則「西元年4碼+月+日+流水號(6碼)」共計14碼。"
* hsNo ^example.label = "通報資料流水號"
* hsNo ^example.valueString = "20130801000001"


* transferTime 1..1 string "通報資料傳輸時間" "通報資料傳輸時間，格式：YYYYMMDDHHMM。"
* transferTime ^example.label = "通報資料傳輸時間"
* transferTime ^example.valueString = "201308011030"

* hospital 1..1 string "醫事機構代碼" "醫事機構代碼"
* hospital ^example.label = "醫事機構代碼"
* hospital ^example.valueString = "1101100011"

* anamnesis 1..1 string "院內病歷號" "院內病歷號"
* anamnesis ^example.label = "院內病歷號"
* anamnesis ^example.valueString = "MR000001"

* name 1..1 string "病患姓名" "病患姓名"
* name ^example.label = "病患姓名"
* name ^example.valueString = "王大明"

* idno 1..1 string "身分證字號、護照號碼、居留證號或暫用證號" "身分證字號、護照號碼、居留證號或暫用格式：(1) 本國新生兒(報告日期-出生日期 < 6個月)，請填入「AA+民國年月日+當天的流水碼(2碼)」。 (2) 本國人士請填入「BB+民國年月日+當天的流水碼(2碼)」。 (3) 外國人士請填入「CC+民國年月日+當天的流水碼(2碼)」。"
* idno ^example.label = "身分證字號、護照號碼、居留證號或暫用證號"
* idno ^example.valueString = "A123456789"

* sex 1..1 string "性別"
* sex ^example.label = "性別"
* sex ^example.valueString = "01"

* birthday 1..1 string "出生年" "出生年，格式為 YYYY"
* birthday ^example.label = "出生年"
* birthday ^example.valueString = "1996"

* mobile 0..1 string "病患手機號碼" "病患手機號碼"
* mobile ^example.label = "病患手機號碼"
* mobile ^example.valueString = "0912345678"

* telCompany 0..1 string "病患公司電話" "病患公司電話"
* telCompany ^example.label = "病患公司電話"
* telCompany ^example.valueString = "0223456789"

* telHouse 0..1 string "病患住宅電話" "病患住宅電話"
* telHouse ^example.label = "病患住宅電話"
* telHouse ^example.valueString = "0223456789"

* residence 1..1 string "通訊地縣市鄉鎮代碼" "通訊地縣市鄉鎮代碼；若無則為戶籍地。"
* residence ^example.label = "通訊地縣市鄉鎮代碼"
* residence ^example.valueString = "0101"

* diagnoseDay 1..1 string "就醫日期時間" "就醫日期時間，格式為 YYYYMMDDHHMM。"
* diagnoseDay ^example.label = "就醫日期時間"
* diagnoseDay ^example.valueString = "201308010830"

* medicalType 1..1 string "就醫類型" "就醫類型"
* medicalType ^example.label = "就醫類型"
* medicalType ^example.valueString = "01"

* diagnoseCode1 1..1 string "診斷代碼1" "診斷代碼1"
* diagnoseCode1 ^example.label = "診斷代碼1"
* diagnoseCode1 ^example.valueString = "XXXX"

* diagnoseCode2 0..1 string "診斷代碼2" "診斷代碼2"
* diagnoseCode2 ^example.label = "診斷代碼2"
* diagnoseCode2 ^example.valueString = "XXXX"

* diagnoseCode3 0..1 string "診斷代碼3" "診斷代碼3"
* diagnoseCode3 ^example.label = "診斷代碼3"
* diagnoseCode3 ^example.valueString = "XXXX"

* diagnoseCode4 0..1 string "診斷代碼4" "診斷代碼4"
* diagnoseCode4 ^example.label = "診斷代碼4"
* diagnoseCode4 ^example.valueString = "XXXX"

* diagnoseCode5 0..1 string "診斷代碼5" "診斷代碼5"
* diagnoseCode5 ^example.label = "診斷代碼5"
* diagnoseCode5 ^example.valueString = "XXXX"

* inspectionCreatetime 1..1 string "檢驗開立日期時間" "檢驗開立日期時間，格式為 YYYYMMDDHHMM。"
* inspectionCreatetime ^example.label = "檢驗開立日期時間"
* inspectionCreatetime ^example.valueString = "201308010900"

* inspectionSno 1..1 string "檢驗序號" "檢驗序號，醫院內部唯一的檢驗代碼。醫院端可自行組合所有相關代碼後上傳。例：檢驗管號+檢驗序號。"
* inspectionSno ^example.label = "檢驗序號" 
* inspectionSno ^example.valueString = "LAB201308010001"

* inspectionItem 1..1 string "檢驗項目名稱" "檢驗項目名稱"
* inspectionItem ^example.label = "檢驗項目名稱"
* inspectionItem ^example.valueString = "Salmsp001"

* sampleReceivetime 1..1 string "檢體收件日期時間" "檢體收件日期時間，格式為 YYYYMMDDHHMM。"
* sampleReceivetime ^example.label = "檢體收件日期時間"
* sampleReceivetime ^example.valueString = "201308010930"

* nhiCode 1..1 string "健保批價碼" "健保批價碼"
* nhiCode ^example.label = "健保批價碼"
* nhiCode ^example.valueString = "06013C"

* sampleType 1..1 string "檢體種類" "檢體種類"
* sampleType ^example.label = "檢體種類"
* sampleType ^example.valueString = "T011"

* inspectionMethod 1..1 string "檢驗方法" "檢驗方法"
* inspectionMethod ^example.label = "檢驗方法"
* inspectionMethod ^example.valueString = "M049"

* units 1..1 string "測量單位" "測量單位"
* units ^example.label = "測量單位"
* units ^example.valueString = "titer"

* inspectionReporttime 1..1 string "檢驗報告日期時間" "檢驗報告日期時間，格式為 YYYYMMDDHHMM。"
* inspectionReporttime ^example.label = "檢驗報告日期時間"
* inspectionReporttime ^example.valueString = "201308011000"

* inspectionResult 1..1 string "檢驗結果" "檢驗結果，文字描述。"
* inspectionResult ^example.label = "檢驗結果"
* inspectionResult ^example.valueString = "1ppm"

* inspectionResult1 0..1 string "抗藥性檢測結果" "抗藥性檢測結果，文字描述。"
* inspectionResult1 ^example.label = "抗藥性檢測結果"
* inspectionResult1 ^example.valueString = "Ampicillin:R;Cefixime:S;Ceftriaxone:S;"

* inspectionRef 0..1 string "檢驗參考值" "檢驗參考值，文字描述。"
* inspectionRef ^example.label = "檢驗參考值"
* inspectionRef ^example.valueString = "<1:40"

* interpretationResult 1..1 string "判讀後的檢驗結果" "判讀後的檢驗結果，經過與檢驗參考值比對後的檢驗結果。"
* interpretationResult ^example.label = "判讀後的檢驗結果"
* interpretationResult ^example.valueString = "01"

* memo 0..1 string "備註" "備註，文字描述。"
* memo ^example.label = "備註"
* memo ^example.valueString = "無"

* loincTime 1..1 string "LOINC檢驗時間屬性" "LOINC檢驗時間屬性（可參考 LOINC 中的 Time 值）"
* loincTime ^example.label = "LOINC檢驗時間屬性"
* loincTime ^example.valueString = "T01"

* loincMeasure 1..1 string "LOINC測量單位屬性" "LOINC測量單位屬性（可參考 LOINC 中 Property 的值）"
* loincMeasure ^example.label = "LOINC測量單位屬性"
* loincMeasure ^example.valueString = "P01"

* loincScale 1..1 string "LOINC檢驗單位屬性" "LOINC檢驗單位屬性（可參考 LOINC 中 Scale 的值）"
* loincScale ^example.label = "LOINC檢驗單位屬性"
* loincScale ^example.valueString = "S02"

* loinc 0..1 string "LOINC代碼" "LOINC代碼"
* loinc ^example.label = "LOINC代碼"
* loinc ^example.valueString = "6584-7"

// -----------------------------Mapping-----------------------------

Mapping: LARSDailyReportBundle
Id: LARSDailyReportBundle
Title: "Mapping to LARS Bundle"
Source: RlabDailyReportModel
Target: "http://hl7.org/fhir/StructureDefinition/Bundle"
* hsNo -> "Bundle.identifier"
* transferTime -> "Bundle.timestamp"

Mapping: LARSDailyReportOrganization
Id: LARSDailyReportOrganization
Title: "Mapping to LARS Organization"
Source: RlabDailyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/organization-lars"
* hospital -> "Organization.identifier"

Mapping: LARSDailyReportPatient
Id: LARSDailyReportPatient
Title: "Mapping to LARS Patient"
Source: RlabDailyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/patient-lars"
* anamnesis -> "Patient.identifier:medicalRecord"
* name -> "Patient.name:usual.text"
* idno -> "Patient.identifier:idCardNumber"
* idno -> "Patient.identifier:passportNumber"
* idno -> "Patient.identifier:residentNumber"
* idno -> "Patient.identifier:temp"
* sex -> "Patient.gender"
* birthday -> "Patient.birthDate"
* mobile -> "Patient.telecom:mobile.value"
* telCompany -> "Patient.telecom:work.value"
* telHouse -> "Patient.telecom:home.value"
* residence -> "Patient.address.city"

Mapping: LARSDailyReportEncounter
Id: LARSDailyReportEncounter
Title: "Mapping to LARS Encounter"
Source: RlabDailyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/encounter-lars-dailyReport"
* diagnoseDay -> "Encounter.period.start"
* medicalType -> "Encounter.class"

Mapping: LARSDailyReportCondition
Id: LARSDailyReportCondition
Title: "Mapping to LARS Condition"
Source: RlabDailyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/condition-lars-dailyReport"
* diagnoseCode1 -> "Condition.code"
* diagnoseCode2 -> "Condition.code"
* diagnoseCode3 -> "Condition.code"
* diagnoseCode4 -> "Condition.code"
* diagnoseCode5 -> "Condition.code"
* inspectionSno -> "Condition.evidence.detail"

Mapping: LARSDailyReportDiagnosticReport
Id: LARSDailyReportDiagnosticReport
Title: "Mapping to LARS DiagnosticReport"
Source: RlabDailyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/diagnosticreport-lars-dailyReport"
* inspectionCreatetime -> "DiagnosticReport.effectiveDateTime"
* hospital -> "DiagnosticReport.performer"
* idno -> "DiagnosticReport.subject"
* medicalType -> "DiagnosticReport.encounter"
* inspectionItem -> "DiagnosticReport.result"

Mapping: LARSDailyReportObservation
Id: LARSDailyReportObservation
Title: "Mapping to LARS Observation"
Source: RlabDailyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/observation-lars-dailyReport"
* inspectionSno -> "Observation.identifier"
* inspectionItem -> "Observation.code"
* nhiCode -> "Observation.component:TWLARSMedicalServicePayment.code"
* inspectionMethod -> "Observation.method"
* units -> "Observation.valueQuantity.unit"
* inspectionReporttime -> "Observation.effectiveDateTime"
* inspectionResult -> "Observation.valueQuantity.value"
* inspectionResult1 -> "Observation.component.valueString"
* inspectionRef -> "Observation.referenceRange"
* interpretationResult -> "Observation.interpretation"
* memo -> "Observation.note"
* loincTime -> "Observation.extension:loinc"
* loincMeasure -> "Observation.extension:loinc"
* loincScale -> "Observation.extension:loinc"
* loinc -> "Observation.extension:loinc"
* sampleType -> "Observation.specimen"

Mapping: LARSDailyReportSpecimen
Id: LARSDailyReportSpecimen
Title: "Mapping to LARS Specimen"
Source: RlabDailyReportModel
Target: "https://twlars.cdc.gov.tw/twlars/StructureDefinition/specimen-lars"
* sampleReceivetime -> "Specimen.receivedTime"
* sampleType -> "Specimen.type"

