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
    RotationAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        totalAngle*: int16
        angleIncrement*: int16

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: RotationAnimationFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
proc newRotationAnimationFactory*(totalAngle: int16, angleIncrement: int16): RotationAnimationFactory
proc initRotationAnimationFactory*(this: RotationAnimationFactory, totalAngle: int16, angleIncrement: int16)
proc createFactory*(t: typedesc[RotationAnimationFactory]): RotationAnimationFactory {.discardable.}
method getInstance*(this: RotationAnimationFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: RotationAnimationFactory, animationInterface: Animation): Animation {.discardable.}
method setInitialScale*(this: RotationAnimationFactory, scaleProperties: ScaleProperties)
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/animation/NullRotationAnimation as NullRotationAnimationModule
export NullRotationAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule


# Java field initializers run after the base initializer
proc initFieldsRotationAnimationFactory(this: RotationAnimationFactory) =
    
    
    discard

proc createFactory*(t: typedesc[RotationAnimationFactory]): RotationAnimationFactory {.discardable.} =
        let totalAngle: int16 = AngleFactory.getInstance().TOTAL_ANGLE
        return newRotationAnimationFactory(totalAngle, jToInt16((totalAngle div GameConfigurationCentral.getInstance().getGameControlFidelity())))

proc initRotationAnimationFactory*(this: RotationAnimationFactory, totalAngle: int16, angleIncrement: int16) =
        this.initFieldsRotationAnimationFactory()
        this.totalAngle = totalAngle
        this.angleIncrement = angleIncrement

proc newRotationAnimationFactory*(totalAngle: int16, angleIncrement: int16): RotationAnimationFactory =
    result = RotationAnimationFactory()
    initRotationAnimationFactory(result, totalAngle, angleIncrement)

method getInstance*(this: RotationAnimationFactory, instanceId: int32): Animation {.discardable.} =
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(this.angleIncrement), this.totalAngle, AnimationBehavior.getInstance())

method getInstanceAnimation*(this: RotationAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(this.angleIncrement), this.totalAngle, AnimationBehavior.getInstance())

method setInitialScale*(this: RotationAnimationFactory, scaleProperties: ScaleProperties) =
        discard

