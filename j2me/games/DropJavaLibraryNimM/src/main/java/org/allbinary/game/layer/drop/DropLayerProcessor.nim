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
# package org.allbinary.game.layer.drop

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/BasicLayerProcessor as BasicLayerProcessorModule
export BasicLayerProcessorModule

type
    DropLayerProcessor* = ref object of BasicLayerProcessor

proc newDropLayerProcessor*(): DropLayerProcessor
proc initDropLayerProcessor*(this: DropLayerProcessor)
proc getInstance*(t: typedesc[DropLayerProcessor]): BasicLayerProcessor {.discardable.}
method process*(this: DropLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/layer/drop/DropLayerInterface as DropLayerInterfaceModule
export DropLayerInterfaceModule

var DropLayerProcessor_LAYER_PROCESSORValue: BasicLayerProcessor
var DropLayerProcessor_LAYER_PROCESSORSet = false
proc LAYER_PROCESSOR*(t: typedesc[DropLayerProcessor]): BasicLayerProcessor =
    if not DropLayerProcessor_LAYER_PROCESSORSet:
        DropLayerProcessor_LAYER_PROCESSORSet = true
        DropLayerProcessor_LAYER_PROCESSORValue = newDropLayerProcessor()
    DropLayerProcessor_LAYER_PROCESSORValue

proc initDropLayerProcessor*(this: DropLayerProcessor) =
        initBasicLayerProcessor(this)
        discard

proc newDropLayerProcessor*(): DropLayerProcessor =
    result = DropLayerProcessor()
    initDropLayerProcessor(result)

proc getInstance*(t: typedesc[DropLayerProcessor]): BasicLayerProcessor {.discardable.} =
        return DropLayerProcessor.LAYER_PROCESSOR

method process*(this: DropLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager) =
        let list: BasicArrayList = this.getList()
        let size: int32 = list.size()
        var layerInterface: AllBinaryLayer = nil
        var dropLayerInterface: DropLayerInterface = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                layerInterface = AllBinaryLayer(JObject(list.objectArray[index]))
                dropLayerInterface = DropLayerInterface(JObject(layerInterface))
                layerInterface = AllBinaryLayer(JObject(dropLayerInterface.getDroppedLayer()))
                allBinaryLayerManager.append(layerInterface)
        list.clear()

when declared(newDropLayerProcessorHook0):
    newDropLayerProcessorHook0 = proc (): BasicLayerProcessor = newDropLayerProcessor()

