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
# package org.allbinary.animation.vector

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule

type
    LineAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        basicColor*: BasicColor

proc newLineAnimationFactory*(basicColor: BasicColor): LineAnimationFactory
proc initLineAnimationFactory*(this: LineAnimationFactory, basicColor: BasicColor)
method getInstance*(this: LineAnimationFactory, instanceId: int32): Animation {.discardable.}
method setInitialScale*(this: LineAnimationFactory, scaleProperties: ScaleProperties)
import org/allbinary/animation/vector/LineAnimation as LineAnimationModule
export LineAnimationModule


# Java field initializers run after the base initializer
proc initFieldsLineAnimationFactory(this: LineAnimationFactory) =
    
    discard

proc initLineAnimationFactory*(this: LineAnimationFactory, basicColor: BasicColor) =
        this.initFieldsLineAnimationFactory()
        this.basicColor = basicColor

proc newLineAnimationFactory*(basicColor: BasicColor): LineAnimationFactory =
    result = LineAnimationFactory()
    initLineAnimationFactory(result, basicColor)

method getInstance*(this: LineAnimationFactory, instanceId: int32): Animation {.discardable.} =
        return newLineAnimation(this.basicColor)

method setInitialScale*(this: LineAnimationFactory, scaleProperties: ScaleProperties) =
        discard

