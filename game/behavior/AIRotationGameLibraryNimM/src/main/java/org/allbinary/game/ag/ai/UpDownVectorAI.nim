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
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    UpDownVectorAI* = ref object of BasicAI
        velocityInterface*: BasicVelocityProperties
        index*: int32

proc newUpDownVectorAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): UpDownVectorAI
proc initUpDownVectorAI*(this: UpDownVectorAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: UpDownVectorAI, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterfaceModule
export VelocityInterfaceCompositeInterfaceModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule


# Java field initializers run after the base initializer
proc initFieldsUpDownVectorAI(this: UpDownVectorAI) =
    
    this.index = 0
    discard

proc initUpDownVectorAI*(this: UpDownVectorAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsUpDownVectorAI()
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface = VelocityInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
        this.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        this.velocityInterface.getVelocityYBasicDecimalP().setint(0)

proc newUpDownVectorAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): UpDownVectorAI =
    result = UpDownVectorAI()
    initUpDownVectorAI(result, ownerLayerInterface, gameInput)

method processAI*(this: UpDownVectorAI, allBinaryLayerManager: AllBinaryLayerManager) =
        let y: int32 = this.getOwnerLayerInterface().getHeight() *% 270
        if this.index < 5:
            let basicDecimal: BasicDecimal = this.velocityInterface.getVelocityYBasicDecimalP()
            basicDecimal.setint(0)
            basicDecimal.addint(y)
            this.index = this.index +% 1
        elif this.index < 10:
            let basicDecimal: BasicDecimal = this.velocityInterface.getVelocityYBasicDecimalP()
            basicDecimal.setint(0)
            basicDecimal.subtractint(y)
            this.index = this.index +% 1
        else:
            this.index = 0
            this.processAI(allBinaryLayerManager)

when declared(newUpDownVectorAIHook2):
    newUpDownVectorAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newUpDownVectorAI(ownerLayerInterface, gameInput)

