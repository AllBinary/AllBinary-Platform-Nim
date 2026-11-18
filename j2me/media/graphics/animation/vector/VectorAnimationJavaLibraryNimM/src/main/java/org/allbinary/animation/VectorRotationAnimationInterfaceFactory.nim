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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    VectorRotationAnimationInterfaceFactory* = ref object of AnimationInterfaceFactoryInterface
        currentPoints*: JArray[JArray[JArray[int32]]]
        basicColor*: BasicColor
        animationBehaviorFactory*: AnimationBehaviorFactory

proc newVectorRotationAnimationInterfaceFactory*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): VectorRotationAnimationInterfaceFactory
proc initVectorRotationAnimationInterfaceFactory*(this: VectorRotationAnimationInterfaceFactory, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: VectorRotationAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.}
method setBasicColorP*(this: VectorRotationAnimationInterfaceFactory, basicColor: BasicColor) {.base.}
method getBasicColorP*(this: VectorRotationAnimationInterfaceFactory): BasicColor {.base, discardable.}
method setInitialScale*(this: VectorRotationAnimationInterfaceFactory, scaleProperties: ScaleProperties)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/animation/VectorRotationAnimation as VectorRotationAnimationModule
export VectorRotationAnimationModule


# Java field initializers run after the base initializer
proc initFieldsVectorRotationAnimationInterfaceFactory(this: VectorRotationAnimationInterfaceFactory) =
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
    this.basicColor = BasicColorFactory.getInstance().WHITE
    
    discard

proc initVectorRotationAnimationInterfaceFactory*(this: VectorRotationAnimationInterfaceFactory, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsVectorRotationAnimationInterfaceFactory()
        this.currentPoints = currentPoints
        this.setBasicColorP(basicColor)
        this.animationBehaviorFactory = animationBehaviorFactory

proc newVectorRotationAnimationInterfaceFactory*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): VectorRotationAnimationInterfaceFactory =
    result = VectorRotationAnimationInterfaceFactory()
    initVectorRotationAnimationInterfaceFactory(result, currentPoints, basicColor, animationBehaviorFactory)

method getInstance*(this: VectorRotationAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.} =
        return newVectorRotationAnimation(this.currentPoints, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance())

method setBasicColorP*(this: VectorRotationAnimationInterfaceFactory, basicColor: BasicColor) {.base.} =
        this.basicColor = basicColor

method getBasicColorP*(this: VectorRotationAnimationInterfaceFactory): BasicColor {.base, discardable.} =
        return this.basicColor

method setInitialScale*(this: VectorRotationAnimationInterfaceFactory, scaleProperties: ScaleProperties) =
        discard

