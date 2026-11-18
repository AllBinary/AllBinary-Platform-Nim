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
    NullSpecialAnimationFactory* = ref object of AnimationInterfaceFactoryInterface

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: NullSpecialAnimationFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
proc newNullSpecialAnimationFactory*(): NullSpecialAnimationFactory
proc initNullSpecialAnimationFactory*(this: NullSpecialAnimationFactory)
proc getFactoryInstance*(t: typedesc[NullSpecialAnimationFactory]): NullSpecialAnimationFactory {.discardable.}
method getInstance*(this: NullSpecialAnimationFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: NullSpecialAnimationFactory, animationInterface: Animation): Animation {.discardable.}
method setInitialScale*(this: NullSpecialAnimationFactory, scaleProperties: ScaleProperties)
import org/allbinary/animation/special/SpecialAnimation as SpecialAnimationModule
export SpecialAnimationModule

var NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYValue: NullSpecialAnimationFactory
var NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYSet = false
proc NULL_SPECIAL_ANIMATION_FACTORYStatic*(t: typedesc[NullSpecialAnimationFactory]): NullSpecialAnimationFactory =
    if not NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYSet:
        NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYSet = true
        NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYValue = newNullSpecialAnimationFactory()
    NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYValue
proc `NULL_SPECIAL_ANIMATION_FACTORYStatic=`*(t: typedesc[NullSpecialAnimationFactory], value: NullSpecialAnimationFactory) =
    NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYSet = true
    NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYValue = value

proc initNullSpecialAnimationFactory*(this: NullSpecialAnimationFactory) =
        discard
        discard

proc newNullSpecialAnimationFactory*(): NullSpecialAnimationFactory =
    result = NullSpecialAnimationFactory()
    initNullSpecialAnimationFactory(result)

proc getFactoryInstance*(t: typedesc[NullSpecialAnimationFactory]): NullSpecialAnimationFactory {.discardable.} =
        return NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORYStatic

method getInstance*(this: NullSpecialAnimationFactory, instanceId: int32): Animation {.discardable.} =
        return SpecialAnimation.getInstance()

method getInstanceAnimation*(this: NullSpecialAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        return SpecialAnimation.getInstance()

method setInitialScale*(this: NullSpecialAnimationFactory, scaleProperties: ScaleProperties) =
        discard

