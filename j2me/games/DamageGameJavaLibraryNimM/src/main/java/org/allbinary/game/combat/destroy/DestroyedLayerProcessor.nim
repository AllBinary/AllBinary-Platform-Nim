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
# package org.allbinary.game.combat.destroy

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/BasicLayerProcessor as BasicLayerProcessorModule
export BasicLayerProcessorModule

type
    DestroyedLayerProcessor* = ref object of BasicLayerProcessor

proc newDestroyedLayerProcessor*(): DestroyedLayerProcessor
proc initDestroyedLayerProcessor*(this: DestroyedLayerProcessor)
proc init*(t: typedesc[DestroyedLayerProcessor])
proc getInstance*(t: typedesc[DestroyedLayerProcessor]): BasicLayerProcessor {.discardable.}
method process*(this: DestroyedLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool as DestroyEventCircularStaticPoolModule
export DestroyEventCircularStaticPoolModule
import org/allbinary/game/combat/destroy/event/DestroyedEvent as DestroyedEventModule
export DestroyedEventModule
import org/allbinary/game/combat/destroy/event/DestroyedEventHandler as DestroyedEventHandlerModule
export DestroyedEventHandlerModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

var DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORValue: BasicLayerProcessor
var DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORSet = false
proc DESTROYED_LAYER_PROCESSORStatic*(t: typedesc[DestroyedLayerProcessor]): BasicLayerProcessor =
    if not DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORSet:
        DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORSet = true
        DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORValue = BasicLayerProcessor.NULL_LAYER_PROCESSOR
    DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORValue
proc `DESTROYED_LAYER_PROCESSORStatic=`*(t: typedesc[DestroyedLayerProcessor], value: BasicLayerProcessor) =
    DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORSet = true
    DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORValue = value

proc initDestroyedLayerProcessor*(this: DestroyedLayerProcessor) =
        initBasicLayerProcessor(this)
        discard

proc newDestroyedLayerProcessor*(): DestroyedLayerProcessor =
    result = DestroyedLayerProcessor()
    initDestroyedLayerProcessor(result)

proc init*(t: typedesc[DestroyedLayerProcessor]) =
        DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSORStatic = newDestroyedLayerProcessor()

proc getInstance*(t: typedesc[DestroyedLayerProcessor]): BasicLayerProcessor {.discardable.} =
        return DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSORStatic

method process*(this: DestroyedLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager) =
        var list: BasicArrayList = this.getList()
        var size: int32 = list.size()
        let destroyedEventHandler: DestroyedEventHandler = DestroyedEventHandler.getInstance()
        let destroyEventCircularStaticPool: DestroyEventCircularStaticPool = DestroyEventCircularStaticPool.getInstance()
        var destroyedEvent: DestroyedEvent = nil
        var layerInterface: AllBinaryLayer = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var layerInterfaceCanBeNull: JObject = list.objectArray[index]
                if (not jIsNil(layerInterfaceCanBeNull)):
                    layerInterface = AllBinaryLayer(JObject(layerInterfaceCanBeNull))
                    allBinaryLayerManager.remove(layerInterface)
                    destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface)
                    destroyedEventHandler.fireEvent(destroyedEvent)
                else:
                    let commonStrings: CommonStrings = CommonStrings.getInstance()
        list.clear()

when declared(newDestroyedLayerProcessorHook0):
    newDestroyedLayerProcessorHook0 = proc (): BasicLayerProcessor = newDestroyedLayerProcessor()

