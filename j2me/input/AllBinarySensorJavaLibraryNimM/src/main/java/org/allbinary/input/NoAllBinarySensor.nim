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
import org/allbinary/input/AllBinarySensor as AllBinarySensorModule
export AllBinarySensorModule

type
    NoAllBinarySensor* = ref object of AllBinarySensor

proc newNoAllBinarySensor*(): NoAllBinarySensor
proc initNoAllBinarySensor*(this: NoAllBinarySensor)
proc getInstance*(t: typedesc[NoAllBinarySensor]): NoAllBinarySensor {.discardable.}

var NoAllBinarySensor_instanceValue: NoAllBinarySensor
var NoAllBinarySensor_instanceSet = false
proc instance*(t: typedesc[NoAllBinarySensor]): NoAllBinarySensor =
    if not NoAllBinarySensor_instanceSet:
        NoAllBinarySensor_instanceSet = true
        NoAllBinarySensor_instanceValue = newNoAllBinarySensor()
    NoAllBinarySensor_instanceValue

proc getInstance*(t: typedesc[NoAllBinarySensor]): NoAllBinarySensor {.discardable.} =
        return NoAllBinarySensor.instance

proc initNoAllBinarySensor*(this: NoAllBinarySensor) =
        initAllBinarySensor(this)
        discard

proc newNoAllBinarySensor*(): NoAllBinarySensor =
    result = NoAllBinarySensor()
    initNoAllBinarySensor(result)

when declared(newNoAllBinarySensorHook0):
    newNoAllBinarySensorHook0 = proc (): AllBinarySensor = newNoAllBinarySensor()

