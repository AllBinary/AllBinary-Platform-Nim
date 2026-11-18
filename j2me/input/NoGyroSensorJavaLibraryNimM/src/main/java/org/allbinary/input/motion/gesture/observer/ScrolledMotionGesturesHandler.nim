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
# package org.allbinary.input.motion.gesture.observer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    ScrolledMotionGesturesHandler* = ref object of BasicEventHandler

proc newScrolledMotionGesturesHandler*(): ScrolledMotionGesturesHandler
proc initScrolledMotionGesturesHandler*(this: ScrolledMotionGesturesHandler)
proc getInstance*(t: typedesc[ScrolledMotionGesturesHandler]): ScrolledMotionGesturesHandler {.discardable.}
method process*(this: ScrolledMotionGesturesHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener as BaseMotionGestureEventListenerModule
export BaseMotionGestureEventListenerModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

var ScrolledMotionGesturesHandler_SINGLETONValue: ScrolledMotionGesturesHandler
var ScrolledMotionGesturesHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[ScrolledMotionGesturesHandler]): ScrolledMotionGesturesHandler =
    if not ScrolledMotionGesturesHandler_SINGLETONSet:
        ScrolledMotionGesturesHandler_SINGLETONSet = true
        ScrolledMotionGesturesHandler_SINGLETONValue = newScrolledMotionGesturesHandler()
    ScrolledMotionGesturesHandler_SINGLETONValue

proc getInstance*(t: typedesc[ScrolledMotionGesturesHandler]): ScrolledMotionGesturesHandler {.discardable.} =
        return ScrolledMotionGesturesHandler.SINGLETON

proc initScrolledMotionGesturesHandler*(this: ScrolledMotionGesturesHandler) =
        initBasicEventHandler(this)
        discard

proc newScrolledMotionGesturesHandler*(): ScrolledMotionGesturesHandler =
    result = ScrolledMotionGesturesHandler()
    initScrolledMotionGesturesHandler(result)

method process*(this: ScrolledMotionGesturesHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let baseMotionGestureEventListener: BaseMotionGestureEventListener = BaseMotionGestureEventListener(JObject(eventListenerInterface))
        baseMotionGestureEventListener.onScrolledMotionGestureEvent(MotionGestureEvent(JObject(eventObject)))

when declared(newScrolledMotionGesturesHandlerHook0):
    newScrolledMotionGesturesHandlerHook0 = proc (): BasicEventHandler = newScrolledMotionGesturesHandler()

