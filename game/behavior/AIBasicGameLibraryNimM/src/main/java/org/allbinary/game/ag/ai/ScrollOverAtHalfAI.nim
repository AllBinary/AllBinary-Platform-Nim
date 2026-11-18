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
    ScrollOverAtHalfAI* = ref object of BasicAI

proc newScrollOverAtHalfAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ScrollOverAtHalfAI
proc initScrollOverAtHalfAI*(this: ScrollOverAtHalfAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: ScrollOverAtHalfAI, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule


proc initScrollOverAtHalfAI*(this: ScrollOverAtHalfAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)

proc newScrollOverAtHalfAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ScrollOverAtHalfAI =
    result = ScrollOverAtHalfAI()
    initScrollOverAtHalfAI(result, ownerLayerInterface, gameInput)

method processAI*(this: ScrollOverAtHalfAI, allBinaryLayerManager: AllBinaryLayerManager) =
        var ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        var x: int32 = ownerLayerInterface.getXP()
        var y: int32 = ownerLayerInterface.getYP()
        var halfWidth: int32 = ownerLayerInterface.getHalfWidth()
        var halfHeight: int32 = ownerLayerInterface.getHalfHeight()
        var displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        if x > displayInfo.getLastWidth() -% halfWidth:
            ownerLayerInterface.setPosition(halfWidth +% 1, y, ownerLayerInterface.getZP())
        if y > displayInfo.getLastHeight() -% halfHeight:
            ownerLayerInterface.setPosition(x, halfHeight +% 1, ownerLayerInterface.getZP())
        if x < -halfWidth:
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() -% halfWidth, y, ownerLayerInterface.getZP())
        if y < -halfHeight:
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() -% halfHeight, ownerLayerInterface.getZP())

when declared(newScrollOverAtHalfAIHook2):
    newScrollOverAtHalfAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newScrollOverAtHalfAI(ownerLayerInterface, gameInput)

