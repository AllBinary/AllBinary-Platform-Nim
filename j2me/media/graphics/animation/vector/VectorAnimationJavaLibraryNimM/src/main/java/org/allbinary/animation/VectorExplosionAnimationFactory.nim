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
import org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterfaceModule
export ProceduralAnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/VectorExplosionGenerator as VectorExplosionGeneratorModule
export VectorExplosionGeneratorModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    VectorExplosionAnimationFactory* = ref object of ProceduralAnimationInterfaceFactoryInterface
        vectorExplosionGenerator*: VectorExplosionGenerator
        basicColor*: BasicColor
        animationBehaviorFactory*: AnimationBehaviorFactory

proc newVectorExplosionAnimationFactory*(basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): VectorExplosionAnimationFactory
proc initVectorExplosionAnimationFactory*(this: VectorExplosionAnimationFactory, basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstanceAnimation*(this: VectorExplosionAnimationFactory, animationInterface: Animation): Animation {.discardable.}
method setBasicColorP*(this: VectorExplosionAnimationFactory, basicColor: BasicColor) {.base.}
method getBasicColorP*(this: VectorExplosionAnimationFactory): BasicColor {.base, discardable.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/animation/VectorAnimationInterface as VectorAnimationInterfaceModule
export VectorAnimationInterfaceModule
import org/allbinary/animation/VectorRotationAnimation as VectorRotationAnimationModule
export VectorRotationAnimationModule


# Java field initializers run after the base initializer
proc initFieldsVectorExplosionAnimationFactory(this: VectorExplosionAnimationFactory) =
    this.vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
    this.basicColor = BasicColorFactory.getInstance().WHITE
    
    discard

proc initVectorExplosionAnimationFactory*(this: VectorExplosionAnimationFactory, basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsVectorExplosionAnimationFactory()
        this.animationBehaviorFactory = animationBehaviorFactory
        this.setBasicColorP(basicColor)

proc newVectorExplosionAnimationFactory*(basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): VectorExplosionAnimationFactory =
    result = VectorExplosionAnimationFactory()
    initVectorExplosionAnimationFactory(result, basicColor, animationBehaviorFactory)

method getInstanceAnimation*(this: VectorExplosionAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        let vectorRotationAnimationInterface: VectorAnimationInterface = VectorAnimationInterface(JObject(animationInterface))
        let frame: int32 = vectorRotationAnimationInterface.getFrame()
        let framePoints: JArray[JArray[int32]] = vectorRotationAnimationInterface.getPoints(frame)
        let points: JArray[JArray[JArray[int32]]] = this.vectorExplosionGenerator.getInstance(framePoints, 6, this.vectorExplosionGenerator.ROTATION)
        return newVectorRotationAnimation(points, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance())

method setBasicColorP*(this: VectorExplosionAnimationFactory, basicColor: BasicColor) {.base.} =
        this.basicColor = basicColor

method getBasicColorP*(this: VectorExplosionAnimationFactory): BasicColor {.base, discardable.} =
        return this.basicColor

