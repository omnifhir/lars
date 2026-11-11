### Resource之Profiles
以下為本IG使用到的所有Profiles，依每日通報個案、每日總收件數及共用Profiles分類。

### 每日通報個案（LabDailyReport）
可參考[附件一、 「實驗室資料自動通報系統」資料邏輯(每日通報個案)](https://www.cdc.gov.tw/File/Get/T0NDr34Fshed1TN3MRZg-w)

#### Bundle

- [實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)](StructureDefinition-bundle-lars-daily-report.html)

#### Condition

- [每日通報個案檢驗疾病(Condition DailyReport LARS)](StructureDefinition-condition-lars-daily-report.html)

#### DiagnosticReport

- [每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)](StructureDefinition-diagnosticreport-lars-daily-report.html)

#### Encounter

- [每日通報個案就醫資料(Encounter DailyReport LARS)](StructureDefinition-encounter-lars-daily-report.html)

#### MessageHeader

- [每日通報個案通報訊息(MessageHeader DailyReport LARS)](StructureDefinition-messageheader-lars-daily-report.html)


#### Observation

請依檢驗項目是否有合適的LOINC代碼，擇一使用下列Profile：

- **有合適的LOINC代碼**：使用[每日通報個案檢驗檢查紀錄(LOINC)(Observation DailyReport LARS (LOINC))](StructureDefinition-observation-lars-daily-report-loinc.html)
 
- **無合適的LOINC代碼**：使用[每日通報個案檢驗檢查Code=99999(Observation DailyReport LARS)](StructureDefinition-observation-lars-daily-report.html)，`Observation.code` 固定填 `99999`（無LOINC code可對應使用）


#### Organization

- [醫事機構(Organization LARS)](StructureDefinition-organization-lars.html)

#### Patient

- [每日通報個案基本資料(Patient DailyReport LARS)](StructureDefinition-patient-lars-daily-report.html)

#### Specimen

- [每日通報個案檢驗檢體(Specimen DailyReport LARS)](StructureDefinition-specimen-lars-daily-report.html)

#### Extensions
以下[Extensions](http://hl7.org/fhir/R4/extensibility.html)已定義為本IG的一部分。
- [LOINC Info](StructureDefinition-loinc-info-lars.html):LOINC代碼＋LOINC檢驗時間屬性＋LOINC測量單位屬性＋LOINC檢驗單位屬性



-----------------------------------------------------------

### 每日總收件數（LabMonthlyReport）
可參考[附件二、「實驗室資料自動通報系統」資料內容(每日總收件數)](https://www.cdc.gov.tw/File/Get/ws-7jbsGrPptqZCL1ohtiQ)

#### Bundle

- [實驗室傳染病每日總收件數上傳(Bundle MonthlyReport LARS)](StructureDefinition-bundle-lars-monthly-report.html)

#### MessageHeader

- [每日總收件數檢驗報告通報訊息(MessageHeader MonthlyReport LARS)](StructureDefinition-messageheader-lars-monthly-report.html)

#### Observation

- [每日總收件數檢驗檢查(Observation MonthlyReport LARS)](StructureDefinition-observation-lars-monthly-report.html)

#### Organization

- [醫事機構(Organization LARS)](StructureDefinition-organization-lars.html)

#### Specimen

- [每日總收件數檢驗檢體(Specimen MonthlyReport LARS)](StructureDefinition-specimen-lars-monthly-report.html)
