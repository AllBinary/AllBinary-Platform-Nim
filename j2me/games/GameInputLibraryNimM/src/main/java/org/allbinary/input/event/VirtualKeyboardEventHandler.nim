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
# package org.allbinary.input.event

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/input/event/VirtualKeyboardEvent as VirtualKeyboardEventModule
export VirtualKeyboardEventModule

type
    VirtualKeyboardEventHandler* = ref object of BasicEventHandler
        SHOW_EVENT*: VirtualKeyboardEvent
        HIDE_EVENT*: VirtualKeyboardEvent

proc newVirtualKeyboardEventHandler*(): VirtualKeyboardEventHandler
proc initVirtualKeyboardEventHandler*(this: VirtualKeyboardEventHandler)
proc getInstance*(t: typedesc[VirtualKeyboardEventHandler]): VirtualKeyboardEventHandler {.discardable.}
method process*(this: VirtualKeyboardEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
method open*(this: VirtualKeyboardEventHandler) {.base.}
method close*(this: VirtualKeyboardEventHandler) {.base.}
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/input/event/VirtualKeyboardEventListenerInterface as VirtualKeyboardEventListenerInterfaceModule
export VirtualKeyboardEventListenerInterfaceModule

var VirtualKeyboardEventHandler_gameKeyEventHandlerValue: VirtualKeyboardEventHandler
var VirtualKeyboardEventHandler_gameKeyEventHandlerSet = false
proc gameKeyEventHandler*(t: typedesc[VirtualKeyboardEventHandler]): VirtualKeyboardEventHandler =
    if not VirtualKeyboardEventHandler_gameKeyEventHandlerSet:
        VirtualKeyboardEventHandler_gameKeyEventHandlerSet = true
        VirtualKeyboardEventHandler_gameKeyEventHandlerValue = newVirtualKeyboardEventHandler()
    VirtualKeyboardEventHandler_gameKeyEventHandlerValue

# Java field initializers run after the base initializer
proc initFieldsVirtualKeyboardEventHandler(this: VirtualKeyboardEventHandler) =
    this.SHOW_EVENT = newVirtualKeyboardEvent(BooleanFactory.getInstance().TRUE)
    this.HIDE_EVENT = newVirtualKeyboardEvent(BooleanFactory.getInstance().FALSE)
    discard

proc initVirtualKeyboardEventHandler*(this: VirtualKeyboardEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsVirtualKeyboardEventHandler()
        discard

proc newVirtualKeyboardEventHandler*(): VirtualKeyboardEventHandler =
    result = VirtualKeyboardEventHandler()
    initVirtualKeyboardEventHandler(result)

proc getInstance*(t: typedesc[VirtualKeyboardEventHandler]): VirtualKeyboardEventHandler {.discardable.} =
        return VirtualKeyboardEventHandler.gameKeyEventHandler

method process*(this: VirtualKeyboardEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let virtualKeyboardEventListenerInterface: VirtualKeyboardEventListenerInterface = VirtualKeyboardEventListenerInterface(JObject(eventListenerInterface))
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent(VirtualKeyboardEvent(JObject(eventObject)))

method open*(this: VirtualKeyboardEventHandler) {.base.} =
        try:
            JThread.sleep(120)
            this.fireEvent(this.SHOW_EVENT)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "open", e)

method close*(this: VirtualKeyboardEventHandler) {.base.} =
        try:
            JThread.sleep(120)
            this.fireEvent(this.HIDE_EVENT)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e)

when declared(newVirtualKeyboardEventHandlerHook0):
    newVirtualKeyboardEventHandlerHook0 = proc (): BasicEventHandler = newVirtualKeyboardEventHandler()

