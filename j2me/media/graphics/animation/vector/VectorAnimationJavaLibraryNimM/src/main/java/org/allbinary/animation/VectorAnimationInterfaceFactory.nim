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
    VectorAnimationInterfaceFactory* = ref object of AnimationInterfaceFactoryInterface
        currentPoints*: JArray[JArray[JArray[int32]]]
        basicColor*: BasicColor
        animationBehaviorFactory*: AnimationBehaviorFactory

proc newVectorAnimationInterfaceFactory*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): VectorAnimationInterfaceFactory
proc initVectorAnimationInterfaceFactory*(this: VectorAnimationInterfaceFactory, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: VectorAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.}
method setBasicColorP*(this: VectorAnimationInterfaceFactory, basicColor: BasicColor) {.base.}
method getBasicColorP*(this: VectorAnimationInterfaceFactory): BasicColor {.base, discardable.}
method setInitialScale*(this: VectorAnimationInterfaceFactory, scaleProperties: ScaleProperties)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/animation/VectorAnimation as VectorAnimationModule
export VectorAnimationModule


# Java field initializers run after the base initializer
proc initFieldsVectorAnimationInterfaceFactory(this: VectorAnimationInterfaceFactory) =
    
    this.basicColor = BasicColorFactory.getInstance().WHITE
    
    discard

proc initVectorAnimationInterfaceFactory*(this: VectorAnimationInterfaceFactory, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsVectorAnimationInterfaceFactory()
        this.currentPoints = currentPoints
        this.setBasicColorP(basicColor)
        this.animationBehaviorFactory = animationBehaviorFactory

proc newVectorAnimationInterfaceFactory*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): VectorAnimationInterfaceFactory =
    result = VectorAnimationInterfaceFactory()
    initVectorAnimationInterfaceFactory(result, currentPoints, basicColor, animationBehaviorFactory)

method getInstance*(this: VectorAnimationInterfaceFactory, instanceId: int32): Animation {.discardable.} =
        return newVectorAnimation(this.currentPoints, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance())

method setBasicColorP*(this: VectorAnimationInterfaceFactory, basicColor: BasicColor) {.base.} =
        this.basicColor = basicColor

method getBasicColorP*(this: VectorAnimationInterfaceFactory): BasicColor {.base, discardable.} =
        return this.basicColor

method setInitialScale*(this: VectorAnimationInterfaceFactory, scaleProperties: ScaleProperties) =
        discard

