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
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule
import org/allbinary/animation/BasicAnimationInterfaceFactoryInterface as BasicAnimationInterfaceFactoryInterfaceModule
export BasicAnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    AnimationInterfaceFactoryInterface* = ref object of BasicAnimationInterfaceFactoryInterface


method getInstance*(this: AnimationInterfaceFactoryInterface, instanceId: int32): Animation {.base, discardable.} =
        raise newJException("AbstractMethodError", "getInstance")

method setInitialScale*(this: AnimationInterfaceFactoryInterface, scaleProperties: ScaleProperties) {.base.} =
        raise newJException("AbstractMethodError", "setInitialScale")

