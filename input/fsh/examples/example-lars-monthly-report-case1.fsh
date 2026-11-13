// 每日總收件數模擬範例一：有健保批價碼。醫事機構沿用每日通報案例；收件數及端點僅供示範。
Instance: organization-lars-monthly-report-case1
InstanceOf: OrganizationLARS
Title: "每日總收件數醫事機構-衛生福利部臺北醫院"
Description: "每日總收件數範例一之通報機構，沿用每日通報案例一的醫事機構資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>醫事機構-衛生福利部臺北醫院</b>
	</h3>
	<p>
		<b>識別碼型別</b>：Provider number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PRN) </span>
	</p>
	<p>
		<b>醫事機構代碼</b>：0131060029(https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw)
	</p>
</div>"
* identifier.use = #official
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN "Provider number"
* identifier.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw"
* identifier.value = "0131060029"
* name = "衛生福利部臺北醫院"

Instance: specimen-lars-monthly-report-case1
InstanceOf: SpecimenMonthlyReport
Title: "每日總收件數檢體-範例一"
Description: "2026年11月12日每日總收件數之檢體種類；為彙總資料，無單一個案。"
Usage: #example
* type = LARSSpecimenTypeCS#T011 "Bld"
* receivedTime = "2026-11-12T00:00:00+08:00"

Instance: observation-lars-monthly-report-case1
InstanceOf: ObservationMonthlyReport
Title: "每日總收件數檢驗檢查-範例一"
Description: "模擬2026年11月12日有健保批價碼、檢體代碼T011之總收件數120件。"
Usage: #example
* status = #final
* code.coding[TWLaboratoryCategory] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw#06013C
* valueInteger = 120
* specimen = Reference(specimen-lars-monthly-report-case1)

Instance: messageheader-lars-monthly-report-case1
InstanceOf: MessageHeaderMonthlyReport
Title: "每日總收件數通報訊息-範例一"
Description: "每日總收件數範例一之訊息表頭，以總收件數Observation為焦點。"
Usage: #example
* eventCoding = http://loinc.org#11502-2 "Laboratory report"
* sender = Reference(organization-lars-monthly-report-case1)
* source.endpoint = "https://example.org/lars/source/0131060029"
* focus = Reference(observation-lars-monthly-report-case1)

Instance: bundle-lars-monthly-report-case1
InstanceOf: BundleMonthlyReport
Title: "實驗室傳染病每日總收件數上傳-範例一"
Description: "有健保批價碼之模擬每日總收件數上傳，包含訊息表頭、檢驗總件數、檢體與醫事機構。"
Usage: #example
* identifier.system = "https://example.org/lars/monthly-report"
* identifier.value = "20261112-MR-001"
* type = #message
* timestamp = "2026-11-13T09:00:00+08:00"
* entry[TWCoreMessageHeader].fullUrl = "https://example.org/lars/MessageHeader/messageheader-lars-monthly-report-case1"
* entry[TWCoreMessageHeader].resource = messageheader-lars-monthly-report-case1
* entry[observation].fullUrl = "https://example.org/lars/Observation/observation-lars-monthly-report-case1"
* entry[observation].resource = observation-lars-monthly-report-case1
* entry[specimen].fullUrl = "https://example.org/lars/Specimen/specimen-lars-monthly-report-case1"
* entry[specimen].resource = specimen-lars-monthly-report-case1
* entry[organization].fullUrl = "https://example.org/lars/Organization/organization-lars-monthly-report-case1"
* entry[organization].resource = organization-lars-monthly-report-case1
