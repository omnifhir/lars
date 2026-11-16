{% include quickstart-note.md %}

### 建議應該支援以下查詢參數
本 Profile 的查詢參數於本IG中搭配 [Observation.specimen](SearchParameter-Observation-specimen.html) 串接使用。

#### 檢體收件日期：[Observation.specimen](SearchParameter-Observation-specimen.html) + [Specimen.received-time](SearchParameter-Specimen-received-time.html)
日期可加上前綴 `gt`、`lt`、`ge`、`le` 表示大於、小於、大於等於、小於等於。

`GET [base]/Observation?specimen.received-time={gt|lt|ge|le}[date]`  
例子：  
      (1) GET [base]/Observation?specimen.received-time=2026-11-12

#### 檢體種類：[Observation.specimen](SearchParameter-Observation-specimen.html) + [Specimen.type](SearchParameter-Specimen-type.html)
代碼請參考 [CDC-LARS系統-檢體種類](CodeSystem-lars-specimen-type-values.html)。

`GET [base]/Observation?specimen.type=[檢體種類]`  
例子：  
      (1) GET [base]/Observation?specimen.type=T011  
      (2) GET [base]/Observation?specimen.type=https://cdc.gov.tw/lars/CodeSystem/lars-specimen-type-values|T011
