// 實驗室傳染病每日通報－案例一（資料來源：Excel 案例一，HS_NO 20261104000001）
Alias: $ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $ICD10CM2023 = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw
Alias: $NHIPayment = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw

Instance: organization-lars-case1
InstanceOf: OrganizationLARS
Title: "醫事機構-0131060029"
Description: "依據醫事機構(Organization LARS)Profile 呈現案例一之通報醫事機構資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>醫事機構-0131060029</b>
	</h3>
	<p>
		<b>識別碼型別</b>：Provider number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PRN) </span>
	</p>
	<p>
		<b>醫事機構代碼</b>：0131060029(https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw)
	</p>
</div>"
* identifier.use = #official
* identifier.type.coding.system = $v2-0203
* identifier.type.coding.code = #PRN
* identifier.type.coding.display = "Provider number"
* identifier.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw"
* identifier.value = "0131060029"

Instance: patient-lars-case1
InstanceOf: PatientDailyReport
Title: "個案資料-範例一"
Description: "依據每日通報個案基本資料(Patient DailyReport LARS)Profile 呈現案例一之個案基本資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>個案資料-範例一</b>
	</h3>
	<p>
		<b>識別碼型別</b>：National Person Identifier <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#NNxxx) </span>
	</p>
	<p>
		<b>身分證號</b>：A126555555(http://www.moi.gov.tw)
	</p>
	<p>
		<b>識別碼型別</b>：Medical record number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#MR) </span>
	</p>
	<p>
		<b>病歷號</b>：12345679
	</p>
	<p>
		<b>姓名(usual)</b>：範例一
	</p>
	<p>
		<b>性別</b>：男性
	</p>
	<p>
		<b>出生年</b>：1986
	</p>
	<p>
		<b>行動電話</b>：0912345678
	</p>
	<p>
		<b>公司電話</b>：0227223456
	</p>
	<p>
		<b>居住地（3碼郵遞區號）</b>：104（臺北市中山區）
	</p>
</div>"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = $v2-0203
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].type.coding.display = "National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code"
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A126555555"
* identifier[medicalRecord].use = #official
* identifier[medicalRecord].type.coding.system = $v2-0203
* identifier[medicalRecord].type.coding.code = #MR
* identifier[medicalRecord].type.coding.display = "Medical record number"
* identifier[medicalRecord].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[medicalRecord].value = "12345679"
* name[usual].use = #usual
* name[usual].text = "範例一"
* gender = #male
* birthDate = "1986"
* telecom[mobile].value = "0912345678"
* telecom[work].system = #phone
* telecom[work].use = #work
* telecom[work].value = "0227223456"
* address.city = "104"

Instance: encounter-lars-case1
InstanceOf: EncounterDailyReport
Title: "每日通報個案就醫資料-急診-案例一"
Description: "依據每日通報個案就醫資料(Encounter DailyReport LARS)Profile 呈現案例一之個案就醫資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案就醫資料-急診-範例一</b>
	</h3>
	<p>
		<b>就醫狀態</b>：finished
	</p>
	<p>
		<b>就醫類型</b>：emergency(急診) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ActCode\">ActCode</a>#EMER) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case1.html\">Patient/patient-lars-case1</a> \"範例一\"
	</p>
	<p>
		<b>就醫日期</b>：2026-11-03 10:30:00+0800
	</p>
</div>"
* status = #finished
* class = $ActCode#EMER "emergency"
* subject = Reference(patient-lars-case1)
* period.start = "2026-11-03T10:30:00+08:00"

Instance: condition-lars-case1
InstanceOf: ConditionDailyReport
Title: "每日通報個案檢驗疾病-案例一-診斷代碼1"
Description: "依據每日通報個案檢驗疾病(Condition DailyReport LARS)Profile 呈現案例一之個案診斷代碼1。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗疾病-診斷代碼1-範例一</b>
	</h3>
	<p>
		<b>臨床狀態(FHIR預設為必填之欄位)</b>：Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-clinical\">Condition Clinical Status Codes</a>#active) </span>
	</p>
	<p>
		<b>類別(FHIR預設為必填之欄位)</b>：Encounter Diagnosis <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-category\">Condition Category Codes</a>#encounter-diagnosis) </span>
	</p>
	<p>
		<b>診斷代碼1</b>：其他乾癬 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">ICD-10-CM 2023</a>#L40.8) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case1.html\">Patient/patient-lars-case1</a> \"範例一\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-case1.html\">Encounter/encounter-lars-case1</a>
	</p>
</div>"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* subject = Reference(patient-lars-case1)
* encounter = Reference(encounter-lars-case1)
* evidence.detail = Reference(diagnosticreport-lars-case1)
* code.coding[icd10-cm-2023] = $ICD10CM2023#L40.8 "其他乾癬"

Instance: specimen-lars-case1
InstanceOf: SpecimenDailyReport
Title: "檢驗檢體-案例一"
Description: "依據每日通報個案檢驗檢體(Specimen DailyReport LARS)Profile 呈現案例一檢驗報告之檢體資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>檢驗檢體-範例一</b>
	</h3>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case1.html\">Patient/patient-lars-case1</a> \"範例一\"
	</p>
	<p>
		<b>檢體種類</b>：T999（待補資料）
	</p>
	<p>
		<b>收件日期</b>：2026-11-03 11:30:00+0800
	</p>
