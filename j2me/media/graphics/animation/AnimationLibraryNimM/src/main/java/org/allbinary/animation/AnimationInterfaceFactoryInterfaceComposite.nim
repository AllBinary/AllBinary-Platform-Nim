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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    AnimationInterfaceFactoryInterfaceComposite* = ref object of AnimationInterfaceFactoryInterface
        animationInterfaceFactoryInterfaceArray*: JArray[AnimationInterfaceFactoryInterface]

proc newAnimationInterfaceFactoryInterfaceComposite*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface]): AnimationInterfaceFactoryInterfaceComposite
proc initAnimationInterfaceFactoryInterfaceComposite*(this: AnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface])
method getInstance*(this: AnimationInterfaceFactoryInterfaceComposite, instanceId: int32): Animation {.discardable.}
method getAnimationInterfaceFactoryInterfaceArray*(this: AnimationInterfaceFactoryInterfaceComposite): JArray[AnimationInterfaceFactoryInterface] {.base, discardable.}
method setInitialScale*(this: AnimationInterfaceFactoryInterfaceComposite, scaleProperties: ScaleProperties)
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule


# Java field initializers run after the base initializer
proc initFieldsAnimationInterfaceFactoryInterfaceComposite(this: AnimationInterfaceFactoryInterfaceComposite) =
    
    discard

proc initAnimationInterfaceFactoryInterfaceComposite*(this: AnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface]) =
        this.initFieldsAnimationInterfaceFactoryInterfaceComposite()
        this.animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray

proc newAnimationInterfaceFactoryInterfaceComposite*(basicAnimationInterfaceFactoryInterfaceArray: JArray[AnimationInterfaceFactoryInterface]): AnimationInterfaceFactoryInterfaceComposite =
    result = AnimationInterfaceFactoryInterfaceComposite()
    initAnimationInterfaceFactoryInterfaceComposite(result, basicAnimationInterfaceFactoryInterfaceArray)

method getInstance*(this: AnimationInterfaceFactoryInterfaceComposite, instanceId: int32): Animation {.discardable.} =
        return NullAnimationFactory.getFactoryInstance().getInstance(0)

method getAnimationInterfaceFactoryInterfaceArray*(this: AnimationInterfaceFactoryInterfaceComposite): JArray[AnimationInterfaceFactoryInterface] {.base, discardable.} =
        return this.animationInterfaceFactoryInterfaceArray

method setInitialScale*(this: AnimationInterfaceFactoryInterfaceComposite, scaleProperties: ScaleProperties) =
        discard

