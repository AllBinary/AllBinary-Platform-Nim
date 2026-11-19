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
# package org.allbinary.view.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    ViewPositionEventHandler* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newViewPositionEventHandler*(): ViewPositionEventHandler
proc initViewPositionEventHandler*(this: ViewPositionEventHandler)
proc getInstance*(t: typedesc[ViewPositionEventHandler]): ViewPositionEventHandler {.discardable.}
method addListener*(this: ViewPositionEventHandler, layerInterface: AllBinaryLayer) {.base.}
method removeAllListeners*(this: ViewPositionEventHandler)
method removeListener*(this: ViewPositionEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: ViewPositionEventHandler, eventObject: AllBinaryEventObject)
method process*(this: ViewPositionEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/view/event/ViewPositionEvent as ViewPositionEventModule
export ViewPositionEventModule
import org/allbinary/view/event/ViewPositionEventListenerInterface as ViewPositionEventListenerInterfaceModule
export ViewPositionEventListenerInterfaceModule

var ViewPositionEventHandler_SINGLETONValue: ViewPositionEventHandler
var ViewPositionEventHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[ViewPositionEventHandler]): ViewPositionEventHandler =
    if not ViewPositionEventHandler_SINGLETONSet:
        ViewPositionEventHandler_SINGLETONSet = true
        ViewPositionEventHandler_SINGLETONValue = newViewPositionEventHandler()
    ViewPositionEventHandler_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[ViewPositionEventHandler], value: ViewPositionEventHandler) =
    ViewPositionEventHandler_SINGLETONSet = true
    ViewPositionEventHandler_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsViewPositionEventHandler(this: ViewPositionEventHandler) =
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[ViewPositionEventHandler]): ViewPositionEventHandler {.discardable.} =
        return ViewPositionEventHandler.SINGLETON

proc initViewPositionEventHandler*(this: ViewPositionEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsViewPositionEventHandler()
        discard

proc newViewPositionEventHandler*(): ViewPositionEventHandler =
    result = ViewPositionEventHandler()
    initViewPositionEventHandler(result)

method addListener*(this: ViewPositionEventHandler, layerInterface: AllBinaryLayer) {.base.} =
        if (not this.list.contains(layerInterface)):
            this.list.add(layerInterface)

method removeAllListeners*(this: ViewPositionEventHandler) =
        this.list.clear()
        jSuperStatement(procCall BasicEventHandler(this).removeAllListeners())

method removeListener*(this: ViewPositionEventHandler, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListener(eventListenerInterface))

method fireEvent*(this: ViewPositionEventHandler, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var layerInterface: AllBinaryLayer = AllBinaryLayer(JObject(this.list.objectArray[index]))
                    layerInterface.onChangeEvent(ViewPositionEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        jSuperStatement(procCall BasicEventHandler(this).fireEvent(eventObject))

method process*(this: ViewPositionEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let viewPositionEventListenerInterface: ViewPositionEventListenerInterface = (ViewPositionEventListenerInterface(JObject(eventListenerInterface)))
        viewPositionEventListenerInterface.onChangeEvent(ViewPositionEvent(JObject(eventObject)))

when declared(newViewPositionEventHandlerHook0):
    newViewPositionEventHandlerHook0 = proc (): BasicEventHandler = newViewPositionEventHandler()

