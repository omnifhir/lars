Profile: MessageHeaderDailyReport
Parent: TWCoreMessageHeader
Id: messageheader-lars-daily-report
Title: "每日通報個案通報訊息(MessageHeader DailyReport LARS)"
Description: "此每日通報個案通報訊息(MessageHeader DailyReport LARS)Profile說明本IG如何進一步定義臺灣核心-訊息表頭（TW Core MessageHeader）Profile，以呈現實驗室傳染病每日通報個案之通報訊息資料。"
* ^version = "0.0.1"

* eventCoding = http://loinc.org#11502-2 "Laboratory report"

* sender only Reference(OrganizationLARS)

* source 1..1 MS
* source.endpoint 1..1 MS

* focus 1..1 MS
* focus only Reference(ConditionDailyReport)

