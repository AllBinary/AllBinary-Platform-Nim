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

type
    MovementInterface* = ref object of JObject


method init*(this: MovementInterface, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32) {.base.} =
        raise newJException("AbstractMethodError", "init")

method process*(this: MovementInterface, layer: AllBinaryGameLayer) {.base.} =
        raise newJException("AbstractMethodError", "process")

method stop*(this: MovementInterface) {.base.} =
        raise newJException("AbstractMethodError", "stop")

