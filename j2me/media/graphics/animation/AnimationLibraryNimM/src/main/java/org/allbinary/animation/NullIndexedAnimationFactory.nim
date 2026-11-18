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
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    NullIndexedAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        NULL_ANIMATION*: Animation

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: NullIndexedAnimationFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
proc newNullIndexedAnimationFactory*(): NullIndexedAnimationFactory
proc initNullIndexedAnimationFactory*(this: NullIndexedAnimationFactory)
proc getFactoryInstance*(t: typedesc[NullIndexedAnimationFactory]): NullIndexedAnimationFactory {.discardable.}
method getInstance*(this: NullIndexedAnimationFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: NullIndexedAnimationFactory, animationInterface: Animation): Animation {.discardable.}
method setInitialScale*(this: NullIndexedAnimationFactory, scaleProperties: ScaleProperties)
import org/allbinary/animation/NullIndexedAnimationInner as NullIndexedAnimationInnerModule
export NullIndexedAnimationInnerModule

var NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYValue: JArray[IndexedAnimation]
var NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYSet = false
proc NULL_INDEXED_ANIMATION_ARRAY*(t: typedesc[NullIndexedAnimationFactory]): JArray[IndexedAnimation] =
    if not NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYSet:
        NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYSet = true
        NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYValue = newJArray[IndexedAnimation](0, default(IndexedAnimation))
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYValue
var NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYValue: NullIndexedAnimationFactory
var NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYSet = false
proc NULL_INDEXED_ANIMATION_FACTORYStatic*(t: typedesc[NullIndexedAnimationFactory]): NullIndexedAnimationFactory =
    if not NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYSet:
        NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYSet = true
        NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYValue = newNullIndexedAnimationFactory()
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYValue
proc `NULL_INDEXED_ANIMATION_FACTORYStatic=`*(t: typedesc[NullIndexedAnimationFactory], value: NullIndexedAnimationFactory) =
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYSet = true
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYValue = value

# Java field initializers run after the base initializer
proc initFieldsNullIndexedAnimationFactory(this: NullIndexedAnimationFactory) =
    this.NULL_ANIMATION = newNullIndexedAnimationInner()
    discard

proc initNullIndexedAnimationFactory*(this: NullIndexedAnimationFactory) =
        this.initFieldsNullIndexedAnimationFactory()
        discard

proc newNullIndexedAnimationFactory*(): NullIndexedAnimationFactory =
    result = NullIndexedAnimationFactory()
    initNullIndexedAnimationFactory(result)

proc getFactoryInstance*(t: typedesc[NullIndexedAnimationFactory]): NullIndexedAnimationFactory {.discardable.} =
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORYStatic

method getInstance*(this: NullIndexedAnimationFactory, instanceId: int32): Animation {.discardable.} =
        return this.NULL_ANIMATION

method getInstanceAnimation*(this: NullIndexedAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        return this.NULL_ANIMATION

method setInitialScale*(this: NullIndexedAnimationFactory, scaleProperties: ScaleProperties) =
        discard

