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
    NullAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        NULL_ANIMATION*: Animation
        EMPTY_ARRAY*: JArray[Animation]

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: NullAnimationFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
proc newNullAnimationFactory*(): NullAnimationFactory
proc initNullAnimationFactory*(this: NullAnimationFactory)
proc getFactoryInstance*(t: typedesc[NullAnimationFactory]): NullAnimationFactory {.discardable.}
method getInstance*(this: NullAnimationFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: NullAnimationFactory, animationInterface: Animation): Animation {.discardable.}
method setInitialScale*(this: NullAnimationFactory, scaleProperties: ScaleProperties)
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

var NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYValue: NullAnimationFactory
var NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYSet = false
proc NULL_NOT_FOR_USE_ANIMATION_FACTORY*(t: typedesc[NullAnimationFactory]): NullAnimationFactory =
    if not NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYSet:
        NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYSet = true
        NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYValue = newNullAnimationFactory()
    NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYValue
proc `NULL_NOT_FOR_USE_ANIMATION_FACTORY=`*(t: typedesc[NullAnimationFactory], value: NullAnimationFactory) =
    NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYSet = true
    NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYValue = value
var NullAnimationFactory_NULL_ANIMATION_FACTORYValue: NullAnimationFactory
var NullAnimationFactory_NULL_ANIMATION_FACTORYSet = false
proc NULL_ANIMATION_FACTORYStatic*(t: typedesc[NullAnimationFactory]): NullAnimationFactory =
    if not NullAnimationFactory_NULL_ANIMATION_FACTORYSet:
        NullAnimationFactory_NULL_ANIMATION_FACTORYSet = true
        NullAnimationFactory_NULL_ANIMATION_FACTORYValue = newNullAnimationFactory()
    NullAnimationFactory_NULL_ANIMATION_FACTORYValue
proc `NULL_ANIMATION_FACTORYStatic=`*(t: typedesc[NullAnimationFactory], value: NullAnimationFactory) =
    NullAnimationFactory_NULL_ANIMATION_FACTORYSet = true
    NullAnimationFactory_NULL_ANIMATION_FACTORYValue = value

# Java field initializers run after the base initializer
proc initFieldsNullAnimationFactory(this: NullAnimationFactory) =
    this.NULL_ANIMATION = newAnimation() #[ Java anonymous class body: implement it as a named subclass
        
method paintXY*(this: NullAnimationFactory, graphics: Graphics, x: int32, y: int32) {.base.} =
            discard ]#
    this.EMPTY_ARRAY = newJArray[Animation](0, default(Animation))
    discard

proc initNullAnimationFactory*(this: NullAnimationFactory) =
        this.initFieldsNullAnimationFactory()
        discard

proc newNullAnimationFactory*(): NullAnimationFactory =
    result = NullAnimationFactory()
    initNullAnimationFactory(result)

proc getFactoryInstance*(t: typedesc[NullAnimationFactory]): NullAnimationFactory {.discardable.} =
        return NullAnimationFactory.NULL_ANIMATION_FACTORYStatic

method getInstance*(this: NullAnimationFactory, instanceId: int32): Animation {.discardable.} =
        return this.NULL_ANIMATION

method getInstanceAnimation*(this: NullAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        return this.NULL_ANIMATION

method setInitialScale*(this: NullAnimationFactory, scaleProperties: ScaleProperties) =
        discard

