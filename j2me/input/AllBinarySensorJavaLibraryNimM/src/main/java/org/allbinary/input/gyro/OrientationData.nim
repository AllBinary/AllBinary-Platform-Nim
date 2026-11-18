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
# package org.allbinary.input.gyro

{.warning[UnusedImport]: off.}
import allbinary_java

type
    OrientationData* = ref object of JObject
        ORIENTATION_SENSOR_INPUT*: string
        ORIENTATION_TYPE*: string

proc newOrientationData*(): OrientationData
proc initOrientationData*(this: OrientationData)
proc getInstance*(t: typedesc[OrientationData]): OrientationData {.discardable.}

var OrientationData_SINGLETONValue: OrientationData
var OrientationData_SINGLETONSet = false
proc SINGLETON*(t: typedesc[OrientationData]): OrientationData =
    if not OrientationData_SINGLETONSet:
        OrientationData_SINGLETONSet = true
        OrientationData_SINGLETONValue = newOrientationData()
    OrientationData_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsOrientationData(this: OrientationData) =
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
    this.ORIENTATION_TYPE = "Orientation Type"
    discard

proc initOrientationData*(this: OrientationData) =
        this.initFieldsOrientationData()
        discard

proc newOrientationData*(): OrientationData =
    result = OrientationData()
    initOrientationData(result)

proc getInstance*(t: typedesc[OrientationData]): OrientationData {.discardable.} =
        return OrientationData.SINGLETON

