以下為本IG使用到的所有查詢參數(SearchParameter)。

### 以Profile分類

#### Bundle
- [identifier](SearchParameter-Bundle-identifier.html)
- [message](SearchParameter-Bundle-message.html)

#### MessageHeader
- [sender](SearchParameter-MessageHeader-sender.html)

#### Organization
- [identifier](SearchParameter-Organization-identifier.html)

#### Observation
- [code](SearchParameter-Observation-code.html)
- [specimen](SearchParameter-Observation-specimen.html)

#### Specimen
- [received-time](SearchParameter-Specimen-received-time.html)
- [type](SearchParameter-Specimen-type.html)

### 以查詢欄位分類

#### 每日通報個案

##### 通報資料流水號：[Bundle.identifier](SearchParameter-Bundle-identifier.html)
`GET [base]/Bundle?identifier=[通報資料流水號]`  
例子：  
      (1) GET [base]/Bundle?identifier=20130801000001

##### 醫事機構代碼：[Bundle.message](SearchParameter-Bundle-message.html) + [MessageHeader.sender](SearchParameter-MessageHeader-sender.html) + [Organization.identifier](SearchParameter-Organization-identifier.html)
`GET [base]/Bundle?message.sender.identifier=[醫事機構代碼]`  
例子：  
      (1) GET [base]/Bundle?message.sender.identifier=0131060029  
      (2) GET [base]/Bundle?message.sender.identifier=https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw|0131060029

#### 每日總收件數

##### 醫事機構代碼：[Bundle.message](SearchParameter-Bundle-message.html) + [MessageHeader.sender](SearchParameter-MessageHeader-sender.html) + [Organization.identifier](SearchParameter-Organization-identifier.html)
`GET [base]/Bundle?message.sender.identifier=[醫事機構代碼]`  
例子：  
      (1) GET [base]/Bundle?message.sender.identifier=0131060029

##### 檢體收件日期：[Observation.specimen](SearchParameter-Observation-specimen.html) + [Specimen.received-time](SearchParameter-Specimen-received-time.html)
`GET [base]/Observation?specimen.received-time={gt|lt|ge|le}[date]{&specimen.received-time={gt|lt|ge|le}[date]}`  
例子：  
      (1) GET [base]/Observation?specimen.received-time=2026-11-12  
      (2) GET [base]/Observation?specimen.received-time=ge2026-11-01&specimen.received-time=lt2026-12-01

##### 健保批價碼：[Observation.code](SearchParameter-Observation-code.html)
`GET [base]/Observation?code=[健保批價碼]`  
例子：  
      (1) GET [base]/Observation?code=06013C  
      (2) GET [base]/Observation?code=https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw|06013C

##### 檢體種類：[Observation.specimen](SearchParameter-Observation-specimen.html) + [Specimen.type](SearchParameter-Specimen-type.html)
`GET [base]/Observation?specimen.type=[檢體種類]`  
例子：  
      (1) GET [base]/Observation?specimen.type=T011
