
### 專案介紹
<div  style="padding-left: 10px;"> 
<p>實驗室傳染病自動通報實作指引(twlars IG)採用HL7® FHIR® standard(Fast Healthcare Interoperability Resources)IG建置方法，在<a href="http://hl7.org/fhir/R4/">FHIR R4.0.1</a>之標準基礎上，繼承TW Core IG V 0.3.2 (2024-12-12)，進一步定義適用於「實驗室傳染病自動通報實作指引(以下簡稱本專案)」資料需求的Resources(類似資料表)、其中的資料項目(意即欄位)、基數(意即0..1、0..*、1..1或1..*)及資料類型(文字、日期時間、代碼等)等。</p>
</div>

### 專案背景
<div  style="padding-left: 10px;"> 
<p>衛生福利部疾病管制署（Centers for Disease Control，CDC，以下簡稱本署）推動運用系統對系統介接作業模式，透過本署防疫資訊交換中心傳遞機制，將醫療院所符合指定之傳染病檢驗項目、結果等資料，依標準交換格式自動上傳通報至本署，減少醫療院所人員重複登錄資料所產生之人為疏失，降低人工作業負擔，提升疾病防治之品質與效率。</p>
</div>

### 專案範圍
#### 使用案例(Use Case)
<div  style="padding-left: 10px;"> 
<p>本專案之主要實作者為醫療院所，醫療院所透過實驗室傳染病自動通報系統上傳傳染病檢驗項目和結果等資料，並送至衛生福利部疾病管制署。</p>
<img class="figure-img img-responsive img-rounded center-block" src="usecase.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 45%;"/>
</div>



### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;"> 
<p>本IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：本IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：本IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用本IG於建置業務目的使用的FHIR Server時，該FHIR Server必須及建議應該支援的資料存取功能。
		</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：本IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles-and-extensions.html">FHIR Profiles</a></strong>：
        	<ul>
          		<li>本IG的所有Profiles之定義與範例。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：本IG所使用的專門術語，包括代碼系統(Code Systems)及值集(Value Sets)。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：本IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用本IG網站進行實作時，有關資料存取授權的作法。</li>
	<li><strong><a href="https://twlars.cdc.gov.tw/twlars/history.html">版本異動</a></strong>：若本IG網站的版本有所異動，皆可透過<a href="https://twlars.cdc.gov.tw/twlars/history.html">異動說明頁</a>得以瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者
<table class="grid">
    <thead>
        <tr class="header">
            <th style="width:10%">角色</th>
            <th style="width:30%">姓名</th>
            <th style="width:50%">機構</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>作者-IG</td>
            <td>李奇安</td>
            <td rowspan="6" style="vertical-align: middle;">國際厚生數位科技股份有限公司</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>曾鈺珈</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>林伃瑤</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>歐陽渝</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>謝佳伶</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>王若珊</td>
        </tr>
    </tbody>
</table>
