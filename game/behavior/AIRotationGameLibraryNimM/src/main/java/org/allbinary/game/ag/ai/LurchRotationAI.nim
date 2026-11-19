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
# package org.allbinary.game.ag.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/game/ag/ai/tactical/LurchAI as LurchAIModule
export LurchAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    LurchRotationAI* = ref object of LurchAI
        rotationAnimationInterface*: IndexedAnimation

proc newLurchRotationAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): LurchRotationAI
proc initLurchRotationAI*(this: LurchRotationAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method reverse*(this: LurchRotationAI)
method update*(this: LurchRotationAI) {.base.}
import org/allbinary/animation/RotationAnimationInterface as RotationAnimationInterfaceModule
export RotationAnimationInterfaceModule
import org/allbinary/animation/RotationAnimationInterfaceCompositeInterface as RotationAnimationInterfaceCompositeInterfaceModule
export RotationAnimationInterfaceCompositeInterfaceModule
import org/allbinary/math/AngleIncrementInfo as AngleIncrementInfoModule
export AngleIncrementInfoModule


# Java field initializers run after the base initializer
proc initFieldsLurchRotationAI(this: LurchRotationAI) =
    
    discard

proc initLurchRotationAI*(this: LurchRotationAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initLurchAI(this, ownerLayerInterface, gameInput)
        this.initFieldsLurchRotationAI()
        let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface = RotationAnimationInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
        this.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        this.update()

proc newLurchRotationAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): LurchRotationAI =
    result = LurchRotationAI()
    initLurchRotationAI(result, ownerLayerInterface, gameInput)

method reverse*(this: LurchRotationAI) =
        jSuperStatement(procCall LurchAI(this).reverse())
        this.update()

method update*(this: LurchRotationAI) {.base.} =
        if this.currentRelativeAngle == 0:
            let rotationAnimationInterface: RotationAnimationInterface = RotationAnimationInterface(JObject(this.rotationAnimationInterface))
            let angleIncrementInfo: AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
            let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface = RotationAnimationInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
        elif this.currentRelativeAngle == 180:
            let rotationAnimationInterface: RotationAnimationInterface = RotationAnimationInterface(JObject(this.rotationAnimationInterface))
            let angleIncrementInfo: AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
            let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface = RotationAnimationInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue())

when declared(newLurchRotationAIHook2):
    newLurchRotationAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): LurchAI = newLurchRotationAI(ownerLayerInterface, gameInput)

