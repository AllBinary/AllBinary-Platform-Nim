# Generated Code Do Not Modify
# package org.allbinary.time

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Boolean as BooleanModule
export BooleanModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/thread/ThreadObjectUtil as ThreadObjectUtilModule
export ThreadObjectUtilModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

type
    StupidTimer* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        nullUtil*: NullUtil
        threadObjectUtil*: ThreadObjectUtil

proc newStupidTimer*(): StupidTimer
method visitBool*(this: StupidTimer, visitorInterface: Visitor): bool {.base, discardable.}
method visit*(this: StupidTimer, visitorInterface: Visitor, timeDelayHelper: TimeDelayHelper) {.base.}
method stopWaiting*(this: StupidTimer) {.base.}
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsStupidTimer(this: StupidTimer) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.nullUtil = NullUtil.getInstance()
    this.threadObjectUtil = ThreadObjectUtil.getInstance()
    discard

proc initStupidTimer*(this: StupidTimer) =
    this.initFieldsStupidTimer()

proc newStupidTimer*(): StupidTimer =
    result = StupidTimer()
    initStupidTimer(result)

method visitBool*(this: StupidTimer, visitorInterface: Visitor): bool {.base, discardable.} =
        let `result`: bool = jUnboxBoolean(visitorInterface.visit(this.nullUtil.NULL_OBJECT))
        let result2: bool = `result`.booleanValue()
        return result2

method visit*(this: StupidTimer, visitorInterface: Visitor, timeDelayHelper: TimeDelayHelper) {.base.} =
        var tookTooLong: bool = false
        let WAITING_FOR: string = "Waiting for: "
        PreLogUtil.put(newStringMaker().append(WAITING_FOR).append(StringUtil.getInstance().toString(visitorInterface)).toString(), this, this.commonStrings.VISIT)
        var index: int32 = 0
        while this.visitBool(visitorInterface):
            if index mod 10 == 0:
                PreLogUtil.put(newStringMaker().append(WAITING_FOR).appendint(index).toString(), this, this.commonStrings.VISIT)
            index = index +% 1
            block:
                this.threadObjectUtil.waitObjectFor(this, 1800)
            if timeDelayHelper.isTimeTNT():
                tookTooLong = true
                break
        if tookTooLong:
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.VISIT, newJException("Exception", newStringMaker().append("Took Too Long: ").append(StringUtil.getInstance().toString(visitorInterface)).toString()))
        else:
            PreLogUtil.put(timeDelayHelper.toString(), this, this.commonStrings.VISIT)

method stopWaiting*(this: StupidTimer) {.base.} =
        block:
            this.threadObjectUtil.notifyObject(this)

