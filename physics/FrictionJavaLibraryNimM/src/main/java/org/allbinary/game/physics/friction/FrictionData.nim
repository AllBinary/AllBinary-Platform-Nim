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
# package org.allbinary.game.physics.friction

{.warning[UnusedImport]: off.}
import allbinary_java

type
    FrictionData* = ref object of JObject

proc newFrictionData*(): FrictionData
proc initFrictionData*(this: FrictionData)
proc getFrictionDenominator*(t: typedesc[FrictionData]): int32 {.discardable.}

var FrictionData_FRICTION_DENOMINATORValue: int32
var FrictionData_FRICTION_DENOMINATORSet = false
proc FRICTION_DENOMINATOR*(t: typedesc[FrictionData]): int32 =
    if not FrictionData_FRICTION_DENOMINATORSet:
        FrictionData_FRICTION_DENOMINATORSet = true
        FrictionData_FRICTION_DENOMINATORValue = 100
    FrictionData_FRICTION_DENOMINATORValue

proc initFrictionData*(this: FrictionData) =
        discard
        discard

proc newFrictionData*(): FrictionData =
    result = FrictionData()
    initFrictionData(result)

proc getFrictionDenominator*(t: typedesc[FrictionData]): int32 {.discardable.} =
        return FrictionData.FRICTION_DENOMINATOR

