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
    ScrollOverXImmediateYStopAI* = ref object of BasicAI

proc newScrollOverXImmediateYStopAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ScrollOverXImmediateYStopAI
proc initScrollOverXImmediateYStopAI*(this: ScrollOverXImmediateYStopAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: ScrollOverXImmediateYStopAI, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule


proc initScrollOverXImmediateYStopAI*(this: ScrollOverXImmediateYStopAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)

proc newScrollOverXImmediateYStopAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ScrollOverXImmediateYStopAI =
    result = ScrollOverXImmediateYStopAI()
    initScrollOverXImmediateYStopAI(result, ownerLayerInterface, gameInput)

method processAI*(this: ScrollOverXImmediateYStopAI, allBinaryLayerManager: AllBinaryLayerManager) =
        var ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        var x: int32 = ownerLayerInterface.getXP()
        var y: int32 = ownerLayerInterface.getYP()
        var x2: int32 = ownerLayerInterface.getX2()
        var y2: int32 = ownerLayerInterface.getY2()
        var width: int32 = ownerLayerInterface.getWidth()
        var height: int32 = ownerLayerInterface.getHeight()
        var displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        if x2 > displayInfo.getLastWidth():
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP())
        if y2 > displayInfo.getLastHeight():
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() -% height, ownerLayerInterface.getZP())
        if x < 0:
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() -% width, y, ownerLayerInterface.getZP())
        if y < 0:
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP())

when declared(newScrollOverXImmediateYStopAIHook2):
    newScrollOverXImmediateYStopAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newScrollOverXImmediateYStopAI(ownerLayerInterface, gameInput)

