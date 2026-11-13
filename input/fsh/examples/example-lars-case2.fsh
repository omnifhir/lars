// 實驗室傳染病每日通報－案例二（資料來源：Excel 案例二，HS_NO 20261104000002）
Alias: $ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $ICD10CM2023 = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw
Alias: $NHIPayment = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw

Instance: organization-lars-case2
InstanceOf: OrganizationLARS
Title: "醫事機構-佛教慈濟醫療財團法人台北慈濟醫院"
Description: "依據醫事機構(Organization LARS)Profile 呈現案例二之通報醫事機構資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>醫事機構-佛教慈濟醫療財團法人台北慈濟醫院</b>
	</h3>
	<p>
		<b>識別碼型別</b>：Provider number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PRN) </span>
	</p>
	<p>
		<b>醫事機構代碼</b>：1131050515(https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw)
	</p>
</div>"
* identifier.use = #official
* identifier.type.coding.system = $v2-0203
* identifier.type.coding.code = #PRN
* identifier.type.coding.display = "Provider number"
* identifier.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw"
* identifier.value = "1131050515"

Instance: patient-lars-case2
InstanceOf: PatientDailyReport
Title: "個案資料-範例二"
Description: "依據每日通報個案基本資料(Patient DailyReport LARS)Profile 呈現案例二之個案基本資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>個案資料-範例二</b>
	</h3>
	<p>
		<b>識別碼型別</b>：Temporary Living Subject Number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PNT) </span>
		<b>暫時證號(本國人大於6個月)</b>：BB115042801(http://terminology.hl7.org/CodeSystem/v2-0203)
	</p>
	<p>
		<b>識別碼型別</b>：Medical record number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#MR) </span>
		<b>病歷號</b>：22345678
	</p>
	<p>
		<b>姓名(usual)</b>：範例二
	</p>
	<p>
		<b>性別</b>：女性
	</p>
	<p>
		<b>出生年</b>：2026
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

* identifier[temp].type.coding.code = #PNT
* identifier[temp].type.coding.display = "Temporary Living Subject Number"
* identifier[temp].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[temp].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[temp].value = "BB115042801"
* identifier[medicalRecord].use = #official
* identifier[medicalRecord].type.coding.system = $v2-0203
* identifier[medicalRecord].type.coding.code = #MR
* identifier[medicalRecord].type.coding.display = "Medical record number"
* identifier[medicalRecord].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[medicalRecord].value = "22345678"
* name[usual].use = #usual
* name[usual].text = "範例二"
* gender = #female
* birthDate = "2026"
* telecom[mobile].value = "0912345678"
* telecom[work].system = #phone
* telecom[work].use = #work
* telecom[work].value = "0223456789"
* telecom[home].system = #phone
* telecom[home].use = #home
* telecom[home].value = "0223456789"
* address.city = "104"

Instance: encounter-lars-case2
InstanceOf: EncounterDailyReport
Title: "每日通報個案就醫資料-門診-案例二"
Description: "依據每日通報個案就醫資料(Encounter DailyReport LARS)Profile 呈現案例二之個案就醫資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案就醫資料-門診-範例二</b>
	</h3>
	<p>
		<b>就醫狀態</b>：finished
	</p>
	<p>
		<b>就醫類型</b>：ambulatory(門診) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ActCode\">ActCode</a>#AMB) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case2.html\">Patient/patient-lars-case2</a> \"範例二\"
	</p>
	<p>
		<b>就醫日期</b>：2026-11-03 10:30:00+0800
	</p>
</div>"
* status = #finished
* class = $ActCode#AMB "ambulatory"
* subject = Reference(patient-lars-case2)
* period.start = "2026-11-03T10:30:00+08:00"

Instance: condition-lars-case2
InstanceOf: ConditionDailyReport
Title: "每日通報個案檢驗疾病-案例二-診斷代碼1"
Description: "依據每日通報個案檢驗疾病(Condition DailyReport LARS)Profile 呈現案例二之個案診斷代碼1。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗疾病-診斷代碼1-範例二</b>
	</h3>
	<p>
		<b>臨床狀態(FHIR預設為必填之欄位)</b>：Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-clinical\">Condition Clinical Status Codes</a>#active) </span>
	</p>
	<p>
		<b>類別(FHIR預設為必填之欄位)</b>：Encounter Diagnosis <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/condition-category\">Condition Category Codes</a>#encounter-diagnosis) </span>
	</p>
	<p>
		<b>診斷代碼1</b>：XXXX(院內尚未有診斷碼，待醫師開立後更新)
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case2.html\">Patient/patient-lars-case2</a> \"範例二\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-case2.html\">Encounter/encounter-lars-case2</a>
	</p>
</div>"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* subject = Reference(patient-lars-case2)
* encounter = Reference(encounter-lars-case2)
* evidence.detail = Reference(diagnosticreport-lars-case2)
* code.text = "XXXX"

Instance: specimen-lars-case2
InstanceOf: SpecimenDailyReport
Title: "檢驗檢體-案例二"
Description: "依據每日通報個案檢驗檢體(Specimen DailyReport LARS)Profile 呈現案例二檢驗報告之檢體資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>檢驗檢體-範例二</b>
	</h3>
	<p>
		<b>檢體種類</b>：T067 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-specimen-type-values.html\">CDC-LARS系統-檢體種類</a>#T067) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case2.html\">Patient/patient-lars-case2</a> \"範例二\"
	</p>
	<p>
		<b>收件日期</b>：2026-11-03 11:30:00+0800
	</p>
</div>"
* type = LARSSpecimenTypeCS#T067 "Nph"
* subject = Reference(patient-lars-case2)
* receivedTime = "2026-11-03T11:30:00+08:00"

Instance: diagnosticreport-lars-case2
InstanceOf: DiagnosticReportDailyReport
Title: "每日通報個案檢驗報告-案例二"
Description: "依據每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)Profile 呈現案例二之檢驗報告。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗報告-案例二</b>
	</h3>
	<p>
		<b>報告狀態(FHIR預設為必填之欄位)</b>：final
	</p>
	<p>
		<b>報告類型</b>：Laboratory report <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://loinc.org\">LOINC</a>#11502-2) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case2.html\">Patient/patient-lars-case2</a> \"範例二\"
	</p>
	<p>
		<b>就醫資料</b>：<a href=\"Encounter-encounter-lars-case2.html\">Encounter/encounter-lars-case2</a>
	</p>
	<p>
		<b>檢驗開立日期</b>：2026-11-03 11:00:00+0800
	</p>
	<p>
		<b>報告單位</b>：<a href=\"Organization-organization-lars-case2.html\">Organization/organization-lars-case2</a> \"醫事機構-1101010012\"
	</p>
	<p>
		<b>檢體資料</b>：<a href=\"Specimen-specimen-lars-case2.html\">Specimen/specimen-lars-case2</a> \"檢驗檢體-案例二\"
	</p>
	<p>
		<b>檢驗結果</b>：<a href=\"Observation-observation-lars-case2.html\">Observation/observation-lars-case2</a>
	</p>
</div>"
* status = #final
* code = http://loinc.org#11502-2 "Laboratory report"
* subject = Reference(patient-lars-case2)
* encounter = Reference(encounter-lars-case2)
* effectiveDateTime = "2026-11-03T11:00:00+08:00"
* performer = Reference(organization-lars-case2)
* specimen = Reference(specimen-lars-case2)
* result = Reference(observation-lars-case2)

Instance: observation-lars-case2
InstanceOf: ObservationDailyReport
Title: "每日通報個案檢驗檢查(無適用LOINC Code)-範例二"
Description: "依據每日通報個案檢驗檢查Code=99999(Observation DailyReport LARS)Profile 呈現案例二無適用LOINC Code之個案檢驗檢查資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案檢驗檢查(無適用LOINC Code)-範例二</b>
	</h3>
	<p>
		<b>LOINC檢驗項目名稱</b>：Corona028 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-loinc-Component-values.html\">CDC-LARS系統-檢驗項目</a>#Corona028) </span>
	</p>
	<p>
		<b>LOINC檢驗時間屬性</b>：Pt
	</p>
	<p>
		<b>LOINC測量單位屬性</b>：P20 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-loinc-property-values.html\">CDC-LARS系統-LOINC測量單位屬性(Property)</a>#P20) </span>
	</p>
	<p>
		<b>LOINC檢驗單位屬性</b>：S02 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-loinc-scale-values.html\">CDC-LARS系統-LOINC檢驗單位屬性(Scale)</a>#S02) </span>
	</p>
	<p>
		<b>檢驗序號</b>：EE2200120002
	</p>
	<p>
		<b>檢驗狀態(FHIR預設為必填之欄位)</b>：final
	</p>
	<p>
		<b>檢驗類別</b>：Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/observation-category\">ObservationCategoryCodes</a>#laboratory) </span>
	</p>
	<p>
		<b>檢驗項目</b>：無LOINC code可對應使用 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-code-values.html\">CDC-LARS系統代碼</a>#99999) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-lars-case2.html\">Patient/patient-lars-case2</a> \"範例二\"
	</p>
	<p>
		<b>檢驗報告日期時間</b>：2026-11-03 15:00:00+0800
	</p>
	<p>
		<b>檢驗結果</b>：Negative
	</p>
	<p>
		<b>結果判讀</b>：Negative <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation\">ObservationInterpretation</a>#NEG) </span>
	</p>
	<p>
		<b>檢驗方法</b>：M071 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-lab-method-values.html\">CDC-LARS系統-檢驗方法</a>#M071) </span>
	</p>
	<p>
		<b>參考值</b>：無參考值
	</p>
	<p>
		<b>備註</b>：無備註
	</p>
	<p>
		<b>檢體資料</b>：<a href=\"Specimen-specimen-lars-case2.html\">Specimen/specimen-lars-case2</a> \"檢驗檢體-案例二\"
	</p>
	<p>
		<b>無健保批價碼</b>：SARS-CoV-2無健保批價碼或自費 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-lars-code-values.html\">CDC-LARS系統代碼</a>#888888) </span>
	</p>
</div>"
* extension[loinc].extension[loincComponent].valueCoding = LARSLOINCComponentCS#Corona028 "SARS-CoV-2 Ag"
* extension[loinc].extension[loincTime].valueString = "Pt"
* extension[loinc].extension[loincMeasure].valueCoding = LARSLOINCPropertyCS#P20 "Threshold"
* extension[loinc].extension[loincScale].valueCoding = LARSLOINCScaleCS#S02 "Ord"
* identifier.value = "EE2200120002"
* status = #final
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[LARSLOINCObservationCode] = LARSCodeCS#99999 "無LOINC code可對應使用"
* subject = Reference(patient-lars-case2)
* effectiveDateTime = "2026-11-03T15:00:00+08:00"
* valueString = "Negative"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#NEG "Negative"
* method = LARSLabMethodCS#M071 "Immune diffusion"
* referenceRange.text = "無參考值"
* note[0].text = "無備註"
* specimen = Reference(specimen-lars-case2)
* component[LARSnhipayment].code.coding[LARSNoNHICode] = LARSCodeCS#888888 "SARS-CoV-2無健保批價碼或自費"

Instance: messageheader-lars-case2
InstanceOf: MessageHeaderDailyReport
Title: "每日通報個案通報訊息-案例二"
Description: "依據每日通報個案通報訊息(MessageHeader DailyReport LARS)Profile 呈現案例二之通報訊息表頭。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>每日通報個案通報訊息-案例二</b>
	</h3>
	<p>
		<b>訊息事件</b>：Laboratory report <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://loinc.org\">LOINC</a>#11502-2) </span>
	</p>
	<p>
		<b>發送單位</b>：<a href=\"Organization-organization-lars-case2.html\">Organization/organization-lars-case2</a> \"醫事機構-1101010012\"
	</p>
	<p>
		<b>訊息來源端點</b>：https://cdc.gov.tw/lars/source/1101010012
	</p>
	<p>
		<b>訊息焦點</b>：<a href=\"Condition-condition-lars-case2.html\">Condition/condition-lars-case2</a> \"XXXX\"
	</p>
</div>"
* eventCoding = http://loinc.org#11502-2 "Laboratory report"
* sender = Reference(organization-lars-case2)
* source.endpoint = "https://cdc.gov.tw/lars/source/1101010012"
* focus = Reference(condition-lars-case2)

Instance: bundle-lars-case2
InstanceOf: BundleDailyReport
Title: "實驗室傳染病每日通報個案上傳-案例二"
Description: "依據實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)Profile 呈現案例二之每日通報上傳訊息，內含通報訊息表頭、醫事機構、個案、就醫、檢驗疾病、檢驗報告、檢驗檢查及檢體資料。"
Usage: #example
* identifier.value = "20261104000002"
* type = #message
* timestamp = "2026-11-04T13:40:00+08:00"
* entry[0].fullUrl = "https://cdc.gov.tw/lars/MessageHeader/messageheader-lars-case2"
* entry[0].resource = messageheader-lars-case2
* entry[1].fullUrl = "https://cdc.gov.tw/lars/Organization/organization-lars-case2"
* entry[1].resource = organization-lars-case2
* entry[2].fullUrl = "https://cdc.gov.tw/lars/Patient/patient-lars-case2"
* entry[2].resource = patient-lars-case2
* entry[3].fullUrl = "https://cdc.gov.tw/lars/Encounter/encounter-lars-case2"
* entry[3].resource = encounter-lars-case2
* entry[4].fullUrl = "https://cdc.gov.tw/lars/Condition/condition-lars-case2"
* entry[4].resource = condition-lars-case2
* entry[5].fullUrl = "https://cdc.gov.tw/lars/DiagnosticReport/diagnosticreport-lars-case2"
* entry[5].resource = diagnosticreport-lars-case2
* entry[6].fullUrl = "https://cdc.gov.tw/lars/Observation/observation-lars-case2"
* entry[6].resource = observation-lars-case2
* entry[7].fullUrl = "https://cdc.gov.tw/lars/Specimen/specimen-lars-case2"
* entry[7].resource = specimen-lars-case2
