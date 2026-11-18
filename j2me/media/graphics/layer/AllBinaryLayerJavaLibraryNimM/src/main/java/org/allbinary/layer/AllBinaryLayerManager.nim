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
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/event/LayerManagerEvent as LayerManagerEventModule
export LayerManagerEventModule
import org/allbinary/layer/event/LayerManagerEventHandler as LayerManagerEventHandlerModule
export LayerManagerEventHandlerModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    AllBinaryLayerManager* = ref object of LayerManager
        layerManagerEventHandler*: LayerManagerEventHandler
        createLayerManagerEvent*: LayerManagerEvent
        deleteLayerManagerEvent*: LayerManagerEvent
        basicLayerProcessorArray*: JArray[LayerProcessor]

proc newAllBinaryLayerManager*(): AllBinaryLayerManager
proc initAllBinaryLayerManager*(this: AllBinaryLayerManager)
method getLayerProcessorArray*(this: AllBinaryLayerManager): JArray[LayerProcessor] {.base, discardable.}
method setLayerProcessorArray*(this: AllBinaryLayerManager, layerProcessorArray: JArray[LayerProcessor]) {.base.}
method log*(this: AllBinaryLayerManager) {.base.}
method append*(this: AllBinaryLayerManager, layerInterface: AllBinaryLayer)
method appendAt*(this: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method appendProcessors*(this: AllBinaryLayerManager, layerInterface: AllBinaryLayer) {.base.}
method remove*(this: AllBinaryLayerManager, layerInterface: AllBinaryLayer)
method process*(this: AllBinaryLayerManager) {.base.}
method cleanup*(this: AllBinaryLayerManager)
import org/allbinary/layer/LayerManagerNoDebug as LayerManagerNoDebugModule
export LayerManagerNoDebugModule


# Java field initializers run after the base initializer
proc initFieldsAllBinaryLayerManager(this: AllBinaryLayerManager) =
    this.layerManagerEventHandler = LayerManagerEventHandler.getInstance()
    this.createLayerManagerEvent = newLayerManagerEvent(this, this.layerManagerEventHandler.CREATE)
    this.deleteLayerManagerEvent = newLayerManagerEvent(this, this.layerManagerEventHandler.DELETE)
    this.basicLayerProcessorArray = newJArray[LayerProcessor](0, default(LayerProcessor))
    discard

proc initAllBinaryLayerManager*(this: AllBinaryLayerManager) =
        initLayerManager(this, LayerManagerNoDebug.getInstance())
        this.initFieldsAllBinaryLayerManager()

proc newAllBinaryLayerManager*(): AllBinaryLayerManager =
    result = AllBinaryLayerManager()
    initAllBinaryLayerManager(result)

method getLayerProcessorArray*(this: AllBinaryLayerManager): JArray[LayerProcessor] {.base, discardable.} =
        return this.basicLayerProcessorArray

method setLayerProcessorArray*(this: AllBinaryLayerManager, layerProcessorArray: JArray[LayerProcessor]) {.base.} =
        this.basicLayerProcessorArray = layerProcessorArray

method log*(this: AllBinaryLayerManager) {.base.} =
        var size: int32 = this.basicLayerProcessorArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var layerProcessorInterface: LayerProcessor = this.basicLayerProcessorArray[index]

method append*(this: AllBinaryLayerManager, layerInterface: AllBinaryLayer) =
        if (not this.contains(layerInterface)):
            this.appendProcessors(layerInterface)
            procCall LayerManager(this).append(layerInterface)

method appendAt*(this: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        if (not this.contains(layerInterface)):
            this.appendProcessors(layerInterface)
            procCall LayerManager(this).appendAt(layerInterface, index)

method appendProcessors*(this: AllBinaryLayerManager, layerInterface: AllBinaryLayer) {.base.} =
        this.createLayerManagerEvent.setLayerInterface(layerInterface)
        this.layerManagerEventHandler.fireEvent(this.createLayerManagerEvent)
        var layerProcessorInterface: LayerProcessor = nil
        block:
            var index: int32 = this.basicLayerProcessorArray.length
            while jPreDecrement(index) >= 0:
                layerProcessorInterface = this.basicLayerProcessorArray[index]
                if layerProcessorInterface.isProcessorLayer(layerInterface):
                    layerProcessorInterface.getLayerManager().append(layerInterface)

method remove*(this: AllBinaryLayerManager, layerInterface: AllBinaryLayer) =
        this.deleteLayerManagerEvent.setLayerInterface(layerInterface)
        this.layerManagerEventHandler.fireDeleteEvent(this.deleteLayerManagerEvent)
        var layerProcessorInterface: LayerProcessor = nil
        block:
            var index: int32 = this.basicLayerProcessorArray.length
            while jPreDecrement(index) >= 0:
                layerProcessorInterface = this.basicLayerProcessorArray[index]
                layerProcessorInterface.getLayerManager().remove(layerInterface)
        procCall LayerManager(this).remove(layerInterface)

method process*(this: AllBinaryLayerManager) {.base.} =
        var layerProcessorInterface: LayerProcessor = nil
        var size: int32 = this.basicLayerProcessorArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                layerProcessorInterface = this.basicLayerProcessorArray[index]
                layerProcessorInterface.process(this)

method cleanup*(this: AllBinaryLayerManager) =
        var layerProcessorInterface: LayerProcessor = nil
        var size: int32 = this.basicLayerProcessorArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                layerProcessorInterface = this.basicLayerProcessorArray[index]
                layerProcessorInterface.getLayerManager().cleanup()
        procCall LayerManager(this).cleanup()

when declared(newAllBinaryLayerManagerHook0):
    newAllBinaryLayerManagerHook0 = proc (): LayerManager = newAllBinaryLayerManager()

