Alias: $ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $ICD10CM2023 = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw
Alias: $NHIPayment = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw

Instance: organization-lars-example
InstanceOf: OrganizationLARS
Title: "醫事機構-台灣基督長老教會馬偕醫療財團法人馬偕紀念醫院"
Description: "依據醫事機構(Organization LARS)Profile 呈現通報醫事機構資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>醫事機構-台灣基督長老教會馬偕醫療財團法人馬偕紀念醫院</b>
	</h3>
	<p>
		<b>識別碼型別</b>：Provider number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PRN) </span>
	</p>
	<p>
		<b>醫事機構代碼</b>：1101100011(https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw)
	</p>
</div>"
* identifier.use = #official
* identifier.type.coding.system = $v2-0203
* identifier.type.coding.code = #PRN
* identifier.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw"
* identifier.value = "1101100011"

Instance: patient-lars-example
InstanceOf: PatientDailyReport
Title: "個案資料-TEST"
Description: "依據每日通報個案基本資料(Patient DailyReport LARS)Profile 呈現實驗室傳染病每日通報之個案基本資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>個案資料-TEST</b>
	</h3>
	<p>
		<b>識別碼型別</b>：National Person Identifier <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#NNxxx) </span>
	</p>
	<p>
		<b>身分證號</b>：A123456789(http://www.moi.gov.tw)
	</p>
	<p>
		<b>識別碼型別</b>：Medical record number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#MR) </span>
	</p>
	<p>
		<b>病歷號</b>：88001555
	</p>
	<p>
		<b>姓名(usual)</b>：TEST
	</p>
	<p>
		<b>性別</b>：男性
	</p>
	<p>
		<b>出生年</b>：1990
	</p>
	<p>
		<b>行動電話</b>：0912345678
	</p>
	<p>
		<b>公司電話</b>：0223456789
	</p>
	<p>
		<b>住家電話</b>：0223456789
	</p>
	<p>
		<b>居住地（郵遞區號）</b>：104(中山區)
	</p>
</div>"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = $v2-0203
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* identifier[medicalRecord].use = #official
* identifier[medicalRecord].type.coding.system = $v2-0203
* identifier[medicalRecord].type.coding.code = #MR
* identifier[medicalRecord].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[medicalRecord].value = "88001555"
* name[usual].use = #usual
* name[usual].text = "TEST"
* gender = #male
* birthDate = "1990"

* telecom[mobile].value = "0912345678"
* telecom[work].system = #phone
* telecom[work].use = #work
* telecom[work].value = "0223456789"
* telecom[home].system = #phone
* telecom[home].use = #home
* telecom[home].value = "0223456789"
* address.city = "104"

Instance: encounter-lars-daily-report-example
InstanceOf: EncounterDailyReport
Title: "每日通報個案就醫資料-門診"
Description: "依據每日通報個案就醫資料(Encounter DailyReport LARS)Profile 呈現個案就醫資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案就醫資料-門診-TEST</b>
	</h3>
	<p>
		<b>就醫狀態</b>：finished
	</p>
	<p>
		<b>就醫類型</b>：ambulatory(門診) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ActCode\">ActCode</a>#AMB) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>就醫日期</b>：2018-01-23 15:15:00+0800
	</p>
</div>"
* status = #finished
* class = $ActCode#AMB
* subject = Reference(patient-lars-example)
* period.start = "2018-01-23T15:15:00+08:00"

Instance: condition-lars-daily-report-example-1
InstanceOf: ConditionDailyReport
Title: "每日通報個案檢驗疾病-診斷代碼1"
Description: "依據每日通報個案檢驗疾病(Condition DailyReport LARS)Profile 呈現個案診斷代碼1。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗疾病-診斷代碼1-TEST</b>
	</h3>
	<p>
		<b>臨床狀態(FHIR預設為必填之欄位)</b>：Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-clinical\">Condition Clinical Status Codes</a>#active) </span>
	</p>
	<p>
		<b>類別(FHIR預設為必填之欄位)</b>：Encounter Diagnosis <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-category\">Condition Category Codes</a>#encounter-diagnosis) </span>
	</p>
	<p>
		<b>診斷代碼1</b>：沙門桿菌腸炎 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">ICD-10-CM 2023</a>#A02.0) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-daily-report-example.html\">Encounter/encounter-lars-daily-report-example</a>
	</p>
</div>"
* insert ConditionDailyReportExampleRule
* code.coding[icd10-cm-2023] = $ICD10CM2023#A02.0 "沙門桿菌腸炎"

Instance: condition-lars-daily-report-example-2
InstanceOf: ConditionDailyReport
Title: "每日通報個案檢驗疾病-診斷代碼2"
Description: "依據每日通報個案檢驗疾病(Condition DailyReport LARS)Profile 呈現個案診斷代碼2。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗疾病-診斷代碼2-TEST</b>
	</h3>
	<p>
		<b>臨床狀態(FHIR預設為必填之欄位)</b>：Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-clinical\">Condition Clinical Status Codes</a>#active) </span>
	</p>
	<p>
		<b>類別(FHIR預設為必填之欄位)</b>：Encounter Diagnosis <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-category\">Condition Category Codes</a>#encounter-diagnosis) </span>
	</p>
	<p>
		<b>診斷代碼2</b>：沙門桿菌敗血症 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">ICD-10-CM 2023</a>#A02.1) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-daily-report-example.html\">Encounter/encounter-lars-daily-report-example</a>
	</p>
</div>"
* insert ConditionDailyReportExampleRule
* code.coding[icd10-cm-2023] = $ICD10CM2023#A02.1 "沙門桿菌敗血症"

Instance: condition-lars-daily-report-example-3
InstanceOf: ConditionDailyReport
Title: "每日通報個案檢驗疾病-診斷代碼3"
Description: "依據每日通報個案檢驗疾病(Condition DailyReport LARS)Profile 呈現個案診斷代碼3。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗疾病-診斷代碼3-TEST</b>
	</h3>
	<p>
		<b>臨床狀態(FHIR預設為必填之欄位)</b>：Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-clinical\">Condition Clinical Status Codes</a>#active) </span>
	</p>
	<p>
		<b>類別(FHIR預設為必填之欄位)</b>：Encounter Diagnosis <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-category\">Condition Category Codes</a>#encounter-diagnosis) </span>
	</p>
	<p>
		<b>診斷代碼3</b>：局部沙門桿菌感染 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">ICD-10-CM 2023</a>#A02.20) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-daily-report-example.html\">Encounter/encounter-lars-daily-report-example</a>
	</p>
</div>"
* insert ConditionDailyReportExampleRule
* code.coding[icd10-cm-2023] = $ICD10CM2023#A02.20 "局部沙門桿菌感染"

Instance: condition-lars-daily-report-example-4
InstanceOf: ConditionDailyReport
Title: "每日通報個案檢驗疾病-診斷代碼4"
Description: "依據每日通報個案檢驗疾病(Condition DailyReport LARS)Profile 呈現個案診斷代碼4。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗疾病-診斷代碼4-TEST</b>
	</h3>
	<p>
		<b>臨床狀態(FHIR預設為必填之欄位)</b>：Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-clinical\">Condition Clinical Status Codes</a>#active) </span>
	</p>
	<p>
		<b>類別(FHIR預設為必填之欄位)</b>：Encounter Diagnosis <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-category\">Condition Category Codes</a>#encounter-diagnosis) </span>
	</p>
	<p>
		<b>診斷代碼4</b>：其他特定之沙門桿菌感染 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">ICD-10-CM 2023</a>#A02.8) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-daily-report-example.html\">Encounter/encounter-lars-daily-report-example</a>
	</p>
</div>"
* insert ConditionDailyReportExampleRule
* code.coding[icd10-cm-2023] = $ICD10CM2023#A02.8 "其他特定之沙門桿菌感染"

Instance: condition-lars-daily-report-example-5
InstanceOf: ConditionDailyReport
Title: "每日通報個案檢驗疾病-診斷代碼5"
Description: "依據每日通報個案檢驗疾病(Condition DailyReport LARS)Profile 呈現個案診斷代碼5。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗疾病-診斷代碼5-TEST</b>
	</h3>
	<p>
		<b>臨床狀態(FHIR預設為必填之欄位)</b>：Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-clinical\">Condition Clinical Status Codes</a>#active) </span>
	</p>
	<p>
		<b>類別(FHIR預設為必填之欄位)</b>：Encounter Diagnosis <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-category\">Condition Category Codes</a>#encounter-diagnosis) </span>
	</p>
	<p>
		<b>診斷代碼5</b>：沙門桿菌感染 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">ICD-10-CM 2023</a>#A02.9) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-daily-report-example.html\">Encounter/encounter-lars-daily-report-example</a>
	</p>
</div>"
* insert ConditionDailyReportExampleRule
* code.coding[icd10-cm-2023] = $ICD10CM2023#A02.9 "沙門桿菌感染"

RuleSet: ConditionDailyReportExampleRule
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* subject = Reference(patient-lars-example)
* encounter = Reference(encounter-lars-daily-report-example)
* evidence.detail = Reference(diagnosticreport-lars-daily-report-case4)

Instance: specimen-lars-example
InstanceOf: SpecimenDailyReport
Title: "檢驗檢體-血液"
Description: "依據每日通報個案檢驗檢體(Specimen DailyReport LARS)Profile 呈現檢驗報告之檢體資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>檢驗檢體-血液-TEST</b>
	</h3>
	<p>
		<b>檢體種類</b>：Bld <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-specimen-type-values.html\">CDC-LARS系統-檢體種類</a>#T011) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>收件日期</b>：2018-01-23 15:15:00
	</p>
</div>"
* type = LARSSpecimenTypeCS#T011 "Bld"
* subject = Reference(patient-lars-example)
* receivedTime = "2018-01-23T15:15:00+08:00"


Instance: diagnosticreport-lars-daily-report-case4
InstanceOf: DiagnosticReportDailyReport
Title: "每日通報個案檢驗報告-案例四"
Description: "依據每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)Profile 呈現案例四之檢驗報告。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗報告-案例四</b>
	</h3>
	<p>
		<b>報告狀態(FHIR預設為必填之欄位)</b>：final
	</p>
	<p>
		<b>報告類型</b>：Laboratory report <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://loinc.org\">LOINC</a>#11502-2) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-daily-report-example.html\">Encounter/encounter-lars-daily-report-example</a>
	</p>
	<p>
		<b>檢驗開立日期</b>：2018-02-01 11:00:00
	</p>
	<p>
		<b>報告單位</b>：<a href=\"Organization-organization-lars-example.html\">Organization/organization-lars-example</a> \"台灣基督長老教會馬偕醫療財團法人馬偕紀念醫院\"
	</p>
	<p>
		<b>檢體資料</b>：<a href=\"Specimen-specimen-lars-example.html\">Specimen/specimen-lars-example</a> \"檢驗檢體-血液\"
	</p>
	<p>
		<b>檢驗結果</b>：<a href=\"Observation-observation-lars-daily-report-loinc-example.html\">Observation/observation-lars-daily-report-loinc-example</a>
	</p>
</div>"
* status = #final
* code = http://loinc.org#11502-2
* subject = Reference(patient-lars-example)
* encounter = Reference(encounter-lars-daily-report-example)
* effectiveDateTime = "2018-02-01T11:00:00+08:00"
* performer = Reference(organization-lars-example)
* specimen = Reference(specimen-lars-example)
* result = Reference(observation-lars-daily-report-loinc-example)


Instance: observation-lars-daily-report-loinc-example
InstanceOf: ObservationDailyReportLOINC
Title: "每日通報個案檢驗檢查(LOINC)-TEST"
Description: "依據每日通報個案檢驗檢查紀錄(LOINC)(Observation DailyReport LARS (LOINC))Profile 呈現個案檢驗檢查資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗檢查(LOINC)-TEST</b>
	</h3>
	<p>
		<b>檢驗序號</b>：123456789
	</p>
	<p>
		<b>檢驗狀態(FHIR預設為必填之欄位)</b>：final
	</p>
	<p>
		<b>檢驗類別</b>：Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/observation-category\">ObservationCategoryCodes</a>#laboratory) </span>
	</p>
	<p>
		<b>檢驗項目</b>：Bacteria identified in Blood by Culture <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://loinc.org\">LOINC</a>#600-7) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>檢驗日期</b>：2018-01-23 15:15:00+0800
	</p>
	<p>
		<b>檢驗結果</b>：Salmonella enterica
	</p>
	<p>
		<b>結果判讀</b>：Positive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation\">ObservationInterpretation</a>#POS) </span>
	</p>
	<p>
		<b>參考值</b>：無參考值
	</p>
	<p>
		<b>備註</b>：無備註
	</p>
	<p>
		<b>檢體資料</b>：<a href=\"Specimen-specimen-lars-example.html\">Specimen/specimen-lars-example</a> \"檢驗檢體-血液\"
	</p>
	<p>
		<b>健保檢驗項目</b>：06013C <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw\">全民健康保險醫療服務給付項目</a>#06013C) </span>
	</p>
</div>"
* identifier.value = "123456789"
* status = #final
* code.coding[LOINCObservationCode] = $LOINC#600-7 "Bacteria identified in Blood by Culture"
* subject = Reference(patient-lars-example)
* effectiveDateTime = "2018-01-23T15:15:00+08:00"
* valueString = "Salmonella enterica"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* referenceRange.text = "無參考值"
* note.text = "無備註"
* specimen = Reference(specimen-lars-example)
* component[LARSnhipayment].code.coding[TWLaboratoryCategory] = $NHIPayment#06013C


Instance: observation-lars-daily-report-example
InstanceOf: ObservationDailyReport
Title: "每日通報個案檢驗檢查(無適用LOINC Code)-TEST"
Description: "依據每日通報個案檢驗檢查Code=99999(Observation DailyReport LARS)Profile 呈現無適用LOINC Code之個案檢驗檢查資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗檢查(無適用LOINC Code)-TEST</b>
	</h3>
	<p>
		<b>LOINC檢驗項目名稱</b>：Salmonella sp Ab <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-loinc-Component-values.html\">CDC-LARS系統-檢驗項目</a>#Salmsp002) </span>
	</p>
	<p>
		<b>LOINC檢驗時間屬性</b>：Pt
	</p>
	<p>
		<b>LOINC測量單位屬性</b>：Titr <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-loinc-property-values.html\">CDC-LARS系統-LOINC測量單位屬性(Property)</a>#P21) </span>
	</p>
	<p>
		<b>LOINC檢驗單位屬性</b>：Qn <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-loinc-scale-values.html\">CDC-LARS系統-LOINC檢驗單位屬性(Scale)</a>#S01) </span>
	</p>
	<p>
		<b>檢驗序號</b>：123456790
	</p>
	<p>
		<b>檢驗狀態</b>：final
	</p>
	<p>
		<b>檢驗類別</b>：Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/observation-category\">ObservationCategoryCodes</a>#laboratory) </span>
	</p>
	<p>
		<b>檢驗項目</b>：無LOINC code可對應使用 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-code-values.html\">CDC-LARS系統代碼</a>#99999) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-example.html\">Patient/patient-lars-example</a> \"TEST\"
	</p>
	<p>
		<b>檢驗報告日期時間</b>：2018-01-23 15:15:00+0800
	</p>
	<p>
		<b>檢驗結果</b>：160 titer
	</p>
	<p>
		<b>結果判讀</b>：Positive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation\">ObservationInterpretation</a>#POS) </span>
	</p>
	<p>
		<b>檢驗方法</b>：Agglutination <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-lab-method-values.html\">CDC-LARS系統-檢驗方法</a>#M012) </span>
	</p>
	<p>
		<b>參考值</b>：&lt;1:80
	</p>
	<p>
		<b>備註</b>：##01
	</p>
	<p>
		<b>檢體資料</b>：<a href=\"Specimen-specimen-lars-example.html\">Specimen/specimen-lars-example</a> \"檢驗檢體-血液\"
	</p>
	<p>
		<b>無健保批價碼</b>：999999(除SARS-CoV-2之其他病原體無健保批價碼或自費) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-code-values.html\">CDC-LARS系統代碼</a>#999999) </span>
	</p>
</div>"
* extension[loinc].extension[loincComponent].valueCoding = LARSLOINCComponentCS#Salmsp002 "Salmonella sp Ab"
* extension[loinc].extension[loincTime].valueString = "Pt"
* extension[loinc].extension[loincMeasure].valueCoding = LARSLOINCPropertyCS#P21 "Titr"
* extension[loinc].extension[loincScale].valueCoding = LARSLOINCScaleCS#S01 "Qn"
* identifier.value = "123456790"
* status = #final
* code.coding[LARSLOINCObservationCode] = LARSCodeCS#99999 "無LOINC code可對應使用"
* subject = Reference(patient-lars-example)
* effectiveDateTime = "2018-01-23T15:15:00+08:00"
* valueQuantity.value = 160
* valueQuantity.unit = "titer"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* method = LARSLabMethodCS#M012 "Agglutination"
* referenceRange.text = "<1:80"
* note.text = "##01"
* specimen = Reference(specimen-lars-example)
* component[LARSnhipayment].code.coding[0] = LARSCodeCS#999999 "除SARS-CoV-2之其他病原體無健保批價碼或自費"

Instance: messageheader-lars-daily-report-example
InstanceOf: MessageHeaderDailyReport
Title: "每日通報個案通報訊息-案例四"
Description: "依據每日通報個案通報訊息(MessageHeader DailyReport LARS)Profile 呈現案例四之通報訊息表頭。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案通報訊息-案例四</b>
	</h3>
	<p>
		<b>訊息事件</b>：Laboratory report <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://loinc.org\">LOINC</a>#11502-2) </span>
	</p>
	<p>
		<b>發送單位</b>：<a href=\"Organization-organization-lars-example.html\">Organization/organization-lars-example</a> \"台灣基督長老教會馬偕醫療財團法人馬偕紀念醫院\"
	</p>
	<p>
		<b>訊息來源端點</b>：https://cdc.gov.tw/lars/source/1101100011
	</p>
	<p>
		<b>訊息焦點</b>：<a href=\"Condition-condition-lars-daily-report-example-1.html\">Condition/condition-lars-daily-report-example-1</a> \"沙門桿菌腸炎\"
	</p>
</div>"
* eventCoding = http://loinc.org#11502-2 "Laboratory report"
* sender = Reference(organization-lars-example)
* source.endpoint = "https://cdc.gov.tw/lars/source/1101100011"
* focus = Reference(condition-lars-daily-report-example-1)

Instance: bundle-lars-daily-report-example
InstanceOf: BundleDailyReport
Title: "實驗室傳染病每日通報個案上傳-案例四"
Description: "依據實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)Profile 呈現案例四之每日通報上傳訊息，內含通報訊息表頭、醫事機構、個案、就醫、檢驗疾病、檢驗報告、檢驗檢查及檢體資料。"
Usage: #example
* identifier.value = "20180201000001"
* type = #message
* timestamp = "2018-02-01T11:30:00+08:00"
* entry[0].fullUrl = "https://cdc.gov.tw/lars/MessageHeader/messageheader-lars-daily-report-example"
* entry[0].resource = messageheader-lars-daily-report-example
* entry[1].fullUrl = "https://cdc.gov.tw/lars/Organization/organization-lars-example"
* entry[1].resource = organization-lars-example
* entry[2].fullUrl = "https://cdc.gov.tw/lars/Patient/patient-lars-example"
* entry[2].resource = patient-lars-example
* entry[3].fullUrl = "https://cdc.gov.tw/lars/Encounter/encounter-lars-daily-report-example"
* entry[3].resource = encounter-lars-daily-report-example
* entry[4].fullUrl = "https://cdc.gov.tw/lars/Condition/condition-lars-daily-report-example-1"
* entry[4].resource = condition-lars-daily-report-example-1
* entry[5].fullUrl = "https://cdc.gov.tw/lars/Condition/condition-lars-daily-report-example-2"
* entry[5].resource = condition-lars-daily-report-example-2
* entry[6].fullUrl = "https://cdc.gov.tw/lars/Condition/condition-lars-daily-report-example-3"
* entry[6].resource = condition-lars-daily-report-example-3
* entry[7].fullUrl = "https://cdc.gov.tw/lars/Condition/condition-lars-daily-report-example-4"
* entry[7].resource = condition-lars-daily-report-example-4
* entry[8].fullUrl = "https://cdc.gov.tw/lars/Condition/condition-lars-daily-report-example-5"
* entry[8].resource = condition-lars-daily-report-example-5
* entry[9].fullUrl = "https://cdc.gov.tw/lars/DiagnosticReport/diagnosticreport-lars-daily-report-case4"
* entry[9].resource = diagnosticreport-lars-daily-report-case4
* entry[10].fullUrl = "https://cdc.gov.tw/lars/Observation/observation-lars-daily-report-loinc-example"
* entry[10].resource = observation-lars-daily-report-loinc-example
* entry[11].fullUrl = "https://cdc.gov.tw/lars/Specimen/specimen-lars-example"
* entry[11].resource = specimen-lars-example
