Profile: PatientDailyReport
Parent: TWCorePatient
Id: patient-lars-daily-report
Title: "每日通報個案基本資料(Patient DailyReport LARS)"
Description: "此每日通報個案基本資料(Patient DailyReport LARS)Profile 說明本IG如何進一步定義臺灣核心-病患(TW Core Patient) Profile以呈現實驗室傳染病自動通報之個案基本資料。"
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

* identifier 2..2
* identifier ^short = "請填入「院內病歷號」以及「IDNO」。若已有檢驗結果，但尚未取得證號者，IDNO欄位先輸入特定暫用格式，取得證號後再更新該筆資料。"
* identifier ^slicing.rules = #closed
* identifier contains
	temp 0..1 MS
* identifier[temp].type.coding.code = #PNT
* identifier[temp].type.coding.display = "Temporary Living Subject Number"
* identifier[temp].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[temp] ^short = "已有檢驗結果，但尚未取得證號者，請使用此暫用格式。請依下列規定填入。(1) 本國人「小於」6個月者請填入「AA+民國年月日+當天的流水碼(2碼)」。 (2)本國人「大於」6個月者請填入「BB+民國年月日+當天的流水碼(2碼)」。 (3)外國人請填入「CC+民國年月日+當天的流水碼(2碼)」"

* identifier[residentNumber] obeys resident-number
* . obeys patient-gender-match

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
* address.city from LARSResidenceVS (required)


Invariant: resident-number
Description: "居留證號格式為：「1碼英文+9碼數字」或「2碼英文+8碼數字」。"
Expression: "value.matches('^([A-Za-z][0-9]{9}|[A-Za-z]{2}[0-9]{8})$')"
Severity: #error

Invariant: patient-gender-match
Description: "gender依據identifier:idCardNumber第二位字符檢核男性與女性代碼 (1=male, 2=female)"
Expression: "identifier.where(system = 'http://www.moi.gov.tw').value.exists() implies (identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '1' implies gender = 'male') and (identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '2' implies gender = 'female')"
Severity: #warning
