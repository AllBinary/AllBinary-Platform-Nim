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
# package org.allbinary.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Long as LongModule
export LongModule
import org/allbinary/logic/math/PrimitiveLongSingleton as PrimitiveLongSingletonModule
export PrimitiveLongSingletonModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

type
    BaseGameStatistics* = ref object of JObject
        timeDelayHelper*: TimeDelayHelper
        updateDelayHelper*: TimeDelayHelper
        totalRefreshes*: int64
        totalFrames*: int64
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper
        DEFAULT_SCALE_FACTOR*: int32
        NOT*: string
        EMPTY_STRING*: string
        STRING_ARRAY*: JArray[string]
        SPACE_CHAR*: uint16
        PLUS_CHAR*: uint16
        X_CHAR*: uint16
        CHAR_ARRAY*: JArray[JArray[uint16]]
        primitiveLongSingleton*: PrimitiveLongSingleton

proc newBaseGameStatistics*(): BaseGameStatistics
proc initBaseGameStatistics*(this: BaseGameStatistics)
method init*(this: BaseGameStatistics) {.base.}
method add*(this: BaseGameStatistics, string: string) {.base.}
method process*(this: BaseGameStatistics) {.base.}
method nextFrame*(this: BaseGameStatistics) {.base.}
method nextRefresh*(this: BaseGameStatistics) {.base.}
method getRefreshRate*(this: BaseGameStatistics): int16 {.base, discardable.}
method getTimeDelayHelper*(this: BaseGameStatistics): TimeDelayHelper {.base, discardable.}
method to2DCharArray*(this: BaseGameStatistics): JArray[JArray[uint16]] {.base, discardable.}
method toStringArray*(this: BaseGameStatistics): JArray[string] {.base, discardable.}
method toStringAt*(this: BaseGameStatistics, totalTime: int64): string {.base, discardable.}
method toString*(this: BaseGameStatistics): string {.discardable.}
import org/allbinary/logic/math/ScaleFactorFactory as ScaleFactorFactoryModule
export ScaleFactorFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsBaseGameStatistics(this: BaseGameStatistics) =
    this.timeDelayHelper = newTimeDelayHelper(Integer.MAX_VALUE)
    this.updateDelayHelper = newTimeDelayHelper(2000)
    this.totalRefreshes = 0
    this.totalFrames = 0
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    this.DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
    this.NOT = "Not enough Time to Calculate"
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    this.STRING_ARRAY = newJArrayFrom[string]([" Total Time: ", this.EMPTY_STRING, " Total Frames: ", this.EMPTY_STRING, " Frames/10 Sec: ", this.EMPTY_STRING, " Total Paints: ", this.EMPTY_STRING, " Paints/10 Sec: ", this.EMPTY_STRING])
    this.SPACE_CHAR = uint16(ord(' '))
    this.PLUS_CHAR = uint16(ord('+'))
    this.X_CHAR = uint16(ord('X'))
    this.CHAR_ARRAY = newJArrayFrom[JArray[uint16]]([newJArrayFrom[uint16]([uint16(ord('F')), uint16(ord('r')), uint16(ord('a')), uint16(ord('m')), uint16(ord('e')), uint16(ord('s')), uint16(ord('/')), uint16(ord('1')), uint16(ord('0')), uint16(ord(' ')), uint16(ord('S')), uint16(ord('e')), uint16(ord('c')), uint16(ord(':'))]), newJArrayFrom[uint16]([uint16(ord('X')), uint16(ord('X'))]), newJArrayFrom[uint16]([uint16(ord('P')), uint16(ord('a')), uint16(ord('i')), uint16(ord('n')), uint16(ord('t')), uint16(ord('s')), uint16(ord('/')), uint16(ord('1')), uint16(ord('0')), uint16(ord(' ')), uint16(ord('S')), uint16(ord('e')), uint16(ord('c')), uint16(ord(':'))]), newJArrayFrom[uint16]([uint16(ord('X')), uint16(ord('X'))])])
    this.primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    discard

proc initBaseGameStatistics*(this: BaseGameStatistics) =
        this.initFieldsBaseGameStatistics()
        discard

proc newBaseGameStatistics*(): BaseGameStatistics =
    result = BaseGameStatistics()
    initBaseGameStatistics(result)

method init*(this: BaseGameStatistics) {.base.} =
        this.timeDelayHelper.setStartTimeTNT()
        this.totalRefreshes = 0'i64
        this.totalFrames = 0'i64

