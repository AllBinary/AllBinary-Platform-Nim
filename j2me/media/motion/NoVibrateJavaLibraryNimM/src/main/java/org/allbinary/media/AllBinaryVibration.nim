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
    AllBinaryVibration* = ref object of AllBinaryVibrationME

proc newAllBinaryVibration*(): AllBinaryVibration
proc initAllBinaryVibration*(this: AllBinaryVibration)
proc getInstance*(t: typedesc[AllBinaryVibration]): AllBinaryVibrationME {.discardable.}
proc init*(t: typedesc[AllBinaryVibration])
method vibrate*(this: AllBinaryVibration, duration: int32, `type`: int32, volume: int32)
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/media/AllBinaryNoVibration as AllBinaryNoVibrationModule
export AllBinaryNoVibrationModule

var AllBinaryVibration_VIBRATIONValue: AllBinaryVibrationME
var AllBinaryVibration_VIBRATIONSet = false
proc VIBRATION*(t: typedesc[AllBinaryVibration]): AllBinaryVibrationME =
    if not AllBinaryVibration_VIBRATIONSet:
        AllBinaryVibration_VIBRATIONSet = true
        AllBinaryVibration_VIBRATIONValue = AllBinaryNoVibration.NO_VIBRATION
    AllBinaryVibration_VIBRATIONValue
proc `VIBRATION=`*(t: typedesc[AllBinaryVibration], value: AllBinaryVibrationME) =
    AllBinaryVibration_VIBRATIONSet = true
    AllBinaryVibration_VIBRATIONValue = value

proc initAllBinaryVibration*(this: AllBinaryVibration) =
        initAllBinaryVibrationME(this)
        discard

proc newAllBinaryVibration*(): AllBinaryVibration =
    result = AllBinaryVibration()
    initAllBinaryVibration(result)

proc getInstance*(t: typedesc[AllBinaryVibration]): AllBinaryVibrationME {.discardable.} =
        return AllBinaryVibration.VIBRATION

proc init*(t: typedesc[AllBinaryVibration]) =
        if GameConfigurationCentral.getInstance().VIBRATION.getValue().intValue() == 0:
            AllBinaryVibration.VIBRATION = AllBinaryNoVibration.NO_VIBRATION
        else:
            AllBinaryVibration.VIBRATION = newAllBinaryVibration()

method vibrate*(this: AllBinaryVibration, duration: int32, `type`: int32, volume: int32) =
        discard

when declared(newAllBinaryVibrationHook0):
    newAllBinaryVibrationHook0 = proc (): AllBinaryVibrationME = newAllBinaryVibration()

