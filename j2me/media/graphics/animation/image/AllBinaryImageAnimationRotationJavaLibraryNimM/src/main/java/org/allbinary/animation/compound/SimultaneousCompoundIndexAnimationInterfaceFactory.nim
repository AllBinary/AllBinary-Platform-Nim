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
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule

type
    SimultaneousCompoundIndexAnimationInterfaceFactory* = ref object of AnimationInterfaceFactoryInterface
        basicAnimationInterfaceFactoryInterfaceArray*: JArray[AnimationInterfaceFactoryInterface]
        animationBehaviorFactory*: AnimationBehaviorFactory

proc newSimultaneousCompoundIndexAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): SimultaneousCompoundIndexAnimationInterfaceFactory
proc initSimultaneousCompoundIndexAnimationInterfaceFactory*(this: SimultaneousCompoundIndexAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: SimultaneousCompoundIndexAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.}
method getOrCreate*(this: SimultaneousCompoundIndexAnimationInterfaceFactory, animationInterfaceArray: JArray[IndexedAnimation]): Animation {.base, discardable.}
method getBasicAnimationInterfaceFactoryInterfaceArray*(this: SimultaneousCompoundIndexAnimationInterfaceFactory): JArray[AnimationInterfaceFactoryInterface] {.base, discardable.}
method setInitialScale*(this: SimultaneousCompoundIndexAnimationInterfaceFactory, scaleProperties: ScaleProperties)
import org/allbinary/animation/compound/SimultaneousCompoundIndexAnimation as SimultaneousCompoundIndexAnimationModule
export SimultaneousCompoundIndexAnimationModule


# Java field initializers run after the base initializer
proc initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory(this: SimultaneousCompoundIndexAnimationInterfaceFactory) =
    
    
    discard

proc initSimultaneousCompoundIndexAnimationInterfaceFactory*(this: SimultaneousCompoundIndexAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory()
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        this.animationBehaviorFactory = animationBehaviorFactory

proc newSimultaneousCompoundIndexAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): SimultaneousCompoundIndexAnimationInterfaceFactory =
    result = SimultaneousCompoundIndexAnimationInterfaceFactory()
    initSimultaneousCompoundIndexAnimationInterfaceFactory(result, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

method getInstance*(this: SimultaneousCompoundIndexAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.} =
        let size: int32 = this.basicAnimationInterfaceFactoryInterfaceArray.length
        let animationInterfaceArray: JArray[IndexedAnimation] = newJArray[IndexedAnimation](size, default(IndexedAnimation))
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                animationInterfaceArray[index] = IndexedAnimation(JObject(this.basicAnimationInterfaceFactoryInterfaceArray[index].getInstance(instanceId)))
        return this.getOrCreate(animationInterfaceArray)

method getOrCreate*(this: SimultaneousCompoundIndexAnimationInterfaceFactory, animationInterfaceArray: JArray[IndexedAnimation]): Animation {.base, discardable.} =
        return newSimultaneousCompoundIndexAnimation(animationInterfaceArray, this.animationBehaviorFactory.getOrCreateInstance())

method getBasicAnimationInterfaceFactoryInterfaceArray*(this: SimultaneousCompoundIndexAnimationInterfaceFactory): JArray[AnimationInterfaceFactoryInterface] {.base, discardable.} =
        return this.basicAnimationInterfaceFactoryInterfaceArray

method setInitialScale*(this: SimultaneousCompoundIndexAnimationInterfaceFactory, scaleProperties: ScaleProperties) =
        discard

