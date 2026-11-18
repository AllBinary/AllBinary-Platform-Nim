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
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule

type
    CompoundAnimationInterfaceFactory* = ref object of AnimationInterfaceFactoryInterface
        basicAnimationInterfaceFactoryInterfaceArrayP*: JArray[AnimationInterfaceFactoryInterface]
        animationBehaviorFactory*: AnimationBehaviorFactory

proc newCompoundAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): CompoundAnimationInterfaceFactory
proc initCompoundAnimationInterfaceFactory*(this: CompoundAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: CompoundAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.}
method createArray*(this: CompoundAnimationInterfaceFactory, size: int32): JArray[Animation] {.base, discardable.}
method createAnimation*(this: CompoundAnimationInterfaceFactory, animationInterfaceArray: JArray[Animation]): Animation {.base, discardable.}
method getBasicAnimationInterfaceFactoryInterfaceArray*(this: CompoundAnimationInterfaceFactory): JArray[AnimationInterfaceFactoryInterface] {.base, discardable.}
method setInitialScale*(this: CompoundAnimationInterfaceFactory, scaleProperties: ScaleProperties)
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule


# Java field initializers run after the base initializer
proc initFieldsCompoundAnimationInterfaceFactory(this: CompoundAnimationInterfaceFactory) =
    
    
    discard

proc initCompoundAnimationInterfaceFactory*(this: CompoundAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsCompoundAnimationInterfaceFactory()
        this.basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray
        this.animationBehaviorFactory = animationBehaviorFactory

proc newCompoundAnimationInterfaceFactory*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface], animationBehaviorFactory: AnimationBehaviorFactory): CompoundAnimationInterfaceFactory =
    result = CompoundAnimationInterfaceFactory()
    initCompoundAnimationInterfaceFactory(result, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)

method getInstance*(this: CompoundAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.} =
        let size: int32 = this.basicAnimationInterfaceFactoryInterfaceArrayP.length
        let animationInterfaceArray: JArray[Animation] = this.createArray(size)
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                animationInterfaceArray[index] = this.basicAnimationInterfaceFactoryInterfaceArrayP[index].getInstance(instanceId)
        return this.createAnimation(animationInterfaceArray)

method createArray*(this: CompoundAnimationInterfaceFactory, size: int32): JArray[Animation] {.base, discardable.} =
        return NullAnimationFactory.getFactoryInstance().EMPTY_ARRAY

method createAnimation*(this: CompoundAnimationInterfaceFactory, animationInterfaceArray: JArray[Animation]): Animation {.base, discardable.} =
        return NullAnimationFactory.getFactoryInstance().getInstance(0)

method getBasicAnimationInterfaceFactoryInterfaceArray*(this: CompoundAnimationInterfaceFactory): JArray[AnimationInterfaceFactoryInterface] {.base, discardable.} =
        return this.basicAnimationInterfaceFactoryInterfaceArrayP

method setInitialScale*(this: CompoundAnimationInterfaceFactory, scaleProperties: ScaleProperties) =
        let size: int32 = this.basicAnimationInterfaceFactoryInterfaceArrayP.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.basicAnimationInterfaceFactoryInterfaceArrayP[index].setInitialScale(scaleProperties)

