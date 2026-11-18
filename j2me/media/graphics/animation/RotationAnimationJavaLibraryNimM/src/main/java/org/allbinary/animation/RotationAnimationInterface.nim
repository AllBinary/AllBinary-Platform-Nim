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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/direction/DirectionalInterface as DirectionalInterfaceModule
export DirectionalInterfaceModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/animation/IndexedAnimationInterface as IndexedAnimationInterfaceModule
export IndexedAnimationInterfaceModule

type
    RotationAnimationInterface* = ref object of IndexedAnimationInterface


method getAngleInfoP*(this: RotationAnimationInterface): AngleInfo {.base, discardable.} =
        raise newJException("AbstractMethodError", "getAngleInfoP")

method nextRotation*(this: RotationAnimationInterface) {.base.} =
        raise newJException("AbstractMethodError", "nextRotation")

method previousRotation*(this: RotationAnimationInterface) {.base.} =
        raise newJException("AbstractMethodError", "previousRotation")

