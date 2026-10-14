### Resource之Profiles
以下為本IG使用到的所有Profiles，依每日通報個案、每日總收件數及共用Profiles分類。

### 每日通報個案（LabDailyReport）
可參考[附件一、 「實驗室資料自動通報系統」資料邏輯(每日通報個案)](https://www.cdc.gov.tw/File/Get/T0NDr34Fshed1TN3MRZg-w)

#### Bundle

- [實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)](StructureDefinition-bundle-lars-dailyReport.html)

#### Condition

- [每日通報個案檢驗疾病(Condition DailyReport LARS)](StructureDefinition-condition-lars-dailyReport.html)

#### DiagnosticReport

- [每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)](StructureDefinition-diagnosticreport-lars-dailyReport.html)

#### Encounter

- [每日通報個案就醫資料(Encounter DailyReport LARS)](StructureDefinition-encounter-lars-dailyReport.html)

#### MessageHeader

- [每日通報個案通報訊息(MessageHeader DailyReport LARS)](StructureDefinition-messageheader-lars-dailyReport.html)

#### Observation

- [每日通報個案檢驗檢查(Observation DailyReport LARS)](StructureDefinition-observation-lars-dailyReport.html)

#### Organization

- [醫事機構(Organization LARS)](StructureDefinition-organization-lars.html)

#### Patient

- [個案資料(Patient LARS)](StructureDefinition-patient-lars.html)

#### Specimen

- [檢驗檢體(Specimen LARS)](StructureDefinition-specimen-lars.html)

#### Extensions
以下[Extensions](http://hl7.org/fhir/R4/extensibility.html)已定義為本IG的一部分。
- [LOINC Info](StructureDefinition-lars-loinc-info.html):LOINC代碼＋LOINC檢驗時間屬性＋LOINC測量單位屬性＋LOINC檢驗單位屬性



-----------------------------------------------------------

### 每日總收件數（labMonthlyReport）
可參考[附件二、「實驗室資料自動通報系統」
資料內容(每日總收件數)](https://www.cdc.gov.tw/File/Get/ws-7jbsGrPptqZCL1ohtiQ)

#### Bundle

- [實驗室傳染病每日總收件數上傳(Bundle MonthlyReport LARS)](StructureDefinition-bundle-lars-monthlyReport.html)

#### DiagnosticReport

- [每日總收件數檢驗報告(DiagnosticReport MonthlyReport LARS)](StructureDefinition-diagnosticreport-lars-monthlyReport.html)

#### Observation

- [每日總收件數檢驗檢查(Observation MonthlyReport LARS)](StructureDefinition-observation-lars-monthlyReport.html)

#### Organization

- [醫事機構(Organization LARS)](StructureDefinition-organization-lars.html)

#### Patient

- [個案資料(Patient LARS)](StructureDefinition-patient-lars.html)

#### Specimen

- [檢驗檢體(Specimen LARS)](StructureDefinition-specimen-lars.html)