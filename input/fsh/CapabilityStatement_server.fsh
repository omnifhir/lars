Instance: CapabilityStatementLARSServer
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://cdc.gov.tw/lars/CapabilityStatement/CapabilityStatementLARSServer"
* version = "1.0.0"
* name = "CapabilityStatementLARSServer"
* title = "實驗室傳染病自動通報系統-伺服器端"
* status = #active
* experimental = false
* publisher = "衛福部疾病管制署"
* date = "2026-11-16"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* implementationGuide = "https://cdc.gov.tw/lars/ImplementationGuide/tw.gov.mohw.cdc.lars"
* description = "實驗室傳染病自動通報系統-伺服器端(Server)之能力聲明"
* text.status = #extensions
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <h2 id=\"title\">實驗室傳染病自動通報系統-伺服器端</h2>
    <ul>
        <li>實作指引版本：1.0.0</li>
        <li>FHIR版本：4.0.1</li>
        <li>支援格式：<code>json</code>, <code>xml</code></li>
        <li>發佈日：2026-11-16</li>
        <li>發佈者：衛福部疾病管制署</li>
    </ul>
    <h3 id=\"shallIGs\">必須（SHALL）支援以下實作指引</h3>
    <ul>
        <li><a href=\"index.html\">實驗室傳染病自動通報系統實作指引</a></li>
    </ul>
    <h2 id=\"rest\">Server的FHIR RESTful功能要求</h2>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h3 id=\"mode1\" class=\"panel-title\">模式: <code>server</code></h3>
        </div>
        <div class=\"panel-body\">
            <div>
                <p>實驗室傳染病自動通報系統-伺服器端必須(SHALL)支援新增、應該(SHOULD)支援查詢一個或多個實驗室傳染病自動通報系統Profile(s)；不應該(SHOULD NOT)支援更新及刪除。</p>
                <p>安全性：<br/>
                    (1)有關要求和建議，請參閱<a href=\"security.html\">安全性</a>。</p>
            </div>
        </div>
    </div>
    <h3 id=\"resourcesCap1\">Resources或Profiles的RESTful功能</h3>
    <h4 id=\"resourcesSummary1\">Summary</h4>
    <p>共有九類Resources，其中五類定義查詢參數，如表列：</p>
    <div class=\"table-responsive\">
        <table class=\"table table-condensed table-hover\">
            <thead>
                <tr>
                    <th><b>Resource型別</b></th>
                    <th><b>Profile</b></th>
                    <th>Create</th>
                    <th>Search</th>
                    <th>Update</th>
                    <th>Delete</th>
                    <th><b>支援的查詢參數</b></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href=\"#Bundle1-1\">Bundle</a></td>
                    <td>支援的Profiles<br />
                        &#160;&#160;<a href=\"StructureDefinition-bundle-lars-daily-report.html\">實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)</a><br />
                        &#160;&#160;<a href=\"StructureDefinition-bundle-lars-monthly-report.html\">實驗室傳染病每日總收件數上傳(Bundle MonthlyReport LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td>identifier, message</td>
                </tr>
                <tr>
                    <td><a href=\"#MessageHeader1-2\">MessageHeader</a></td>
                    <td>支援的Profiles<br />
                        &#160;&#160;<a href=\"StructureDefinition-messageheader-lars-daily-report.html\">每日通報個案通報訊息(MessageHeader DailyReport LARS)</a><br />
                        &#160;&#160;<a href=\"StructureDefinition-messageheader-lars-monthly-report.html\">每日總收件數檢驗通報訊息(MessageHeader MonthlyReport LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td>sender</td>
                </tr>
                <tr>
                    <td><a href=\"#Organization1-3\">Organization</a></td>
                    <td><a href=\"StructureDefinition-organization-lars.html\">醫事機構(Organization LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td>identifier</td>
                </tr>
                <tr>
                    <td><a href=\"#Patient1-4\">Patient</a></td>
                    <td><a href=\"StructureDefinition-patient-lars-daily-report.html\">每日通報個案基本資料(Patient DailyReport LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Encounter1-5\">Encounter</a></td>
                    <td><a href=\"StructureDefinition-encounter-lars-daily-report.html\">每日通報個案就醫資料(Encounter DailyReport LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Condition1-6\">Condition</a></td>
                    <td><a href=\"StructureDefinition-condition-lars-daily-report.html\">每日通報個案檢驗疾病(Condition DailyReport LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#DiagnosticReport1-7\">DiagnosticReport</a></td>
                    <td><a href=\"StructureDefinition-diagnosticreport-lars-daily-report.html\">每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Observation1-8\">Observation</a></td>
                    <td>支援的Profiles<br />
                        &#160;&#160;<a href=\"StructureDefinition-observation-lars-daily-report.html\">每日通報個案檢驗檢查Code=99999(Observation DailyReport LARS)</a><br />
                        &#160;&#160;<a href=\"StructureDefinition-observation-lars-daily-report-loinc.html\">每日通報個案檢驗檢查紀錄(LOINC)(Observation DailyReport LARS (LOINC))</a><br />
                        &#160;&#160;<a href=\"StructureDefinition-observation-lars-monthly-report.html\">每日總收件數檢驗檢查(Observation MonthlyReport LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td>code, specimen</td>
                </tr>
                <tr>
                    <td><a href=\"#Specimen1-9\">Specimen</a></td>
                    <td>支援的Profiles<br />
                        &#160;&#160;<a href=\"StructureDefinition-specimen-lars-daily-report.html\">每日通報個案檢驗檢體(Specimen DailyReport LARS)</a><br />
                        &#160;&#160;<a href=\"StructureDefinition-specimen-lars-monthly-report.html\">每日總收件數檢驗檢體(Specimen MonthlyReport LARS)</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\"></td>
                    <td>received-time, type</td>
                </tr>
            </tbody>
        </table>
    </div>
    <hr />
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Bundle1-1\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Bundle</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/bundle.html\">Bundle</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-bundle-lars-daily-report.html\">實驗室傳染病每日通報個案上傳(Bundle DailyReport LARS)</a><br />
                        <a href=\"StructureDefinition-bundle-lars-monthly-report.html\">實驗室傳染病每日總收件數上傳(Bundle MonthlyReport LARS)</a>
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-12\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Bundle-identifier.html\">identifier</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Bundle?identifier=[通報資料流水號]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Bundle-message.html\">message</a></td>
                                    <td><code>reference</code></td>
                                    <td>
                                        <code>GET [base]/Bundle?message.sender.identifier=[醫事機構代碼]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"MessageHeader1-2\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>MessageHeader</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/messageheader.html\">MessageHeader</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-messageheader-lars-daily-report.html\">每日通報個案通報訊息(MessageHeader DailyReport LARS)</a><br />
                        <a href=\"StructureDefinition-messageheader-lars-monthly-report.html\">每日總收件數檢驗通報訊息(MessageHeader MonthlyReport LARS)</a>
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-12\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-MessageHeader-sender.html\">sender</a></td>
                                    <td><code>reference</code></td>
                                    <td>
                                        <code>GET [base]/MessageHeader?sender.identifier=[醫事機構代碼]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Organization1-3\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Organization</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/organization.html\">Organization</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-organization-lars.html\">醫事機構(Organization LARS)</a>
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-12\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Organization-identifier.html\">identifier</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Organization?identifier={system|}[醫事機構代碼]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Patient1-4\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Patient</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/patient.html\">Patient</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-patient-lars-daily-report.html\">每日通報個案基本資料(Patient DailyReport LARS)</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Encounter1-5\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Encounter</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/encounter.html\">Encounter</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-encounter-lars-daily-report.html\">每日通報個案就醫資料(Encounter DailyReport LARS)</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Condition1-6\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Condition</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/condition.html\">Condition</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-condition-lars-daily-report.html\">每日通報個案檢驗疾病(Condition DailyReport LARS)</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"DiagnosticReport1-7\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>DiagnosticReport</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/diagnosticreport.html\">DiagnosticReport</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-diagnosticreport-lars-daily-report.html\">每日通報個案檢驗報告(DiagnosticReport DailyReport LARS)</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Observation1-8\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Observation</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/observation.html\">Observation</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-observation-lars-daily-report.html\">每日通報個案檢驗檢查Code=99999(Observation DailyReport LARS)</a><br />
                        <a href=\"StructureDefinition-observation-lars-daily-report-loinc.html\">每日通報個案檢驗檢查紀錄(LOINC)(Observation DailyReport LARS (LOINC))</a><br />
                        <a href=\"StructureDefinition-observation-lars-monthly-report.html\">每日總收件數檢驗檢查(Observation MonthlyReport LARS)</a>
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-12\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Observation-code.html\">code</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Observation?code={system|}[健保批價碼]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Observation-specimen.html\">specimen</a></td>
                                    <td><code>reference</code></td>
                                    <td>
                                        <code>GET [base]/Observation?specimen.type=[檢體種類]</code><br/><code>GET [base]/Observation?specimen.received-time={gt|lt|ge|le}[date]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Specimen1-9\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Specimen</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"https://hl7.org/fhir/R4/specimen.html\">Specimen</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>必須（SHALL）</strong>支援 <code>create</code>。</li>
                            <li><strong>應該（SHOULD）</strong>支援 <code>search-type</code>。</li>
                            <li><strong>不應該（SHOULD NOT）</strong>支援 <code>update</code>, <code>delete</code>。</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-specimen-lars-daily-report.html\">每日通報個案檢驗檢體(Specimen DailyReport LARS)</a><br />
                        <a href=\"StructureDefinition-specimen-lars-monthly-report.html\">每日總收件數檢驗檢體(Specimen MonthlyReport LARS)</a>
                        </p>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-12\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Specimen-received-time.html\">received-time</a></td>
                                    <td><code>date</code></td>
                                    <td>
                                        <code>GET [base]/Specimen?received-time={gt|lt|ge|le}[date]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Specimen-type.html\">type</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Specimen?type={system|}[檢體種類]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>"

