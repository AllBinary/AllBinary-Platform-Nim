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
    MovedMotionGesturesHandler* = ref object of BasicEventHandler

proc newMovedMotionGesturesHandler*(): MovedMotionGesturesHandler
proc initMovedMotionGesturesHandler*(this: MovedMotionGesturesHandler)
proc getInstance*(t: typedesc[MovedMotionGesturesHandler]): MovedMotionGesturesHandler {.discardable.}
method process*(this: MovedMotionGesturesHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener as BaseMotionGestureEventListenerModule
export BaseMotionGestureEventListenerModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

var MovedMotionGesturesHandler_SINGLETONValue: MovedMotionGesturesHandler
var MovedMotionGesturesHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[MovedMotionGesturesHandler]): MovedMotionGesturesHandler =
    if not MovedMotionGesturesHandler_SINGLETONSet:
        MovedMotionGesturesHandler_SINGLETONSet = true
        MovedMotionGesturesHandler_SINGLETONValue = newMovedMotionGesturesHandler()
    MovedMotionGesturesHandler_SINGLETONValue

proc getInstance*(t: typedesc[MovedMotionGesturesHandler]): MovedMotionGesturesHandler {.discardable.} =
        return MovedMotionGesturesHandler.SINGLETON

proc initMovedMotionGesturesHandler*(this: MovedMotionGesturesHandler) =
        initBasicEventHandler(this)
        discard

proc newMovedMotionGesturesHandler*(): MovedMotionGesturesHandler =
    result = MovedMotionGesturesHandler()
    initMovedMotionGesturesHandler(result)

method process*(this: MovedMotionGesturesHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let baseMotionGestureEventListener: BaseMotionGestureEventListener = BaseMotionGestureEventListener(JObject(eventListenerInterface))
        baseMotionGestureEventListener.onMotionGestureEvent(MotionGestureEvent(JObject(eventObject)))

when declared(newMovedMotionGesturesHandlerHook0):
    newMovedMotionGesturesHandlerHook0 = proc (): BasicEventHandler = newMovedMotionGesturesHandler()

