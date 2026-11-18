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
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterfaceModule
export ProceduralAnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    SingletonAnimationInterfaceFactory* = ref object of AnimationInterfaceFactoryInterface
        animationInterface*: Animation

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: SingletonAnimationInterfaceFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
proc newSingletonAnimationInterfaceFactory*(animationInterface: Animation): SingletonAnimationInterfaceFactory
proc initSingletonAnimationInterfaceFactory*(this: SingletonAnimationInterfaceFactory, animationInterface: Animation)
method getInstance*(this: SingletonAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: SingletonAnimationInterfaceFactory, animationInterface: Animation): Animation {.discardable.}
method setInitialScale*(this: SingletonAnimationInterfaceFactory, scaleProperties: ScaleProperties)


# Java field initializers run after the base initializer
proc initFieldsSingletonAnimationInterfaceFactory(this: SingletonAnimationInterfaceFactory) =
    
    discard

proc initSingletonAnimationInterfaceFactory*(this: SingletonAnimationInterfaceFactory, animationInterface: Animation) =
        this.initFieldsSingletonAnimationInterfaceFactory()
        this.animationInterface = animationInterface

proc newSingletonAnimationInterfaceFactory*(animationInterface: Animation): SingletonAnimationInterfaceFactory =
    result = SingletonAnimationInterfaceFactory()
    initSingletonAnimationInterfaceFactory(result, animationInterface)

method getInstance*(this: SingletonAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.} =
        return this.animationInterface

method getInstanceAnimation*(this: SingletonAnimationInterfaceFactory, animationInterface: Animation): Animation {.discardable.} =
        return this.animationInterface

method setInitialScale*(this: SingletonAnimationInterfaceFactory, scaleProperties: ScaleProperties) =
        discard

