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
    CompoundIndexedAnimationInterfaceFactory* = ref object of CompoundAnimationInterfaceFactory

proc newCompoundIndexedAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): CompoundIndexedAnimationInterfaceFactory
proc initCompoundIndexedAnimationInterfaceFactory*(this: CompoundIndexedAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory)
method createArray*(this: CompoundIndexedAnimationInterfaceFactory, size: int32): JArray[Animation] {.discardable.}
method createAnimation*(this: CompoundIndexedAnimationInterfaceFactory, animationArray: JArray[Animation]): Animation {.discardable.}
import org/allbinary/animation/compound/CompoundIndexedAnimation as CompoundIndexedAnimationModule
export CompoundIndexedAnimationModule


proc initCompoundIndexedAnimationInterfaceFactory*(this: CompoundIndexedAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory) =
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

proc newCompoundIndexedAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): CompoundIndexedAnimationInterfaceFactory =
    result = CompoundIndexedAnimationInterfaceFactory()
    initCompoundIndexedAnimationInterfaceFactory(result, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

method createArray*(this: CompoundIndexedAnimationInterfaceFactory, size: int32): JArray[Animation] {.discardable.} =
        return newJArray[Animation](size, default(Animation))

method createAnimation*(this: CompoundIndexedAnimationInterfaceFactory, animationArray: JArray[Animation]): Animation {.discardable.} =
        return newCompoundIndexedAnimation(animationArray, this.animationBehaviorFactory.getOrCreateInstance())

when declared(newCompoundIndexedAnimationInterfaceFactoryHook2):
    newCompoundIndexedAnimationInterfaceFactoryHook2 = proc (basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): CompoundAnimationInterfaceFactory = newCompoundIndexedAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

