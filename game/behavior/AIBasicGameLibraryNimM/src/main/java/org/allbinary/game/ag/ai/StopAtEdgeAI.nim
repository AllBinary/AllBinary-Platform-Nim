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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    StopAtEdgeAI* = ref object of BasicAI

proc newStopAtEdgeAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): StopAtEdgeAI
proc initStopAtEdgeAI*(this: StopAtEdgeAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: StopAtEdgeAI, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule
import org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterfaceModule
export VelocityInterfaceCompositeInterfaceModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule


proc initStopAtEdgeAI*(this: StopAtEdgeAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)

proc newStopAtEdgeAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): StopAtEdgeAI =
    result = StopAtEdgeAI()
    initStopAtEdgeAI(result, ownerLayerInterface, gameInput)

method processAI*(this: StopAtEdgeAI, allBinaryLayerManager: AllBinaryLayerManager) =
        let ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface = (VelocityInterfaceCompositeInterface(JObject(ownerLayerInterface)))
        let velocityProperties: BasicVelocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties()
        let x: int32 = ownerLayerInterface.getXP()
        let y: int32 = ownerLayerInterface.getYP()
        let x2: int32 = ownerLayerInterface.getX2()
        let y2: int32 = ownerLayerInterface.getY2()
        let width: int32 = ownerLayerInterface.getWidth()
        let height: int32 = ownerLayerInterface.getHeight()
        let displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        if x2 +% velocityProperties.getVelocityXBasicDecimalP().getScaled() > displayInfo.getLastWidth():
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() -% width, y, ownerLayerInterface.getZP())
            velocityProperties.getVelocityYBasicDecimalP().setint(0)
        if y2 +% velocityProperties.getVelocityYBasicDecimalP().getScaled() > displayInfo.getLastHeight():
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() -% height, ownerLayerInterface.getZP())
            velocityProperties.getVelocityXBasicDecimalP().setint(0)
        if x +% velocityProperties.getVelocityXBasicDecimalP().getScaled() < 0:
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP())
            velocityProperties.getVelocityYBasicDecimalP().setint(0)
        if y +% velocityProperties.getVelocityYBasicDecimalP().getScaled() < 0:
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP())
            velocityProperties.getVelocityXBasicDecimalP().setint(0)

when declared(newStopAtEdgeAIHook2):
    newStopAtEdgeAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newStopAtEdgeAI(ownerLayerInterface, gameInput)

