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
# package org.allbinary.media

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/media/AllBinaryVibrationME as AllBinaryVibrationMEModule
export AllBinaryVibrationMEModule

type
    AllBinaryNoVibration* = ref object of AllBinaryVibrationME

proc newAllBinaryNoVibration*(): AllBinaryNoVibration
method vibrate*(this: AllBinaryNoVibration, duration: int32, `type`: int32, volume: int32)

var AllBinaryNoVibration_NO_VIBRATIONValue: AllBinaryVibrationME
var AllBinaryNoVibration_NO_VIBRATIONSet = false
proc NO_VIBRATION*(t: typedesc[AllBinaryNoVibration]): AllBinaryVibrationME =
    if not AllBinaryNoVibration_NO_VIBRATIONSet:
        AllBinaryNoVibration_NO_VIBRATIONSet = true
        AllBinaryNoVibration_NO_VIBRATIONValue = newAllBinaryNoVibration()
    AllBinaryNoVibration_NO_VIBRATIONValue
proc `NO_VIBRATION=`*(t: typedesc[AllBinaryNoVibration], value: AllBinaryVibrationME) =
    AllBinaryNoVibration_NO_VIBRATIONSet = true
    AllBinaryNoVibration_NO_VIBRATIONValue = value

proc initAllBinaryNoVibration*(this: AllBinaryNoVibration) =
    initAllBinaryVibrationME(this)

proc newAllBinaryNoVibration*(): AllBinaryNoVibration =
    result = AllBinaryNoVibration()
    initAllBinaryNoVibration(result)

method vibrate*(this: AllBinaryNoVibration, duration: int32, `type`: int32, volume: int32) =
        discard

when declared(newAllBinaryNoVibrationHook0):
    newAllBinaryNoVibrationHook0 = proc (): AllBinaryVibrationME = newAllBinaryNoVibration()

