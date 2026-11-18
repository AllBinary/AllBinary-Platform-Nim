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
# package org.allbinary.game.ag.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    InputProbability* = ref object of JObject
        likelyhoodIntegerArray*: JArray[JArray[int32]]
        repeatLikelyhoodIntegerArray*: JArray[int32]
        max*: int32
        timeDelayHelper*: TimeDelayHelper

proc newInputProbability*(likelyhoodIntegerArray: JArray[JArray[int32]], repeatLikelyhoodIntegerArray: JArray[int32], max: int32, timeDelayHelper: TimeDelayHelper): InputProbability
proc initInputProbability*(this: InputProbability, likelyhoodIntegerArray: JArray[JArray[int32]], repeatLikelyhoodIntegerArray: JArray[int32], max: int32, timeDelayHelper: TimeDelayHelper)
method getLikelyhoodIntegerArray*(this: InputProbability): JArray[JArray[int32]] {.base, discardable.}
method getRepeatLikelyhoodIntegerArray*(this: InputProbability): JArray[int32] {.base, discardable.}
method getMax*(this: InputProbability): int32 {.base, discardable.}
method getTimeDelayHelper*(this: InputProbability): TimeDelayHelper {.base, discardable.}
method toHashtable*(this: InputProbability): ABHashtable {.base, discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule

var InputProbability_INPUT_PROBABILITYValue: int32
var InputProbability_INPUT_PROBABILITYSet = false
proc INPUT_PROBABILITYStatic*(t: typedesc[InputProbability]): int32 =
    if not InputProbability_INPUT_PROBABILITYSet:
        InputProbability_INPUT_PROBABILITYSet = true
        InputProbability_INPUT_PROBABILITYValue = SmallIntegerSingletonFactory.getInstance().getAt(0)
    InputProbability_INPUT_PROBABILITYValue
proc `INPUT_PROBABILITYStatic=`*(t: typedesc[InputProbability], value: int32) =
    InputProbability_INPUT_PROBABILITYSet = true
    InputProbability_INPUT_PROBABILITYValue = value

# Java field initializers run after the base initializer
proc initFieldsInputProbability(this: InputProbability) =
    
    
    
    
    discard

proc initInputProbability*(this: InputProbability, likelyhoodIntegerArray: JArray[JArray[int32]], repeatLikelyhoodIntegerArray: JArray[int32], max: int32, timeDelayHelper: TimeDelayHelper) =
        this.initFieldsInputProbability()
        this.likelyhoodIntegerArray = likelyhoodIntegerArray
        this.repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray
        this.max = max
        this.timeDelayHelper = timeDelayHelper

proc newInputProbability*(likelyhoodIntegerArray: JArray[JArray[int32]], repeatLikelyhoodIntegerArray: JArray[int32], max: int32, timeDelayHelper: TimeDelayHelper): InputProbability =
    result = InputProbability()
    initInputProbability(result, likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, max, timeDelayHelper)

method getLikelyhoodIntegerArray*(this: InputProbability): JArray[JArray[int32]] {.base, discardable.} =
        return this.likelyhoodIntegerArray

method getRepeatLikelyhoodIntegerArray*(this: InputProbability): JArray[int32] {.base, discardable.} =
        return this.repeatLikelyhoodIntegerArray

method getMax*(this: InputProbability): int32 {.base, discardable.} =
        return this.max

method getTimeDelayHelper*(this: InputProbability): TimeDelayHelper {.base, discardable.} =
        return this.timeDelayHelper

method toHashtable*(this: InputProbability): ABHashtable {.base, discardable.} =
        var hashtable: ABHashtable = StdUtil.getInstance().createHashtable()
        hashtable.put(InputProbability.INPUT_PROBABILITYStatic, this)
        return hashtable

