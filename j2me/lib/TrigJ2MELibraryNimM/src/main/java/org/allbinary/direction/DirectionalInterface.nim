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
# package org.allbinary.direction

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule

type
    DirectionalInterface* = ref object of JObject


method setFrameByDirection*(this: DirectionalInterface, direction: Direction) {.base.} =
        raise newJException("AbstractMethodError", "setFrameByDirection")

method setFrameToAngle*(this: DirectionalInterface, angle: Angle) {.base.} =
        raise newJException("AbstractMethodError", "setFrameToAngle")

method adjustFrameToAngle*(this: DirectionalInterface, newAngle: Angle) {.base.} =
        raise newJException("AbstractMethodError", "adjustFrameToAngle")

method adjustFrame*(this: DirectionalInterface, angle: int16) {.base.} =
        raise newJException("AbstractMethodError", "adjustFrame")

