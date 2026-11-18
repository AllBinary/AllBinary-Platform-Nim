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
    SimultaneousCompoundIndexedAnimationInterfaceFactory* = ref object of CompoundAnimationInterfaceFactory

proc newSimultaneousCompoundIndexedAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): SimultaneousCompoundIndexedAnimationInterfaceFactory
proc initSimultaneousCompoundIndexedAnimationInterfaceFactory*(this: SimultaneousCompoundIndexedAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory)
method createArray*(this: SimultaneousCompoundIndexedAnimationInterfaceFactory, size: int32): JArray[Animation] {.discardable.}
method createAnimation*(this: SimultaneousCompoundIndexedAnimationInterfaceFactory, animationArray: JArray[Animation]): Animation {.discardable.}
import org/allbinary/animation/compound/SimultaneousCompoundIndexedAnimation as SimultaneousCompoundIndexedAnimationModule
export SimultaneousCompoundIndexedAnimationModule


proc initSimultaneousCompoundIndexedAnimationInterfaceFactory*(this: SimultaneousCompoundIndexedAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory) =
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

proc newSimultaneousCompoundIndexedAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): SimultaneousCompoundIndexedAnimationInterfaceFactory =
    result = SimultaneousCompoundIndexedAnimationInterfaceFactory()
    initSimultaneousCompoundIndexedAnimationInterfaceFactory(result, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

method createArray*(this: SimultaneousCompoundIndexedAnimationInterfaceFactory, size: int32): JArray[Animation] {.discardable.} =
        return newJArray[Animation](size, default(Animation))

method createAnimation*(this: SimultaneousCompoundIndexedAnimationInterfaceFactory, animationArray: JArray[Animation]): Animation {.discardable.} =
        return newSimultaneousCompoundIndexedAnimation(animationArray, this.animationBehaviorFactory.getOrCreateInstance())

when declared(newSimultaneousCompoundIndexedAnimationInterfaceFactoryHook2):
    newSimultaneousCompoundIndexedAnimationInterfaceFactoryHook2 = proc (basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): CompoundAnimationInterfaceFactory = newSimultaneousCompoundIndexedAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

