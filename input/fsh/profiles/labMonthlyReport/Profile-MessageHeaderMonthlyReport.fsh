Profile: MessageHeaderMonthlyReport
Parent: TWCoreMessageHeader
Id: messageheader-lars-monthly-report
Title: "每日總收件數檢驗通報訊息(MessageHeader MonthlyReport LARS)"
Description: "此每日總收件數檢驗通報訊息(MessageHeader MonthlyReport LARS)Profile說明本IG如何進一步定義臺灣核心-訊息表頭（TW Core MessageHeader）Profile，以呈現實驗室傳染病每日總收件數檢驗通報訊息資料。"
* ^version = "0.0.1"

* eventCoding = http://loinc.org#11502-2 "Laboratory report"

* sender only Reference(OrganizationLARS)

* source 1..1 MS
* source.endpoint 1..1 MS

* focus 1..1 MS
* focus only Reference(ObservationMonthlyReport)

