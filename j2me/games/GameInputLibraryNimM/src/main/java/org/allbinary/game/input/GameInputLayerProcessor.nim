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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule

type
    GameInputLayerProcessor* = ref object of LayerProcessor

proc newGameInputLayerProcessor*(): GameInputLayerProcessor
proc initGameInputLayerProcessor*(this: GameInputLayerProcessor)
method processAt*(this: GameInputLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method isProcessorLayer*(this: GameInputLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.}
import org/allbinary/game/input/GameInputLayerManager as GameInputLayerManagerModule
export GameInputLayerManagerModule
import org/allbinary/game/input/GameInputInterface as GameInputInterfaceModule
export GameInputInterfaceModule


proc initGameInputLayerProcessor*(this: GameInputLayerProcessor) =
        initLayerProcessor(this, newGameInputLayerManager())

proc newGameInputLayerProcessor*(): GameInputLayerProcessor =
    result = GameInputLayerProcessor()
    initGameInputLayerProcessor(result)

method processAt*(this: GameInputLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        let gameInputInterface: GameInputInterface = GameInputInterface(JObject(layerInterface))
        gameInputInterface.processInput(allBinaryLayerManager)

method isProcessorLayer*(this: GameInputLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.} =
        if layerInterface.implmentsGameInputInterface():
            return true
        else:
            return false

when declared(newGameInputLayerProcessorHook0):
    newGameInputLayerProcessorHook0 = proc (): LayerProcessor = newGameInputLayerProcessor()

