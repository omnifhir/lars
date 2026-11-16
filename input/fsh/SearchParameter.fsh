
//-------------------------Bundle-------------------------
//--------------通報資料流水號----------------
Instance: Bundle-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://cdc.gov.tw/lars/SearchParameter/Bundle-identifier"
* name = "BundleIdentifier"
* status = #active
* version = "1.0.0"
* date = "2026-11-16"
* publisher = "HL7 International"
* description = "實驗室傳染病通報(Bundle)的通報資料流水號(identifier)"
* code = #identifier
* base = #Bundle
* expression = "Bundle.identifier"
* type = #token

//--------------通報訊息(串接醫事機構代碼)----------------
Instance: Bundle-message
InstanceOf: SearchParameter
Usage: #definition
* url = "https://cdc.gov.tw/lars/SearchParameter/Bundle-message"
* name = "BundleMessage"
* status = #active
* version = "1.0.0"
* date = "2026-11-16"
* publisher = "HL7 International"
* description = "實驗室傳染病通報(Bundle)的第一筆通報訊息表頭(MessageHeader)，可串接查詢醫事機構代碼，例如：Bundle?message.sender.identifier=0131060029"
* code = #message
* base = #Bundle
* expression = "Bundle.entry[0].resource"
* type = #reference
* target = #MessageHeader
* chain[0] = "sender"

//-------------------------MessageHeader-------------------------
Instance: MessageHeader-sender
InstanceOf: SearchParameter
Usage: #definition
* url = "https://cdc.gov.tw/lars/SearchParameter/MessageHeader-sender"
* name = "MessageHeaderSender"
* status = #active
* version = "1.0.0"
* date = "2026-11-16"
* publisher = "HL7 International"
* description = "通報訊息表頭(MessageHeader)的通報醫事機構(sender)"
* code = #sender
* base = #MessageHeader
* expression = "MessageHeader.sender"
* type = #reference
* target = #Organization
* chain[0] = "identifier"

//-------------------------Organization-------------------------
//--------------醫事機構代碼----------------
Instance: Organization-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://cdc.gov.tw/lars/SearchParameter/Organization-identifier"
* name = "OrganizationIdentifier"
* status = #active
* version = "1.0.0"
* date = "2026-11-16"
* publisher = "HL7 International"
* description = "醫事機構代碼"
* code = #identifier
* base = #Organization
* expression = "Organization.identifier"
* type = #token

//-------------------------Specimen-------------------------
//--------------檢體收件日期----------------
Instance: Specimen-received-time
InstanceOf: SearchParameter
Usage: #definition
* url = "https://cdc.gov.tw/lars/SearchParameter/Specimen-received-time"
* name = "SpecimenReceivedTime"
* status = #active
* version = "1.0.0"
* date = "2026-11-16"
* publisher = "衛福部疾病管制署"
* description = "檢體(Specimen)的檢體收件日期(receivedTime)"
* code = #received-time
* base = #Specimen
* expression = "Specimen.receivedTime"
* type = #date

//--------------檢體種類----------------
Instance: Specimen-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://cdc.gov.tw/lars/SearchParameter/Specimen-type"
* name = "SpecimenType"
* status = #active
* version = "1.0.0"
* date = "2026-11-16"
* publisher = "HL7 International"
* description = "檢體(Specimen)的檢體種類(type)"
* code = #type
* base = #Specimen
* expression = "Specimen.type"
* type = #token

//-------------------------Observation-------------------------
//--------------健保批價碼----------------
Instance: Observation-code
InstanceOf: SearchParameter
Usage: #definition
* url = "https://cdc.gov.tw/lars/SearchParameter/Observation-code"
* name = "ObservationCode"
* status = #active
* version = "1.0.0"
* date = "2026-11-16"
* publisher = "HL7 International"
* description = "每日總收件數檢驗檢查(Observation)的健保批價碼(code.coding)"
* code = #code
* base = #Observation
* expression = "Observation.code"
* type = #token

//--------------檢體(串接檢體種類、檢體收件日期)----------------
Instance: Observation-specimen
InstanceOf: SearchParameter
Usage: #definition
* url = "https://cdc.gov.tw/lars/SearchParameter/Observation-specimen"
* name = "ObservationSpecimen"
* status = #active
* version = "1.0.0"
* date = "2026-11-16"
* publisher = "HL7 International"
* description = "每日總收件數檢驗檢查(Observation)關聯的檢體(Specimen)，可串接查詢檢體種類及檢體收件日期"
* code = #specimen
* base = #Observation
* expression = "Observation.specimen"
* type = #reference
* target = #Specimen
* chain[0] = "type"
* chain[1] = "received-time"
