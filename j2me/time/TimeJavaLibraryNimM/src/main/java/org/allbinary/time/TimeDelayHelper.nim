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
import java/lang/System as SystemModule
export SystemModule
import java/lang/Long as LongModule
export LongModule

type
    TimeDelayHelper* = ref object of JObject
        startTime*: int64
        elapsedTimeAtPause*: int64
        delay*: int32

proc newTimeDelayHelper*(delay: int32): TimeDelayHelper
proc initTimeDelayHelper*(this: TimeDelayHelper, delay: int32)
method isTimeTNT*(this: TimeDelayHelper): bool {.base, discardable.}
method isTimeSinceTNT*(this: TimeDelayHelper, delay: int32): bool {.base, discardable.}
method isTime*(this: TimeDelayHelper, currentTime: int64): bool {.base, discardable.}
method isTimeWithoutReset*(this: TimeDelayHelper, currentTime: int64): bool {.base, discardable.}
method isTimeSince*(this: TimeDelayHelper, delay: int32, currentTime: int64): bool {.base, discardable.}
method getElapsedTNT*(this: TimeDelayHelper): int64 {.base, discardable.}
method getElapsed*(this: TimeDelayHelper, currentTime: int64): int64 {.base, discardable.}
method isElapsed*(this: TimeDelayHelper, currentTime: int64, time: int64): bool {.base, discardable.}
method isElapsedTNT*(this: TimeDelayHelper, time: int64): bool {.base, discardable.}
method setStartTime*(this: TimeDelayHelper, startTime: int64) {.base.}
method getStartTime*(this: TimeDelayHelper): int64 {.base, discardable.}
method setStartTimeTNT*(this: TimeDelayHelper) {.base.}
method pause*(this: TimeDelayHelper) {.base.}
method resume*(this: TimeDelayHelper): bool {.base, discardable.}
method toStringAt*(this: TimeDelayHelper, currentTime: int64): string {.base, discardable.}
method toString*(this: TimeDelayHelper): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule


# Java field initializers run after the base initializer
proc initFieldsTimeDelayHelper(this: TimeDelayHelper) =
    this.startTime = int64(-1)
    this.elapsedTimeAtPause = Long.MIN_VALUE
    
    discard

proc initTimeDelayHelper*(this: TimeDelayHelper, delay: int32) =
        this.initFieldsTimeDelayHelper()
        this.delay = delay
        this.setStartTimeTNT()

proc newTimeDelayHelper*(delay: int32): TimeDelayHelper =
    result = TimeDelayHelper()
    initTimeDelayHelper(result, delay)

method isTimeTNT*(this: TimeDelayHelper): bool {.base, discardable.} =
        var currentTime: int64 = jCurrentTimeMillis()
        if currentTime -% this.startTime > int64(this.delay):
            this.startTime = currentTime
            return true
        return false

method isTimeSinceTNT*(this: TimeDelayHelper, delay: int32): bool {.base, discardable.} =
        var currentTime: int64 = jCurrentTimeMillis()
        if currentTime -% this.startTime > int64(delay):
            this.startTime = currentTime
            return true
        return false

method isTime*(this: TimeDelayHelper, currentTime: int64): bool {.base, discardable.} =
        if currentTime -% this.startTime > int64(this.delay):
            this.startTime = currentTime
            return true
        return false

method isTimeWithoutReset*(this: TimeDelayHelper, currentTime: int64): bool {.base, discardable.} =
        if currentTime -% this.startTime > int64(this.delay):
            return true
        return false

method isTimeSince*(this: TimeDelayHelper, delay: int32, currentTime: int64): bool {.base, discardable.} =
        if currentTime -% this.startTime > int64(this.delay):
            this.startTime = currentTime
            return true
        return false

method getElapsedTNT*(this: TimeDelayHelper): int64 {.base, discardable.} =
        return jCurrentTimeMillis() -% this.startTime

method getElapsed*(this: TimeDelayHelper, currentTime: int64): int64 {.base, discardable.} =
        return currentTime -% this.startTime

method isElapsed*(this: TimeDelayHelper, currentTime: int64, time: int64): bool {.base, discardable.} =
        if this.getElapsed(currentTime) > time:
            return true
        else:
            return false

method isElapsedTNT*(this: TimeDelayHelper, time: int64): bool {.base, discardable.} =
        if this.getElapsedTNT() > time:
            return true
        else:
            return false

method setStartTime*(this: TimeDelayHelper, startTime: int64) {.base.} =
        this.startTime = startTime

method getStartTime*(this: TimeDelayHelper): int64 {.base, discardable.} =
        return this.startTime

method setStartTimeTNT*(this: TimeDelayHelper) {.base.} =
        this.startTime = jCurrentTimeMillis()

method pause*(this: TimeDelayHelper) {.base.} =
        this.elapsedTimeAtPause = this.getElapsedTNT()
        this.startTime = Long.MAX_VALUE

method resume*(this: TimeDelayHelper): bool {.base, discardable.} =
        if this.elapsedTimeAtPause != Long.MIN_VALUE:
            this.startTime = jCurrentTimeMillis() +% this.elapsedTimeAtPause
            this.elapsedTimeAtPause = Long.MIN_VALUE
            this.setStartTimeTNT()
            return true
        return false

method toStringAt*(this: TimeDelayHelper, currentTime: int64): string {.base, discardable.} =
        var elapsed: int64 = this.getElapsed(currentTime)
        if elapsed > 0'i64:
            let commonLabels: CommonLabels = CommonLabels.getInstance()
            let elapsedAsString: string = jstr(elapsed)
            return newStringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString()
        else:
            return StringUtil.getInstance().EMPTY_STRING

method toString*(this: TimeDelayHelper): string {.discardable.} =
        var currentTime: int64 = jCurrentTimeMillis()
        var elapsed: int64 = this.getElapsed(currentTime)
        if elapsed > 0'i64:
            let commonLabels: CommonLabels = CommonLabels.getInstance()
            let elapsedAsString: string = jstr(elapsed)
            return newStringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString()
        else:
            return StringUtil.getInstance().EMPTY_STRING