</div>"
// 來源未提供 SAMPLE_TYPE，依檢體種類規範以 T999 表示待補資料
* type = LARSSpecimenTypeCS#T999 "To be specified in another part of the message"
* subject = Reference(patient-lars-case1)
* receivedTime = "2026-11-03T11:30:00+08:00"

Instance: diagnosticreport-lars-case1
InstanceOf: DiagnosticReportDailyReport
Title: "每日通報個案檢驗報告-案例一"
Description: "依據每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)Profile 呈現案例一之檢驗報告。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗報告-案例一</b>
	</h3>
	<p>
		<b>報告狀態(FHIR預設為必填之欄位)</b>：final
	</p>
	<p>
		<b>報告類型</b>：Laboratory report <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://loinc.org\">LOINC</a>#11502-2) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case1.html\">Patient/patient-lars-case1</a> \"範例一\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-case1.html\">Encounter/encounter-lars-case1</a>
	</p>
	<p>
		<b>檢驗開立日期</b>：2026-11-03 11:00:00+0800
	</p>
	<p>
		<b>報告單位</b>：<a href=\"Organization-organization-lars-case1.html\">Organization/organization-lars-case1</a> \"醫事機構-0131060029\"
	</p>
	<p>
		<b>檢體資料</b>：<a href=\"Specimen-specimen-lars-case1.html\">Specimen/specimen-lars-case1</a> \"檢驗檢體-案例一\"
	</p>
	<p>
		<b>檢驗結果</b>：<a href=\"Observation-observation-lars-case1-loinc.html\">Observation/observation-lars-case1-loinc</a>
	</p>
</div>"
* status = #final
* code = http://loinc.org#11502-2 "Laboratory report"
* subject = Reference(patient-lars-case1)
* encounter = Reference(encounter-lars-case1)
* effectiveDateTime = "2026-11-03T11:00:00+08:00"
* performer = Reference(organization-lars-case1)
* specimen = Reference(specimen-lars-case1)
* result = Reference(observation-lars-case1-loinc)

Instance: observation-lars-case1-loinc
InstanceOf: ObservationDailyReportLOINC
Title: "每日通報個案檢驗檢查(LOINC)-範例一"
Description: "依據每日通報個案檢驗檢查紀錄(LOINC)(Observation DailyReport LARS (LOINC))Profile 呈現案例一之個案檢驗檢查資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗檢查(LOINC)-範例一</b>
	</h3>
	<p>
		<b>檢驗序號</b>：EE2200120001
	</p>
	<p>
		<b>檢驗狀態(FHIR預設為必填之欄位)</b>：final
	</p>
	<p>
		<b>檢驗類別</b>：Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/observation-category\">ObservationCategoryCodes</a>#laboratory) </span>
	</p>
	<p>
		<b>檢驗項目</b>：Bacteria identified in Abscess by Aerobe culture <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://loinc.org\">LOINC</a>#595-9) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case1.html\">Patient/patient-lars-case1</a> \"範例一\"
	</p>
	<p>
		<b>檢驗報告日期時間</b>：2026-11-03 15:00:00+0800
	</p>
	<p>
		<b>檢驗結果</b>：E. coli
	</p>
	<p>
		<b>結果判讀</b>：Positive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation\">ObservationInterpretation</a>#POS) </span>
	</p>
	<p>
		<b>參考值</b>：ABCDEFG
	</p>
	<p>
		<b>抗藥性檢測結果</b>：Ampicillin-sulbactam:R/&gt;=32;Amikacin:S/&lt;=2;Cefixime:S/0.5;Ciprofloxacin:S/&lt;=0.25;Colistin:I/&lt;=0.5;Ceftriaxone:S/&lt;=1;Cefazolin:S/&lt;=4;Ertapenem:S/&lt;=0.5;Cefepime:S/&lt;=1;Cefoxitin:I/16;Gentamicin:S/&lt;=1;Imipenem:S/&lt;=0.25;Minocycline:R/&gt;=16;Tigecycline:R/2;Piperacillin-tazobactam:S/&lt;=4;Ampicillin:S/&lt;=0.25;Clindamycin:S/&lt;=0.25;Ceftriaxone:S/&lt;=0.12;Erythromycin:S/&lt;=0.12;Levofloxacin:S/&lt;=0.25;Linezolid:S/&lt;=2;Moxifloxacin:S/0.12;Penicillin-G:S/&lt;=0.06;Cefotaxime:S/&lt;=0.12;Tetracycline:R/&gt;=16;Tigecycline:S/&lt;=0.06;Teicoplanin:S/&lt;=0.12;Vancomycin:S/&lt;=0.12;
	</p>
	<p>
		<b>備註</b>：##01
	</p>
	<p>
		<b>檢體資料</b>：<a href=\"Specimen-specimen-lars-case1.html\">Specimen/specimen-lars-case1</a> \"檢驗檢體-案例一\"
	</p>
	<p>
		<b>健保檢驗項目</b>：13007C <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw\">全民健康保險醫療服務給付項目</a>#13007C) </span>
	</p>
