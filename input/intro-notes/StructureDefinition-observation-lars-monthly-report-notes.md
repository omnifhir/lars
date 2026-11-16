{% include quickstart-note.md %}

### 建議應該支援以下查詢參數

#### 健保批價碼：[Observation.code](SearchParameter-Observation-code.html)
`GET [base]/Observation?code=[健保批價碼]`  
例子：  
      (1) GET [base]/Observation?code=06013C  
      (2) GET [base]/Observation?code=https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw|06013C

#### 檢體收件日期：[Observation.specimen](SearchParameter-Observation-specimen.html) + [Specimen.received-time](SearchParameter-Specimen-received-time.html)
日期可加上前綴 `gt`、`lt`、`ge`、`le` 表示大於、小於、大於等於、小於等於。

`GET [base]/Observation?specimen.received-time={gt|lt|ge|le}[date]`  
例子：  
      (1) GET [base]/Observation?specimen.received-time=2026-11-12

#### 檢體種類：[Observation.specimen](SearchParameter-Observation-specimen.html) + [Specimen.type](SearchParameter-Specimen-type.html)
`GET [base]/Observation?specimen.type=[檢體種類]`  
例子：  
      (1) GET [base]/Observation?specimen.type=T011  
      (2) GET [base]/Observation?specimen.type=https://cdc.gov.tw/lars/CodeSystem/lars-specimen-type-values|T011
