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
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/input/CompleteMotionGestureInputEventListener as CompleteMotionGestureInputEventListenerModule
export CompleteMotionGestureInputEventListenerModule

type
    CompleteMotionGestureInputEventHandler* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newCompleteMotionGestureInputEventHandler*(): CompleteMotionGestureInputEventHandler
proc initCompleteMotionGestureInputEventHandler*(this: CompleteMotionGestureInputEventHandler)
proc getInstance*(t: typedesc[CompleteMotionGestureInputEventHandler]): CompleteMotionGestureInputEventHandler {.discardable.}
method addListener*(this: CompleteMotionGestureInputEventHandler, completeMotionGestureInputEventListener: CompleteMotionGestureInputEventListener) {.base.}
method removeAllListeners*(this: CompleteMotionGestureInputEventHandler)
method removeListener*(this: CompleteMotionGestureInputEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: CompleteMotionGestureInputEventHandler, eventObject: AllBinaryEventObject)
method process*(this: CompleteMotionGestureInputEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/input/CompleteMotionGestureInputEvent as CompleteMotionGestureInputEventModule
export CompleteMotionGestureInputEventModule
import org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface as CompleteMotionGestureInputEventListenerInterfaceModule
export CompleteMotionGestureInputEventListenerInterfaceModule

var CompleteMotionGestureInputEventHandler_SINGLETONValue: CompleteMotionGestureInputEventHandler
var CompleteMotionGestureInputEventHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[CompleteMotionGestureInputEventHandler]): CompleteMotionGestureInputEventHandler =
    if not CompleteMotionGestureInputEventHandler_SINGLETONSet:
        CompleteMotionGestureInputEventHandler_SINGLETONSet = true
        CompleteMotionGestureInputEventHandler_SINGLETONValue = newCompleteMotionGestureInputEventHandler()
    CompleteMotionGestureInputEventHandler_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsCompleteMotionGestureInputEventHandler(this: CompleteMotionGestureInputEventHandler) =
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[CompleteMotionGestureInputEventHandler]): CompleteMotionGestureInputEventHandler {.discardable.} =
        return CompleteMotionGestureInputEventHandler.SINGLETON

proc initCompleteMotionGestureInputEventHandler*(this: CompleteMotionGestureInputEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsCompleteMotionGestureInputEventHandler()
        discard

proc newCompleteMotionGestureInputEventHandler*(): CompleteMotionGestureInputEventHandler =
    result = CompleteMotionGestureInputEventHandler()
    initCompleteMotionGestureInputEventHandler(result)

method addListener*(this: CompleteMotionGestureInputEventHandler, completeMotionGestureInputEventListener: CompleteMotionGestureInputEventListener) {.base.} =
        if (not this.list.contains(completeMotionGestureInputEventListener)):
            this.list.add(completeMotionGestureInputEventListener)

method removeAllListeners*(this: CompleteMotionGestureInputEventHandler) =
        this.list.clear()
        procCall BasicEventHandler(this).removeAllListeners()

method removeListener*(this: CompleteMotionGestureInputEventHandler, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        procCall BasicEventHandler(this).removeListener(eventListenerInterface)

method fireEvent*(this: CompleteMotionGestureInputEventHandler, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var completeMotionGestureInputEventListener: CompleteMotionGestureInputEventListener = CompleteMotionGestureInputEventListener(JObject(this.list.objectArray[index]))
                    completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        procCall BasicEventHandler(this).fireEvent(eventObject)

method process*(this: CompleteMotionGestureInputEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let completeMotionGestureInputEventListenerInterface: CompleteMotionGestureInputEventListenerInterface = CompleteMotionGestureInputEventListenerInterface(JObject(eventListenerInterface))
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent(JObject(eventObject)))

when declared(newCompleteMotionGestureInputEventHandlerHook0):
    newCompleteMotionGestureInputEventHandlerHook0 = proc (): BasicEventHandler = newCompleteMotionGestureInputEventHandler()

