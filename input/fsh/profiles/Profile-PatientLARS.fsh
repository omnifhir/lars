Profile: PatientLARS
Parent: TWCorePatient
Id: patient-lars
Title: "個案資料(Patient LARS)"
Description: "此個案資料(Patient LARS)Profile 說明本IG如何進一步定義臺灣核心-病患(TW Core Patient) Profile以呈現實驗室傳染病自動通報之個案基本資料。"
* ^version = "0.0.1"

* name 1..1
* name[usual] ^short = "病患姓名"
* name[usual] 1..1 MS
* name[usual].text 1..1 MS

* name[official] 0..0
* name[temp] 0..0
* name[anonymous] 0..0

* gender ^short = "female:女 | male:男 | other:其他"

* birthDate ^short = "出生年，格式為 YYYY。"

* identifier 1..1
* identifier ^slicing.rules = #closed
* identifier contains
	temp 0..1 MS
* identifier[temp].type.coding.code = #PNT
* identifier[temp].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[temp] ^short = "倘無法取得其餘3種證號時，請依下列規定填入「AA、BB或CC」。(1) 本國新生兒(報告日期-出生日期 < 6個月)，請填入「AA」。 (2) 本國人士請填入「BB」。 (3) 外國人士請填入「CC」。"

* identifier[residentNumber] obeys resident-number


* telecom 1..*
* telecom.system = #phone
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "use"
* telecom ^slicing.rules = #open
* telecom contains
    mobile 0..1 MS and
    work 0..1 MS and
    home 0..1 MS
* telecom[mobile] ^short = "病患手機號碼"
* telecom[mobile].use 1..1
* telecom[mobile].use = #mobile
* telecom[mobile].value ^short = "病患手機號碼"
* telecom[work] ^short = "病患公司電話"
* telecom[work].use 1..1
* telecom[work].use = #work
* telecom[work].value ^short = "病患公司電話"
* telecom[home] ^short = "病患住宅電話"
* telecom[home].use 1..1
* telecom[home].use = #home
* telecom[home].value ^short = "病患住宅電話"

* address 1..1 MS
* address.city 1..1 MS
* address ^short = "通訊地縣市鄉鎮代碼；若無則為戶籍地。"
* address.city from TWLARSResidenceVS (required)


Invariant: resident-number
Description: "居留證號格式為：「1碼英文+9碼數字」或「2碼英文+8碼數字」。"
Expression: "value.matches('^([A-Za-z][0-9]{9}|[A-Za-z]{2}[0-9]{8})$')"
Severity: #error