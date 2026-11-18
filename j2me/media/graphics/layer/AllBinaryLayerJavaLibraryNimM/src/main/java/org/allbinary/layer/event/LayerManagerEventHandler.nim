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
# package org.allbinary.layer.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/layer/event/LayerManagerEventListener as LayerManagerEventListenerModule
export LayerManagerEventListenerModule

type
    LayerManagerEventHandler* = ref object of BasicEventHandler
        list*: BasicArrayList
        CREATE*: string
        DELETE*: string

proc newLayerManagerEventHandler*(): LayerManagerEventHandler
proc initLayerManagerEventHandler*(this: LayerManagerEventHandler)
proc getInstance*(t: typedesc[LayerManagerEventHandler]): LayerManagerEventHandler {.discardable.}
method addListener*(this: LayerManagerEventHandler, layerManagerEventListener: LayerManagerEventListener) {.base.}
method removeAllListeners*(this: LayerManagerEventHandler)
method removeListener*(this: LayerManagerEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: LayerManagerEventHandler, eventObject: AllBinaryEventObject)
method fireDeleteEvent*(this: LayerManagerEventHandler, eventObject: AllBinaryEventObject) {.base.}
method process*(this: LayerManagerEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/layer/event/LayerManagerEvent as LayerManagerEventModule
export LayerManagerEventModule
import org/allbinary/layer/event/LayerManagerEventListenerInterface as LayerManagerEventListenerInterfaceModule
export LayerManagerEventListenerInterfaceModule

var LayerManagerEventHandler_instanceValue: LayerManagerEventHandler
var LayerManagerEventHandler_instanceSet = false
proc instance*(t: typedesc[LayerManagerEventHandler]): LayerManagerEventHandler =
    if not LayerManagerEventHandler_instanceSet:
        LayerManagerEventHandler_instanceSet = true
        LayerManagerEventHandler_instanceValue = newLayerManagerEventHandler()
    LayerManagerEventHandler_instanceValue
proc `instance=`*(t: typedesc[LayerManagerEventHandler], value: LayerManagerEventHandler) =
    LayerManagerEventHandler_instanceSet = true
    LayerManagerEventHandler_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsLayerManagerEventHandler(this: LayerManagerEventHandler) =
    this.list = newBasicArrayListD()
    this.CREATE = "Create"
    this.DELETE = "Delete"
    discard

proc getInstance*(t: typedesc[LayerManagerEventHandler]): LayerManagerEventHandler {.discardable.} =
        return LayerManagerEventHandler.instance

proc initLayerManagerEventHandler*(this: LayerManagerEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsLayerManagerEventHandler()
        discard

proc newLayerManagerEventHandler*(): LayerManagerEventHandler =
    result = LayerManagerEventHandler()
    initLayerManagerEventHandler(result)

method addListener*(this: LayerManagerEventHandler, layerManagerEventListener: LayerManagerEventListener) {.base.} =
        if (not this.list.contains(layerManagerEventListener)):
            this.list.add(layerManagerEventListener)

method removeAllListeners*(this: LayerManagerEventHandler) =
        this.list.clear()
        procCall BasicEventHandler(this).removeAllListeners()

method removeListener*(this: LayerManagerEventHandler, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        procCall BasicEventHandler(this).removeListener(eventListenerInterface)

method fireEvent*(this: LayerManagerEventHandler, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    let layerManagerEventListener: LayerManagerEventListener = LayerManagerEventListener(JObject(this.list.objectArray[index]))
                    layerManagerEventListener.onCreateLayerManagerEvent(LayerManagerEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        procCall BasicEventHandler(this).fireEvent(eventObject)

method fireDeleteEvent*(this: LayerManagerEventHandler, eventObject: AllBinaryEventObject) {.base.} =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    let layerManagerEventListener: LayerManagerEventListener = LayerManagerEventListener(JObject(this.list.objectArray[index]))
                    layerManagerEventListener.onDeleteLayerManagerEvent(LayerManagerEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        let eventListenerInterfaceList: BasicArrayList = this.eventListenerInterfaceList
        var eventListenerInterface: EventListenerInterface = nil
        var layerManagerEventListenerInterface: LayerManagerEventListenerInterface = nil
        var listenerIndex: int32 = 0
        while listenerIndex < eventListenerInterfaceList.size():
            try:
                eventListenerInterface = EventListenerInterface(JObject(eventListenerInterfaceList.objectArray[listenerIndex]))
                layerManagerEventListenerInterface = (LayerManagerEventListenerInterface(JObject(eventListenerInterface)))
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent(LayerManagerEvent(JObject(eventObject)))
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            listenerIndex = listenerIndex +% 1

method process*(this: LayerManagerEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let layerManagerEventListenerInterface: LayerManagerEventListenerInterface = (LayerManagerEventListenerInterface(JObject(eventListenerInterface)))
        layerManagerEventListenerInterface.onCreateLayerManagerEvent(LayerManagerEvent(JObject(eventObject)))

when declared(newLayerManagerEventHandlerHook0):
    newLayerManagerEventHandlerHook0 = proc (): BasicEventHandler = newLayerManagerEventHandler()

