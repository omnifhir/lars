### 實驗室資料自動通報之每日總收件數 Bundle 架構（Bundle Request）
<div  style="padding-left: 10px;"> 
實驗室資料自動通報系統之「每日總收件數資料」透過Bundle打包以下資料(相關對應表可以參照實驗室資料自動通報之每日總收件數(Request)之邏輯模型中的<a href="StructureDefinition-labMonthlyReportModel-mappings.html">Mappings</a>)：
<ul>
  <li>檢驗通報訊息－MessageHeader LARS Profile</li>
  <li>診斷資訊－Condition LARS Profile</li>
  <li>實驗室報告－DiagnosticReport LARS Profile</li>
  <li>檢驗結果－Observation LARS Profile</li>
  <li>醫事機構－Organization LARS Profile</li>
  <li>病人資訊－Patient LARS Profile</li>
  <li>就醫資訊－Encounter LARS Profile</li>
  <li>檢體資訊－Specimen LARS Profile</li>
</ul>
</div>

#### Bundle架構圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="LabMonthlyReport_request.png" alt="每日總收件數(LabMonthlyReport)request架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 80%;"/>
</div>

<br>

### 圖例說明圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="圖例說明.png" alt="圖例說明" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
</div>

<br>
