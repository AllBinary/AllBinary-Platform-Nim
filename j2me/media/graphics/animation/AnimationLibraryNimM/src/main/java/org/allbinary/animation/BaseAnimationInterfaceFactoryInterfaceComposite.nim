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
import org/allbinary/animation/BasicAnimationInterfaceFactoryInterface as BasicAnimationInterfaceFactoryInterfaceModule
export BasicAnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    BaseAnimationInterfaceFactoryInterfaceComposite* = ref object of AnimationInterfaceFactoryInterface
        basicAnimationInterfaceFactoryInterfaceArray*: JArray[BasicAnimationInterfaceFactoryInterface]

proc newBaseAnimationInterfaceFactoryInterfaceComposite*(basicAnimationInterfaceFactoryInterfaceArray: JArray[BasicAnimationInterfaceFactoryInterface]): BaseAnimationInterfaceFactoryInterfaceComposite
proc initBaseAnimationInterfaceFactoryInterfaceComposite*(this: BaseAnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray: JArray[BasicAnimationInterfaceFactoryInterface])
method getInstance*(this: BaseAnimationInterfaceFactoryInterfaceComposite, instanceId: int32): Animation {.discardable.}
method getBasicAnimationInterfaceFactoryInterfaceArray*(this: BaseAnimationInterfaceFactoryInterfaceComposite): JArray[BasicAnimationInterfaceFactoryInterface] {.base, discardable.}
method setBasicAnimationInterfaceFactoryInterfaceArray*(this: BaseAnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray: JArray[BasicAnimationInterfaceFactoryInterface]) {.base.}
method setInitialScale*(this: BaseAnimationInterfaceFactoryInterfaceComposite, scaleProperties: ScaleProperties)
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule


# Java field initializers run after the base initializer
proc initFieldsBaseAnimationInterfaceFactoryInterfaceComposite(this: BaseAnimationInterfaceFactoryInterfaceComposite) =
    
    discard

proc initBaseAnimationInterfaceFactoryInterfaceComposite*(this: BaseAnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray: JArray[BasicAnimationInterfaceFactoryInterface]) =
        this.initFieldsBaseAnimationInterfaceFactoryInterfaceComposite()
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray

proc newBaseAnimationInterfaceFactoryInterfaceComposite*(basicAnimationInterfaceFactoryInterfaceArray: JArray[BasicAnimationInterfaceFactoryInterface]): BaseAnimationInterfaceFactoryInterfaceComposite =
    result = BaseAnimationInterfaceFactoryInterfaceComposite()
    initBaseAnimationInterfaceFactoryInterfaceComposite(result, basicAnimationInterfaceFactoryInterfaceArray)

method getInstance*(this: BaseAnimationInterfaceFactoryInterfaceComposite, instanceId: int32): Animation {.discardable.} =
        return NullAnimationFactory.getFactoryInstance().getInstance(0)

method getBasicAnimationInterfaceFactoryInterfaceArray*(this: BaseAnimationInterfaceFactoryInterfaceComposite): JArray[BasicAnimationInterfaceFactoryInterface] {.base, discardable.} =
        return this.basicAnimationInterfaceFactoryInterfaceArray

method setBasicAnimationInterfaceFactoryInterfaceArray*(this: BaseAnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray: JArray[BasicAnimationInterfaceFactoryInterface]) {.base.} =
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray

method setInitialScale*(this: BaseAnimationInterfaceFactoryInterfaceComposite, scaleProperties: ScaleProperties) =
        discard