</div>"
* identifier.value = "EE2200120001"
* status = #final
* code.coding[LOINCObservationCode] = $LOINC#595-9 "Bacteria identified in Abscess by Aerobe culture"
* subject = Reference(patient-lars-case1)
* effectiveDateTime = "2026-11-03T15:00:00+08:00"
* valueString = "E. coli"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* referenceRange.text = "ABCDEFG"
* note[0].text = "##01"
// 抗藥性檢測結果(INSPECTION_RESULT_1)使用專用 component
* component[DrugResistanceResult].valueString = "Ampicillin-sulbactam:R/>=32;Amikacin:S/<=2;Cefixime:S/0.5;Ciprofloxacin:S/<=0.25;Colistin:I/<=0.5;Ceftriaxone:S/<=1;Cefazolin:S/<=4;Ertapenem:S/<=0.5;Cefepime:S/<=1;Cefoxitin:I/16;Gentamicin:S/<=1;Imipenem:S/<=0.25;Minocycline:R/>=16;Tigecycline:R/2;Piperacillin-tazobactam:S/<=4;Ampicillin:S/<=0.25;Clindamycin:S/<=0.25;Ceftriaxone:S/<=0.12;Erythromycin:S/<=0.12;Levofloxacin:S/<=0.25;Linezolid:S/<=2;Moxifloxacin:S/0.12;Penicillin-G:S/<=0.06;Cefotaxime:S/<=0.12;Tetracycline:R/>=16;Tigecycline:S/<=0.06;Teicoplanin:S/<=0.12;Vancomycin:S/<=0.12;"
* specimen = Reference(specimen-lars-case1)
* component[LARSnhipayment].code.coding[0] = $NHIPayment#13007C "細菌培養鑑定檢查(包括一般細菌、真菌、原蟲等為對象的培養鑑定，抗酸菌除外)"

Instance: messageheader-lars-case1
InstanceOf: MessageHeaderDailyReport
Title: "每日通報個案通報訊息-案例一"
Description: "依據每日通報個案通報訊息(MessageHeader DailyReport LARS)Profile 呈現案例一之通報訊息表頭。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案通報訊息-案例一</b>
	</h3>
	<p>
		<b>訊息事件</b>：Laboratory report <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://loinc.org\">LOINC</a>#11502-2) </span>
	</p>
	<p>
		<b>發送單位</b>：<a href=\"Organization-organization-lars-case1.html\">Organization/organization-lars-case1</a> \"醫事機構-0131060029\"
	</p>
	<p>
		<b>訊息來源端點</b>：https://cdc.gov.tw/lars/source/0131060029
	</p>
	<p>
		<b>訊息焦點</b>：<a href=\"Condition-condition-lars-case1.html\">Condition/condition-lars-case1</a> \"其他乾癬\"
	</p>
</div>"
* eventCoding = http://loinc.org#11502-2 "Laboratory report"
* sender = Reference(organization-lars-case1)
* source.endpoint = "https://cdc.gov.tw/lars/source/0131060029"
* focus = Reference(condition-lars-case1)

Instance: bundle-lars-case1
InstanceOf: BundleDailyReport
Title: "實驗室傳染病每日通報個案上傳-案例一"
Description: "依據實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)Profile 呈現案例一之每日通報上傳訊息，內含通報訊息表頭、醫事機構、個案、就醫、檢驗疾病、檢驗報告、檢驗檢查及檢體資料。"
Usage: #example
* identifier.value = "20261104000001"
* type = #message
* timestamp = "2026-11-04T13:40:00+08:00"
* entry[0].fullUrl = "https://cdc.gov.tw/lars/MessageHeader/messageheader-lars-case1"
* entry[0].resource = messageheader-lars-case1
* entry[1].fullUrl = "https://cdc.gov.tw/lars/Organization/organization-lars-case1"
* entry[1].resource = organization-lars-case1
* entry[2].fullUrl = "https://cdc.gov.tw/lars/Patient/patient-lars-case1"
* entry[2].resource = patient-lars-case1
* entry[3].fullUrl = "https://cdc.gov.tw/lars/Encounter/encounter-lars-case1"
* entry[3].resource = encounter-lars-case1
* entry[4].fullUrl = "https://cdc.gov.tw/lars/Condition/condition-lars-case1"
* entry[4].resource = condition-lars-case1
* entry[5].fullUrl = "https://cdc.gov.tw/lars/DiagnosticReport/diagnosticreport-lars-case1"
* entry[5].resource = diagnosticreport-lars-case1
* entry[6].fullUrl = "https://cdc.gov.tw/lars/Observation/observation-lars-case1-loinc"
* entry[6].resource = observation-lars-case1-loinc
* entry[7].fullUrl = "https://cdc.gov.tw/lars/Specimen/specimen-lars-case1"
* entry[7].resource = specimen-lars-case1
