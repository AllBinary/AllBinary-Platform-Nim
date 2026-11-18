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
# package org.allbinary.physics.movement

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/AllBinaryGameLayer as AllBinaryGameLayerModule
export AllBinaryGameLayerModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/physics/movement/MovementInterface as MovementInterfaceModule
export MovementInterfaceModule

type
    Movement* = ref object of MovementInterface

proc newMovement*(): Movement
proc initMovement*(this: Movement)
method init*(this: Movement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32)
method process*(this: Movement, layer: AllBinaryGameLayer)
method stop*(this: Movement)


proc initMovement*(this: Movement) =
        discard
        discard

proc newMovement*(): Movement =
    result = Movement()
    initMovement(result)

method init*(this: Movement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32) =
        discard

method process*(this: Movement, layer: AllBinaryGameLayer) =
        discard

method stop*(this: Movement) =
        discard

