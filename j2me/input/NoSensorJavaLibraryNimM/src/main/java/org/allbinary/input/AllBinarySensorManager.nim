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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    AllBinarySensorManager* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        ORIENTATION_SENSOR_INPUT*: string
        ORIENTATION_TYPE*: string
        list*: BasicArrayList

proc newAllBinarySensorManager*(): AllBinarySensorManager
proc initAllBinarySensorManager*(this: AllBinarySensorManager)
proc getInstance*(t: typedesc[AllBinarySensorManager]): AllBinarySensorManager {.discardable.}
method init*(this: AllBinarySensorManager) {.base.}
method getSensorNamesList*(this: AllBinarySensorManager): BasicArrayList {.base, discardable.}
method shutdown*(this: AllBinarySensorManager) {.base.}
import org/allbinary/input/accelerometer/AccelerometerSensorFactory as AccelerometerSensorFactoryModule
export AccelerometerSensorFactoryModule
import org/allbinary/input/gyro/GyroSensorFactory as GyroSensorFactoryModule
export GyroSensorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var AllBinarySensorManager_instanceValue: JObject
var AllBinarySensorManager_instanceSet = false
proc instance*(t: typedesc[AllBinarySensorManager]): JObject =
    if not AllBinarySensorManager_instanceSet:
        AllBinarySensorManager_instanceSet = true
        AllBinarySensorManager_instanceValue = NullUtil.getInstance().NULL_OBJECT
    AllBinarySensorManager_instanceValue
proc `instance=`*(t: typedesc[AllBinarySensorManager], value: JObject) =
    AllBinarySensorManager_instanceSet = true
    AllBinarySensorManager_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsAllBinarySensorManager(this: AllBinarySensorManager) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
    this.ORIENTATION_TYPE = "Orientation Type"
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[AllBinarySensorManager]): AllBinarySensorManager {.discardable.} =
        if AllBinarySensorManager.instance == NullUtil.getInstance().NULL_OBJECT:
            AllBinarySensorManager.instance = newAllBinarySensorManager()
        return AllBinarySensorManager(JObject(AllBinarySensorManager.instance))

proc initAllBinarySensorManager*(this: AllBinarySensorManager) =
        this.initFieldsAllBinarySensorManager()
        try:
            GyroSensorFactory.init()
            AccelerometerSensorFactory.init()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e)

proc newAllBinarySensorManager*(): AllBinarySensorManager =
    result = AllBinarySensorManager()
    initAllBinarySensorManager(result)

method init*(this: AllBinarySensorManager) {.base.} =
        discard

method getSensorNamesList*(this: AllBinarySensorManager): BasicArrayList {.base, discardable.} =
        return this.list

method shutdown*(this: AllBinarySensorManager) {.base.} =
        discard

