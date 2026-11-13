// 每日總收件數模擬範例二：SARS-CoV-2 無健保批價碼或自費。醫事機構沿用每日通報案例；收件數及端點僅供示範。
Instance: organization-lars-monthly-report-case2
InstanceOf: OrganizationLARS
Title: "每日總收件數醫事機構-佛教慈濟醫療財團法人台北慈濟醫院"
Description: "每日總收件數範例二之通報機構，沿用每日通報案例二的醫事機構資料。"
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
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN "Provider number"
* identifier.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw"
* identifier.value = "1131050515"
* name = "佛教慈濟醫療財團法人台北慈濟醫院"

Instance: specimen-lars-monthly-report-case2
InstanceOf: SpecimenMonthlyReport
Title: "每日總收件數檢體-範例二"
Description: "2026年11月12日每日總收件數之檢體種類；為彙總資料，無單一個案。"
Usage: #example
* type = LARSSpecimenTypeCS#T067 "Nph"
* receivedTime = "2026-11-12T00:00:00+08:00"


Instance: observation-lars-monthly-report-case2
InstanceOf: ObservationMonthlyReport
Title: "每日總收件數檢驗檢查-範例二"
Description: "模擬2026年11月12日SARS-CoV-2 無健保批價碼或自費、檢體代碼T067之總收件數35件。"
Usage: #example
* status = #final
* code.coding[LARSNoNHICode] = LARSCodeCS#888888 "SARS-CoV-2無健保批價碼或自費"
* valueInteger = 35
* specimen = Reference(specimen-lars-monthly-report-case2)

Instance: messageheader-lars-monthly-report-case2
InstanceOf: MessageHeaderMonthlyReport
Title: "每日總收件數通報訊息-範例二"
Description: "每日總收件數範例二之訊息表頭，以總收件數Observation為焦點。"
Usage: #example
* eventCoding = http://loinc.org#11502-2 "Laboratory report"
* sender = Reference(organization-lars-monthly-report-case2)
* source.endpoint = "https://example.org/lars/source/1131050515"
* focus = Reference(observation-lars-monthly-report-case2)

Instance: bundle-lars-monthly-report-case2
InstanceOf: BundleMonthlyReport
Title: "實驗室傳染病每日總收件數上傳-範例二"
Description: "SARS-CoV-2 無健保批價碼或自費之模擬每日總收件數上傳，包含訊息表頭、檢驗總件數、檢體與醫事機構。"
Usage: #example
* identifier.system = "https://example.org/lars/monthly-report"
* identifier.value = "20261112-MR-002"
* type = #message
* timestamp = "2026-11-13T09:00:00+08:00"
* entry[TWCoreMessageHeader].fullUrl = "https://example.org/lars/MessageHeader/messageheader-lars-monthly-report-case2"
* entry[TWCoreMessageHeader].resource = messageheader-lars-monthly-report-case2
* entry[observation].fullUrl = "https://example.org/lars/Observation/observation-lars-monthly-report-case2"
* entry[observation].resource = observation-lars-monthly-report-case2
* entry[specimen].fullUrl = "https://example.org/lars/Specimen/specimen-lars-monthly-report-case2"
* entry[specimen].resource = specimen-lars-monthly-report-case2
* entry[organization].fullUrl = "https://example.org/lars/Organization/organization-lars-monthly-report-case2"
* entry[organization].resource = organization-lars-monthly-report-case2
