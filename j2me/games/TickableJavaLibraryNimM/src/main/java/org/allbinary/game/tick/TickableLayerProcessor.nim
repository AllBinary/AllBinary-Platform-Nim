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
# package org.allbinary.game.tick

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule

type
    TickableLayerProcessor* = ref object of LayerProcessor

proc newTickableLayerProcessor*(): TickableLayerProcessor
proc initTickableLayerProcessor*(this: TickableLayerProcessor)
method processAt*(this: TickableLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method isProcessorLayer*(this: TickableLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.}
import org/allbinary/game/tick/TickableLayerManager as TickableLayerManagerModule
export TickableLayerManagerModule
import org/allbinary/game/tick/TickableInterface as TickableInterfaceModule
export TickableInterfaceModule


proc initTickableLayerProcessor*(this: TickableLayerProcessor) =
        initLayerProcessor(this, newTickableLayerManager())

proc newTickableLayerProcessor*(): TickableLayerProcessor =
    result = TickableLayerProcessor()
    initTickableLayerProcessor(result)

method processAt*(this: TickableLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        var tickableInterface: TickableInterface = TickableInterface(JObject(layerInterface))
        tickableInterface.processTick(allBinaryLayerManager)

method isProcessorLayer*(this: TickableLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.} =
        if layerInterface.implmentsTickableInterface():
            return true
        else:
            return false

when declared(newTickableLayerProcessorHook0):
    newTickableLayerProcessorHook0 = proc (): LayerProcessor = newTickableLayerProcessor()

