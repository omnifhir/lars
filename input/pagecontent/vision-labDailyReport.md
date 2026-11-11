### 實驗室資料自動通報之每日個案資料 Bundle 架構（Bundle Request）
<div  style="padding-left: 10px;"> 
實驗室資料自動通報系統之「每日通報個案資料」透過Bundle打包以下資料(相關對應表可以參照實驗室資料自動通報每日個案資料(Request)之邏輯模型中的<a href="StructureDefinition-lab-daily-report-model-mappings.html">Mappings</a>)：
<ul>
  <li>檢驗通報訊息－<a href="StructureDefinition-messageheader-lars-daily-report.html">MessageHeader DailyReport LARS Profile</a></li>
  <li>診斷資訊－<a href="StructureDefinition-condition-lars-daily-report.html">Condition DailyReport LARS Profile</a></li>
  <li>實驗室報告－<a href="StructureDefinition-diagnosticreport-lars-daily-report.html">DiagnosticReport DailyReport LARS Profile</a></li>
  <li>檢驗結果－<a href="StructureDefinition-observation-lars-daily-report.html">Observation DailyReport LARS Profile</a>或<a href="StructureDefinition-observation-lars-daily-report-loinc.html">Observation DailyReport LARS (LOINC) Profile</a></li>
  <li>醫事機構－<a href="StructureDefinition-organization-lars.html">Organization LARS Profile</a></li>
  <li>病人資訊－<a href="StructureDefinition-patient-lars-daily-report.html">Patient DailyReport LARS Profile</a></li>
  <li>就醫資訊－<a href="StructureDefinition-encounter-lars-daily-report.html">Encounter DailyReport LARS Profile</a></li>
  <li>檢體資訊－<a href="StructureDefinition-specimen-lars-daily-report.html">Specimen DailyReport LARS Profile</a></li>
</ul>
以下架構圖可參考下方<a href="#legend">圖例說明圖</a>閱讀。
</div>

#### Bundle架構圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="LabDailyReport_request.png" alt="每日個案資料(LabDailyReport)request架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 80%;"/>
</div>

<br>

### 圖例說明圖 {#legend}
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="圖例說明.png" alt="圖例說明" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
</div>

<br>