method add*(this: BaseGameStatistics, string: string) {.base.} =
        discard

method process*(this: BaseGameStatistics) {.base.} =
        discard

method nextFrame*(this: BaseGameStatistics) {.base.} =
        this.totalFrames = this.totalFrames +% 1

method nextRefresh*(this: BaseGameStatistics) {.base.} =
        this.totalRefreshes = this.totalRefreshes +% 1

method getRefreshRate*(this: BaseGameStatistics): int16 {.base, discardable.} =
        var elapsed: int64 = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime)
        if elapsed > 1'i64:
            let time: int16 = jToInt16((this.totalRefreshes div (ashr(elapsed, this.DEFAULT_SCALE_FACTOR))))
            return time
        else:
            return 0

method getTimeDelayHelper*(this: BaseGameStatistics): TimeDelayHelper {.base, discardable.} =
        return this.timeDelayHelper

method to2DCharArray*(this: BaseGameStatistics): JArray[JArray[uint16]] {.base, discardable.} =
        var totalTime: int64 = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime)
        totalTime = (ashr(totalTime, this.DEFAULT_SCALE_FACTOR))
        if totalTime > 0'i64 and this.updateDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime):
            var framesPerSec: int32 = jToInt32((this.totalFrames div totalTime))
            if framesPerSec < 10:
                this.CHAR_ARRAY[1][0] = this.SPACE_CHAR
                this.CHAR_ARRAY[1][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec]
            elif framesPerSec < 100:
                var tens: int32 = framesPerSec div 10
                var removeTens: int32 = tens *% 10
                this.CHAR_ARRAY[1][0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens]
                this.CHAR_ARRAY[1][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec -% removeTens]
            else:
                this.CHAR_ARRAY[1][0] = this.PLUS_CHAR
                this.CHAR_ARRAY[1][1] = this.PLUS_CHAR
            var refreshesPerSec: int32 = jToInt32((this.totalRefreshes div totalTime))
            if refreshesPerSec < 10:
                this.CHAR_ARRAY[3][0] = this.X_CHAR
                this.CHAR_ARRAY[3][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec]
            elif refreshesPerSec < 100:
                var tens: int32 = refreshesPerSec div 10
                var removeTens: int32 = tens *% 10
                this.CHAR_ARRAY[3][0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec div 10]
                this.CHAR_ARRAY[3][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec -% removeTens]
            else:
                this.CHAR_ARRAY[3][0] = this.PLUS_CHAR
                this.CHAR_ARRAY[3][1] = this.PLUS_CHAR
        return this.CHAR_ARRAY

method toStringArray*(this: BaseGameStatistics): JArray[string] {.base, discardable.} =
        var totalTime: int64 = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime div 10000'i64)
        if totalTime > 0'i64:
            this.STRING_ARRAY[1] = jstr(totalTime)
            this.STRING_ARRAY[3] = jstr(this.totalFrames)
            this.STRING_ARRAY[5] = jstr(this.totalFrames div totalTime)
            this.STRING_ARRAY[7] = jstr(this.totalRefreshes)
            this.STRING_ARRAY[9] = jstr(this.totalRefreshes div totalTime)
        else:
            var string: string = this.EMPTY_STRING
            this.STRING_ARRAY[1] = string
            this.STRING_ARRAY[3] = string
            this.STRING_ARRAY[5] = string
            this.STRING_ARRAY[7] = string
            this.STRING_ARRAY[9] = string
        return this.STRING_ARRAY

method toStringAt*(this: BaseGameStatistics, totalTime: int64): string {.base, discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(this.STRING_ARRAY[0])
        stringBuffer.appendlong(totalTime)
        stringBuffer.append(this.STRING_ARRAY[2])
        stringBuffer.appendlong(this.totalFrames)
        stringBuffer.append(this.STRING_ARRAY[4])
        stringBuffer.appendlong(this.totalFrames div totalTime)
        if this.totalRefreshes > 0'i64:
            stringBuffer.append(this.STRING_ARRAY[6])
            stringBuffer.appendlong(this.totalRefreshes)
            stringBuffer.append(this.STRING_ARRAY[8])
            stringBuffer.appendlong(this.totalRefreshes div totalTime)
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        return stringBuffer.toString()

method toString*(this: BaseGameStatistics): string {.discardable.} =
        var totalTime: int64 = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime div 1000'i64)
        if totalTime > 0'i64:
            return this.toStringAt(totalTime)
        else:
            return this.NOT

