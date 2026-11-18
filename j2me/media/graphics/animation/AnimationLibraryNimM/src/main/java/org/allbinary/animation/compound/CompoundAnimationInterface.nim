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
# package org.allbinary.animation.compound

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/AnimationInterface as AnimationInterfaceModule
export AnimationInterfaceModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule

type
    CompoundAnimationInterface* = ref object of AnimationInterface


method nextAnimation*(this: CompoundAnimationInterface) {.base.} =
        raise newJException("AbstractMethodError", "nextAnimation")

method previousAnimation*(this: CompoundAnimationInterface) {.base.} =
        raise newJException("AbstractMethodError", "previousAnimation")

method setAnimation*(this: CompoundAnimationInterface, index: int32) {.base.} =
        raise newJException("AbstractMethodError", "setAnimation")

method getCurrentAnimation*(this: CompoundAnimationInterface): IndexedAnimation {.base, discardable.} =
        raise newJException("AbstractMethodError", "getCurrentAnimation")

