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
import org/allbinary/vector/VectorInfo as VectorInfoModule
export VectorInfoModule
import org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterfaceModule
export ProceduralAnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/VectorAnimationFactoryInterface as VectorAnimationFactoryInterfaceModule
export VectorAnimationFactoryInterfaceModule
import org/allbinary/animation/VectorExplosionGenerator as VectorExplosionGeneratorModule
export VectorExplosionGeneratorModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    IndependentVectorExplosionRotationAnimationFactory* = ref object of ProceduralAnimationInterfaceFactoryInterface
        framePoints*: JArray[JArray[JArray[int32]]]
        vectorInfo*: VectorInfo
        basicColor*: BasicColor
        vectorAnimationFactoryInterface*: VectorAnimationFactoryInterface
        vectorExplosionGenerator*: VectorExplosionGenerator

proc newIndependentVectorExplosionRotationAnimationFactory*(vectorInfo: VectorInfo, basicColor: BasicColor, vectorAnimationFactoryInterface: VectorAnimationFactoryInterface): IndependentVectorExplosionRotationAnimationFactory
proc initIndependentVectorExplosionRotationAnimationFactory*(this: IndependentVectorExplosionRotationAnimationFactory, vectorInfo: VectorInfo, basicColor: BasicColor, vectorAnimationFactoryInterface: VectorAnimationFactoryInterface)
method init*(this: IndependentVectorExplosionRotationAnimationFactory) {.base.}
method getInstanceAnimation*(this: IndependentVectorExplosionRotationAnimationFactory, animationInterface: Animation): Animation {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/animation/VectorRotationGenerator as VectorRotationGeneratorModule
export VectorRotationGeneratorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule


# Java field initializers run after the base initializer
proc initFieldsIndependentVectorExplosionRotationAnimationFactory(this: IndependentVectorExplosionRotationAnimationFactory) =
    this.framePoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
    
    
    
    this.vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
    discard

proc initIndependentVectorExplosionRotationAnimationFactory*(this: IndependentVectorExplosionRotationAnimationFactory, vectorInfo: VectorInfo, basicColor: BasicColor, vectorAnimationFactoryInterface: VectorAnimationFactoryInterface) =
        this.initFieldsIndependentVectorExplosionRotationAnimationFactory()
        this.vectorInfo = vectorInfo
        this.basicColor = basicColor
        this.vectorAnimationFactoryInterface = vectorAnimationFactoryInterface
        this.init()

proc newIndependentVectorExplosionRotationAnimationFactory*(vectorInfo: VectorInfo, basicColor: BasicColor, vectorAnimationFactoryInterface: VectorAnimationFactoryInterface): IndependentVectorExplosionRotationAnimationFactory =
    result = IndependentVectorExplosionRotationAnimationFactory()
    initIndependentVectorExplosionRotationAnimationFactory(result, vectorInfo, basicColor, vectorAnimationFactoryInterface)

method init*(this: IndependentVectorExplosionRotationAnimationFactory) {.base.} =
        this.framePoints = VectorRotationGenerator.getInstance().getInstance(this.vectorInfo)

method getInstanceAnimation*(this: IndependentVectorExplosionRotationAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        var frame: int32 = 0
        if (not jIsNil(animationInterface)):
            var rotationAnimationInterface: IndexedAnimation = IndexedAnimation(JObject(animationInterface))
            frame = rotationAnimationInterface.getFrame()
        var points: JArray[JArray[JArray[int32]]] = this.vectorExplosionGenerator.getInstance(this.framePoints[frame], 6, this.vectorExplosionGenerator.ROTATION)
        return this.vectorAnimationFactoryInterface.getInstance(points, this.basicColor)

