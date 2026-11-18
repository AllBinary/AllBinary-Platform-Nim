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
import org/allbinary/animation/IndexedAnimationInterfaceCompositeInterface as IndexedAnimationInterfaceCompositeInterfaceModule
export IndexedAnimationInterfaceCompositeInterfaceModule
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule

type
    RotationAnimationInterfaceCompositeInterface* = ref object of IndexedAnimationInterfaceCompositeInterface


method getRotationAnimationInterface*(this: RotationAnimationInterfaceCompositeInterface): RotationAnimation {.base, discardable.} =
        raise newJException("AbstractMethodError", "getRotationAnimationInterface")

method setFrame*(this: RotationAnimationInterfaceCompositeInterface, index: int32) {.base.} =
        raise newJException("AbstractMethodError", "setFrame")

