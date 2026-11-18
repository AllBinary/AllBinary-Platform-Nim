#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.layer.special

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/layer/special/SpecialGameInputInterface as SpecialGameInputInterfaceModule
export SpecialGameInputInterfaceModule

type
    SpecialGameInput* = ref object of SpecialGameInputInterface

proc newSpecialGameInput*(): SpecialGameInput
method up*(this: SpecialGameInput)
method down*(this: SpecialGameInput)
method right*(this: SpecialGameInput)
method left*(this: SpecialGameInput)
method strafeLeft*(this: SpecialGameInput)
method strafeRight*(this: SpecialGameInput)
method fire*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special1*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special2*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special3*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special4*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special5*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method paint*(this: SpecialGameInput, graphics: Graphics)
method paintThreed*(this: SpecialGameInput, graphics: Graphics)


proc initSpecialGameInput*(this: SpecialGameInput) =
    discard

proc newSpecialGameInput*(): SpecialGameInput =
    result = SpecialGameInput()
    initSpecialGameInput(result)

method up*(this: SpecialGameInput) =
        discard

method down*(this: SpecialGameInput) =
        discard

method right*(this: SpecialGameInput) =
        discard

method left*(this: SpecialGameInput) =
        discard

method strafeLeft*(this: SpecialGameInput) =
        discard

method strafeRight*(this: SpecialGameInput) =
        discard

method fire*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special1*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special2*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special3*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special4*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special5*(this: SpecialGameInput, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method paint*(this: SpecialGameInput, graphics: Graphics) =
        discard

method paintThreed*(this: SpecialGameInput, graphics: Graphics) =
        discard

