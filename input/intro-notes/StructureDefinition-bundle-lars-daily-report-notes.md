{% include quickstart-note.md %}

### 建議應該支援以下查詢參數

#### 通報資料流水號：[Bundle.identifier](SearchParameter-Bundle-identifier.html)
`GET [base]/Bundle?identifier=[通報資料流水號]`  
例子：  
      (1) GET [base]/Bundle?identifier=20130801000001

#### 醫事機構代碼：[Bundle.message](SearchParameter-Bundle-message.html) + [MessageHeader.sender](SearchParameter-MessageHeader-sender.html) + [Organization.identifier](SearchParameter-Organization-identifier.html)
`GET [base]/Bundle?message.sender.identifier=[醫事機構代碼]`  
例子：  
      (1) GET [base]/Bundle?message.sender.identifier=0131060029  
      (2) GET [base]/Bundle?message.sender.identifier=https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/organization-identifier-tw|0131060029
