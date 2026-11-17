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
import java/util/Calendar as CalendarModule
export CalendarModule
import java/util/Date as DateModule
export DateModule

#ActualPlatform
type
    TimeStampUtil* = ref object of JObject

proc newTimeStampUtil*(): TimeStampUtil
proc initTimeStampUtil*(this: TimeStampUtil)
proc getInstance*(t: typedesc[TimeStampUtil]): TimeStampUtil {.discardable.}
method getAsString*(this: TimeStampUtil): string {.base, discardable.}

var TimeStampUtil_instanceValue: TimeStampUtil
var TimeStampUtil_instanceSet = false
proc instance*(t: typedesc[TimeStampUtil]): TimeStampUtil =
    if not TimeStampUtil_instanceSet:
        TimeStampUtil_instanceSet = true
        TimeStampUtil_instanceValue = newTimeStampUtil()
    TimeStampUtil_instanceValue

proc getInstance*(t: typedesc[TimeStampUtil]): TimeStampUtil {.discardable.} =
        return TimeStampUtil.instance

proc initTimeStampUtil*(this: TimeStampUtil) =
        discard
        discard

proc newTimeStampUtil*(): TimeStampUtil =
    result = TimeStampUtil()
    initTimeStampUtil(result)

method getAsString*(this: TimeStampUtil): string {.base, discardable.} =
        let calendar: Calendar = Calendar.getInstance()
        let date: Date = calendar.getTime()
        return date.toString()

