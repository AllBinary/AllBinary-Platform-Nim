#[
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
]#
# Generated Code Do Not Modify
# package org.allbinary.time

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import java/util/Calendar as CalendarModule
export CalendarModule

type
    TimeUtil* = ref object of JObject

proc newTimeUtil*(): TimeUtil
proc getInstance*(t: typedesc[TimeUtil]): TimeUtil {.discardable.}
method setCalendar*(this: TimeUtil, calendar: Calendar, yearString: string, monthString: string, dayString: string, hourString: string) {.base.}
method setCalendarWithTime*(this: TimeUtil, calendar: Calendar, yearString: string, monthString: string, dayString: string, hourString: string, minuteString: string, secondString: string) {.base.}
method setExpirationCalendar*(this: TimeUtil, calendar: Calendar, yearsString: string, monthsString: string, daysString: string, hoursString: string, minutesString: string, secondsString: string) {.base.}
method getTotalTime*(this: TimeUtil, yearString: string, monthString: string, dayString: string, hourString: string, minuteString: string, secondString: string): int64 {.base, discardable.}

var TimeUtil_instanceValue: TimeUtil
var TimeUtil_instanceSet = false
proc instance*(t: typedesc[TimeUtil]): TimeUtil =
    if not TimeUtil_instanceSet:
        TimeUtil_instanceSet = true
        TimeUtil_instanceValue = newTimeUtil()
    TimeUtil_instanceValue
var TimeUtil_calendarValue: Calendar
var TimeUtil_calendarSet = false
proc calendar*(t: typedesc[TimeUtil]): Calendar =
    if not TimeUtil_calendarSet:
        TimeUtil_calendarSet = true
        TimeUtil_calendarValue = Calendar.getInstance()
    TimeUtil_calendarValue

proc initTimeUtil*(this: TimeUtil) =
    discard

proc newTimeUtil*(): TimeUtil =
    result = TimeUtil()
    initTimeUtil(result)

proc getInstance*(t: typedesc[TimeUtil]): TimeUtil {.discardable.} =
        return TimeUtil.instance

method setCalendar*(this: TimeUtil, calendar: Calendar, yearString: string, monthString: string, dayString: string, hourString: string) {.base.} =
        var year: int32 = jParseInt(yearString).intValue()
        var month: int32 = jParseInt(monthString).intValue()
        var day: int32 = jParseInt(dayString).intValue()
        var hour: int32 = jParseInt(hourString).intValue()
        calendar.set(year, month, day, hour, 0)

method setCalendarWithTime*(this: TimeUtil, calendar: Calendar, yearString: string, monthString: string, dayString: string, hourString: string, minuteString: string, secondString: string) {.base.} =
        var year: int32 = jParseInt(yearString).intValue()
        var month: int32 = jParseInt(monthString).intValue()
        var day: int32 = jParseInt(dayString).intValue()
        var hour: int32 = jParseInt(hourString).intValue()
        var minute: int32 = jParseInt(minuteString).intValue()
        var second: int32 = jParseInt(secondString).intValue()
        calendar.set(year, month, day, hour, minute, second)

method setExpirationCalendar*(this: TimeUtil, calendar: Calendar, yearsString: string, monthsString: string, daysString: string, hoursString: string, minutesString: string, secondsString: string) {.base.} =
        var year: int32 = calendar.get(Calendar.YEAR) + jParseInt(yearsString).intValue()
        var month: int32 = calendar.get(Calendar.MONTH) + jParseInt(monthsString).intValue()
        var day: int32 = calendar.get(Calendar.DAY_OF_MONTH) + jParseInt(daysString).intValue()
        var hour: int32 = calendar.get(Calendar.HOUR) + jParseInt(hoursString).intValue()
        var minute: int32 = calendar.get(Calendar.MINUTE) + jParseInt(minutesString).intValue()
        var second: int32 = calendar.get(Calendar.SECOND) + jParseInt(secondsString).intValue()
        calendar.set(year, month, day, hour, minute, second)

method getTotalTime*(this: TimeUtil, yearString: string, monthString: string, dayString: string, hourString: string, minuteString: string, secondString: string): int64 {.base, discardable.} =
        var time: int64 = TimeUtil.calendar.getTimeInMillis()
        this.setExpirationCalendar(TimeUtil.calendar, yearString, monthString, dayString, hourString, minuteString, secondString)
        var timeDelta: int64 = TimeUtil.calendar.getTimeInMillis()
        return timeDelta -% time

