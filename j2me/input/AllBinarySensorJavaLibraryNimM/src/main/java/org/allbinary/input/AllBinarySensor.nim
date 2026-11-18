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
# package org.allbinary.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/input/AllBinarySensorListener as AllBinarySensorListenerModule
export AllBinarySensorListenerModule

type
    AllBinarySensor* = ref object of AllBinarySensorListener
        logUtil*: LogUtil
        commonStrings*: CommonStrings

proc newAllBinarySensor*(): AllBinarySensor
proc initAllBinarySensor*(this: AllBinarySensor)
method init*(this: AllBinarySensor) {.base.}
method update*(this: AllBinarySensor) {.base.}
proc setMax*(t: typedesc[AllBinarySensor], max: int32)
proc getMax*(t: typedesc[AllBinarySensor]): int32 {.discardable.}
method getId*(this: AllBinarySensor): int32 {.base, discardable.}
method shutdown*(this: AllBinarySensor) {.base.}
method onSensorChange*(this: AllBinarySensor)
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule

var AllBinarySensor_NULL_ALLBINARY_SENSORValue: AllBinarySensor
var AllBinarySensor_NULL_ALLBINARY_SENSORSet = false
proc NULL_ALLBINARY_SENSOR*(t: typedesc[AllBinarySensor]): AllBinarySensor =
    if not AllBinarySensor_NULL_ALLBINARY_SENSORSet:
        AllBinarySensor_NULL_ALLBINARY_SENSORSet = true
        AllBinarySensor_NULL_ALLBINARY_SENSORValue = newAllBinarySensor()
    AllBinarySensor_NULL_ALLBINARY_SENSORValue
var AllBinarySensor_maxValue: int32
var AllBinarySensor_maxSet = false
proc max*(t: typedesc[AllBinarySensor]): int32 =
    if not AllBinarySensor_maxSet:
        AllBinarySensor_maxSet = true
        AllBinarySensor_maxValue = 100
    AllBinarySensor_maxValue
proc `max=`*(t: typedesc[AllBinarySensor], value: int32) =
    AllBinarySensor_maxSet = true
    AllBinarySensor_maxValue = value

# Java field initializers run after the base initializer
proc initFieldsAllBinarySensor(this: AllBinarySensor) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initAllBinarySensor*(this: AllBinarySensor) =
        this.initFieldsAllBinarySensor()
        discard

proc newAllBinarySensor*(): AllBinarySensor =
    result = AllBinarySensor()
    initAllBinarySensor(result)

method init*(this: AllBinarySensor) {.base.} =
        discard

method update*(this: AllBinarySensor) {.base.} =
        discard

proc setMax*(t: typedesc[AllBinarySensor], max: int32) =
        AllBinarySensor.max = max

proc getMax*(t: typedesc[AllBinarySensor]): int32 {.discardable.} =
        return AllBinarySensor.max

method getId*(this: AllBinarySensor): int32 {.base, discardable.} =
        return AllBinarySensor.getMax()

method shutdown*(this: AllBinarySensor) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, "shutdown")

method onSensorChange*(this: AllBinarySensor) =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

