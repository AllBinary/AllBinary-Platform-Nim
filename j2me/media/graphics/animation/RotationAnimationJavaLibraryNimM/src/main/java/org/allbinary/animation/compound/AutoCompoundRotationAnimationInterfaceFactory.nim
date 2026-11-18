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
    AutoCompoundRotationAnimationInterfaceFactory* = ref object of CompoundAnimationInterfaceFactory

proc newAutoCompoundRotationAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): AutoCompoundRotationAnimationInterfaceFactory
proc initAutoCompoundRotationAnimationInterfaceFactory*(this: AutoCompoundRotationAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory)
method createArray*(this: AutoCompoundRotationAnimationInterfaceFactory, size: int32): JArray[Animation] {.discardable.}
method createAnimation*(this: AutoCompoundRotationAnimationInterfaceFactory, animationInterfaceArray: JArray[Animation]): Animation {.discardable.}
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/animation/compound/AutoCompoundRotationAnimation as AutoCompoundRotationAnimationModule
export AutoCompoundRotationAnimationModule


proc initAutoCompoundRotationAnimationInterfaceFactory*(this: AutoCompoundRotationAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory) =
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

proc newAutoCompoundRotationAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): AutoCompoundRotationAnimationInterfaceFactory =
    result = AutoCompoundRotationAnimationInterfaceFactory()
    initAutoCompoundRotationAnimationInterfaceFactory(result, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

method createArray*(this: AutoCompoundRotationAnimationInterfaceFactory, size: int32): JArray[Animation] {.discardable.} =
        return cast[JArray[Animation]](newJArray[RotationAnimation](size, default(RotationAnimation)))

method createAnimation*(this: AutoCompoundRotationAnimationInterfaceFactory, animationInterfaceArray: JArray[Animation]): Animation {.discardable.} =
        return newAutoCompoundRotationAnimation(cast[JArray[RotationAnimation]](animationInterfaceArray), this.animationBehaviorFactory.getOrCreateInstance())

when declared(newAutoCompoundRotationAnimationInterfaceFactoryHook2):
    newAutoCompoundRotationAnimationInterfaceFactoryHook2 = proc (basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): CompoundAnimationInterfaceFactory = newAutoCompoundRotationAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

