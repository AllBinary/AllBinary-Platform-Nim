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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Long as LongModule
export LongModule
import java/io/ByteArrayInputStream as ByteArrayInputStreamModule
export ByteArrayInputStreamModule
import java/io/DataInputStream as DataInputStreamModule
export DataInputStreamModule
import java/io/EOFException as EOFExceptionModule
export EOFExceptionModule
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import javax/microedition/rms/RecordComparator as RecordComparatorModule
export RecordComparatorModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    ScoreComparator* = ref object of RecordComparator
        logUtil*: LogUtil
        isHighestBest*: bool

proc newScoreComparator*(isHighestBest: bool): ScoreComparator
proc initScoreComparator*(this: ScoreComparator, isHighestBest: bool)
method getBestScore*(this: ScoreComparator): int64 {.base, discardable.}
method compare*(this: ScoreComparator, recordOne: JArray[int8], recordTwo: JArray[int8]): int32 {.discardable.}
method getHighTooLow*(this: ScoreComparator, scoreOne: int64, scoreTwo: int64): int32 {.base, discardable.}
method getLowTooHigh*(this: ScoreComparator, scoreOne: int64, scoreTwo: int64): int32 {.base, discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsScoreComparator(this: ScoreComparator) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initScoreComparator*(this: ScoreComparator, isHighestBest: bool) =
        this.initFieldsScoreComparator()
        this.isHighestBest = isHighestBest

proc newScoreComparator*(isHighestBest: bool): ScoreComparator =
    result = ScoreComparator()
    initScoreComparator(result, isHighestBest)

method getBestScore*(this: ScoreComparator): int64 {.base, discardable.} =
        return (if this.isHighestBest: Long.MAX_VALUE else: 0)

method compare*(this: ScoreComparator, recordOne: JArray[int8], recordTwo: JArray[int8]): int32 {.discardable.} =
        let byteArrayInputStreamOne: ByteArrayInputStream = newByteArrayInputStream(recordOne)
        let inputStreamOne: DataInputStream = newDataInputStream(byteArrayInputStreamOne)
        let byteArrayInputStreamTwo: ByteArrayInputStream = newByteArrayInputStream(recordTwo)
        let inputStreamTwo: DataInputStream = newDataInputStream(byteArrayInputStreamTwo)
        var scoreOne: int64 = 0'i64
        var scoreTwo: int64 = 0'i64
        try:
            inputStreamOne.readUTF()
            inputStreamTwo.readUTF()
            scoreOne = inputStreamOne.readLong()
            scoreTwo = inputStreamTwo.readLong()
        except CatchableError as jcaught:
            let jexception = jToException(jcaught)
            if jCatches(jexception, "EOFException"):
                let e = jexception
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e)
            elif jCatches(jexception, "IOException"):
                let e = jexception
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e)
            else:
                let e = jexception
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e)
        if this.isHighestBest:
            return this.getHighTooLow(scoreOne, scoreTwo)
        else:
            return this.getLowTooHigh(scoreOne, scoreTwo)

method getHighTooLow*(this: ScoreComparator, scoreOne: int64, scoreTwo: int64): int32 {.base, discardable.} =
        if scoreOne > scoreTwo:
            return RecordComparator.PRECEDES
        elif scoreOne < scoreTwo:
            return RecordComparator.FOLLOWS
        else:
            return RecordComparator.EQUIVALENT

method getLowTooHigh*(this: ScoreComparator, scoreOne: int64, scoreTwo: int64): int32 {.base, discardable.} =
        if scoreOne < scoreTwo:
            return RecordComparator.PRECEDES
        elif scoreOne > scoreTwo:
            return RecordComparator.FOLLOWS
        else:
            return RecordComparator.EQUIVALENT

