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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/compound/CompoundAnimationInterfaceFactory as CompoundAnimationInterfaceFactoryModule
export CompoundAnimationInterfaceFactoryModule

type
    SimultaneousCompoundRotationAnimationInterfaceFactory* = ref object of CompoundAnimationInterfaceFactory

proc newSimultaneousCompoundRotationAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): SimultaneousCompoundRotationAnimationInterfaceFactory
proc initSimultaneousCompoundRotationAnimationInterfaceFactory*(this: SimultaneousCompoundRotationAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory)
method createArray*(this: SimultaneousCompoundRotationAnimationInterfaceFactory, size: int32): JArray[Animation] {.discardable.}
method createAnimation*(this: SimultaneousCompoundRotationAnimationInterfaceFactory, animationInterfaceArray: JArray[Animation]): Animation {.discardable.}
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/animation/compound/SimultaneousCompoundRotationAnimation as SimultaneousCompoundRotationAnimationModule
export SimultaneousCompoundRotationAnimationModule


proc initSimultaneousCompoundRotationAnimationInterfaceFactory*(this: SimultaneousCompoundRotationAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory) =
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        if (jSame(animationBehaviorFactory, AnimationBehaviorFactory.getInstance())):
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)

proc newSimultaneousCompoundRotationAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): SimultaneousCompoundRotationAnimationInterfaceFactory =
    result = SimultaneousCompoundRotationAnimationInterfaceFactory()
    initSimultaneousCompoundRotationAnimationInterfaceFactory(result, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

method createArray*(this: SimultaneousCompoundRotationAnimationInterfaceFactory, size: int32): JArray[Animation] {.discardable.} =
        return cast[JArray[Animation]](newJArray[RotationAnimation](size, default(RotationAnimation)))

method createAnimation*(this: SimultaneousCompoundRotationAnimationInterfaceFactory, animationInterfaceArray: JArray[Animation]): Animation {.discardable.} =
        return newSimultaneousCompoundRotationAnimation(cast[JArray[RotationAnimation]](animationInterfaceArray), this.animationBehaviorFactory.getOrCreateInstance())

when declared(newSimultaneousCompoundRotationAnimationInterfaceFactoryHook2):
    newSimultaneousCompoundRotationAnimationInterfaceFactoryHook2 = proc (basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): CompoundAnimationInterfaceFactory = newSimultaneousCompoundRotationAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

