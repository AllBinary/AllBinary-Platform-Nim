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
# package org.allbinary.animation.special

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/IndexedAnimationInterface as IndexedAnimationInterfaceModule
export IndexedAnimationInterfaceModule

type
    SpecialAnimationInterface* = ref object of IndexedAnimationInterface


method setLastFrame*(this: SpecialAnimationInterface) {.base.} =
        raise newJException("AbstractMethodError", "setLastFrame")

method isComplete*(this: SpecialAnimationInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isComplete")

