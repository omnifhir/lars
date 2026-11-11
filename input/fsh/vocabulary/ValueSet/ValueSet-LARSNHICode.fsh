ValueSet: LARSNHICodeVS
Id: lars-nhi-code-values
Title: "臺灣健保署醫療服務給付項目 + CDC-LARS系統-無健保批價碼值集"
Description: "「臺灣健保署醫療服務給付項目 + CDC-LARS系統-無健保批價碼」值集；資料所屬單位：衛生福利部疾病管制署。"

* ^version = "0.0.1"
* ^experimental = false

* include codes from system https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw
* LARSCodeCS#888888 "SARS-CoV-2無健保批價碼或自費"
* LARSCodeCS#999999 "除SARS-CoV-2之其他病原體無健保批價碼或自費"
