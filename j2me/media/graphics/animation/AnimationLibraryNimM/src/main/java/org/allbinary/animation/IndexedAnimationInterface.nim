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
import org/allbinary/animation/SequentialAnimationInterface as SequentialAnimationInterfaceModule
export SequentialAnimationInterfaceModule

type
    IndexedAnimationInterface* = ref object of SequentialAnimationInterface


method reset*(this: IndexedAnimationInterface) {.base.} =
        raise newJException("AbstractMethodError", "reset")

method setFrame*(this: IndexedAnimationInterface, index: int32) {.base.} =
        raise newJException("AbstractMethodError", "setFrame")

method getFrame*(this: IndexedAnimationInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getFrame")

