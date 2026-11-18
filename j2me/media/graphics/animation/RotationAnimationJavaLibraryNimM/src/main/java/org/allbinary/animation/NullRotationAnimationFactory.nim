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
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    NullRotationAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        NULL_ROTATION_ANIMATION_ARRAY*: JArray[RotationAnimation]
        NULL_ANIMATION*: Animation

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: NullRotationAnimationFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
proc newNullRotationAnimationFactory*(): NullRotationAnimationFactory
proc initNullRotationAnimationFactory*(this: NullRotationAnimationFactory)
proc getFactoryInstance*(t: typedesc[NullRotationAnimationFactory]): NullRotationAnimationFactory {.discardable.}
method getInstance*(this: NullRotationAnimationFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: NullRotationAnimationFactory, animationInterface: Animation): Animation {.discardable.}
method setInitialScale*(this: NullRotationAnimationFactory, scaleProperties: ScaleProperties)
import org/allbinary/animation/NullRotationAnimation2 as NullRotationAnimation2Module
export NullRotationAnimation2Module

var NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYValue: NullRotationAnimationFactory
var NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYSet = false
proc NULL_ROTATION_ANIMATION_FACTORYStatic*(t: typedesc[NullRotationAnimationFactory]): NullRotationAnimationFactory =
    if not NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYSet:
        NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYSet = true
        NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYValue = newNullRotationAnimationFactory()
    NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYValue
proc `NULL_ROTATION_ANIMATION_FACTORYStatic=`*(t: typedesc[NullRotationAnimationFactory], value: NullRotationAnimationFactory) =
    NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYSet = true
    NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYValue = value

# Java field initializers run after the base initializer
proc initFieldsNullRotationAnimationFactory(this: NullRotationAnimationFactory) =
    this.NULL_ROTATION_ANIMATION_ARRAY = newJArray[RotationAnimation](0, default(RotationAnimation))
    this.NULL_ANIMATION = newNullRotationAnimation2()
    discard

proc initNullRotationAnimationFactory*(this: NullRotationAnimationFactory) =
        this.initFieldsNullRotationAnimationFactory()
        discard

proc newNullRotationAnimationFactory*(): NullRotationAnimationFactory =
    result = NullRotationAnimationFactory()
    initNullRotationAnimationFactory(result)

proc getFactoryInstance*(t: typedesc[NullRotationAnimationFactory]): NullRotationAnimationFactory {.discardable.} =
        return NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORYStatic

method getInstance*(this: NullRotationAnimationFactory, instanceId: int32): Animation {.discardable.} =
        return this.NULL_ANIMATION

method getInstanceAnimation*(this: NullRotationAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        return this.NULL_ANIMATION

method setInitialScale*(this: NullRotationAnimationFactory, scaleProperties: ScaleProperties) =
        discard