* rest.mode = #server
* rest.documentation = "實驗室傳染病自動通報系統-伺服器端必須(SHALL)支援新增、應該(SHOULD)支援查詢一個或多個實驗室傳染病自動通報系統Profile(s)；不應該(SHOULD NOT)支援更新及刪除。"

* rest.resource[+].type = #Bundle
* rest.resource[=].supportedProfile[0] = "https://cdc.gov.tw/lars/StructureDefinition/bundle-lars-daily-report"
* rest.resource[=].supportedProfile[1] = "https://cdc.gov.tw/lars/StructureDefinition/bundle-lars-monthly-report"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://cdc.gov.tw/lars/SearchParameter/Bundle-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "message"
* rest.resource[=].searchParam[=].definition = "https://cdc.gov.tw/lars/SearchParameter/Bundle-message"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #MessageHeader
* rest.resource[=].supportedProfile[0] = "https://cdc.gov.tw/lars/StructureDefinition/messageheader-lars-daily-report"
* rest.resource[=].supportedProfile[1] = "https://cdc.gov.tw/lars/StructureDefinition/messageheader-lars-monthly-report"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "sender"
* rest.resource[=].searchParam[=].definition = "https://cdc.gov.tw/lars/SearchParameter/MessageHeader-sender"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Organization
* rest.resource[=].profile = "https://cdc.gov.tw/lars/StructureDefinition/organization-lars"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://cdc.gov.tw/lars/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://cdc.gov.tw/lars/StructureDefinition/patient-lars-daily-report"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Encounter
* rest.resource[=].profile = "https://cdc.gov.tw/lars/StructureDefinition/encounter-lars-daily-report"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Condition
* rest.resource[=].profile = "https://cdc.gov.tw/lars/StructureDefinition/condition-lars-daily-report"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].profile = "https://cdc.gov.tw/lars/StructureDefinition/diagnosticreport-lars-daily-report"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[0] = "https://cdc.gov.tw/lars/StructureDefinition/observation-lars-daily-report"
* rest.resource[=].supportedProfile[1] = "https://cdc.gov.tw/lars/StructureDefinition/observation-lars-daily-report-loinc"
* rest.resource[=].supportedProfile[2] = "https://cdc.gov.tw/lars/StructureDefinition/observation-lars-monthly-report"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "code"
* rest.resource[=].searchParam[=].definition = "https://cdc.gov.tw/lars/SearchParameter/Observation-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "specimen"
* rest.resource[=].searchParam[=].definition = "https://cdc.gov.tw/lars/SearchParameter/Observation-specimen"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Specimen
* rest.resource[=].supportedProfile[0] = "https://cdc.gov.tw/lars/StructureDefinition/specimen-lars-daily-report"
* rest.resource[=].supportedProfile[1] = "https://cdc.gov.tw/lars/StructureDefinition/specimen-lars-monthly-report"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD-NOT
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "received-time"
* rest.resource[=].searchParam[=].definition = "https://cdc.gov.tw/lars/SearchParameter/Specimen-received-time"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "https://cdc.gov.tw/lars/SearchParameter/Specimen-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
