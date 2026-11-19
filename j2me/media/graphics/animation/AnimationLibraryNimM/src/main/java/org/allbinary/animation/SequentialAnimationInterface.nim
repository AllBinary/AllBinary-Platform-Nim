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
import org/allbinary/animation/AnimationInterface as AnimationInterfaceModule
export AnimationInterfaceModule
import org/allbinary/animation/SequenceInterface as SequenceInterfaceModule
export SequenceInterfaceModule

type
    SequentialAnimationInterface* = ref object of AnimationInterface

converter jAsSequenceInterface*(value: SequentialAnimationInterface): SequenceInterface = cast[SequenceInterface](value)

method getSize*(this: SequentialAnimationInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getSize")

method previousFrame*(this: SequentialAnimationInterface) {.base.} =
        raise newJException("AbstractMethodError", "previousFrame")

