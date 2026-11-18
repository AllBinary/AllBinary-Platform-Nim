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
    BasicMotionGesturesHandler* = ref object of BasicEventHandler

proc newBasicMotionGesturesHandler*(): BasicMotionGesturesHandler
proc initBasicMotionGesturesHandler*(this: BasicMotionGesturesHandler)
proc getInstance*(t: typedesc[BasicMotionGesturesHandler]): BasicMotionGesturesHandler {.discardable.}
method process*(this: BasicMotionGesturesHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener as BaseMotionGestureEventListenerModule
export BaseMotionGestureEventListenerModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

var BasicMotionGesturesHandler_SINGLETONValue: BasicMotionGesturesHandler
var BasicMotionGesturesHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[BasicMotionGesturesHandler]): BasicMotionGesturesHandler =
    if not BasicMotionGesturesHandler_SINGLETONSet:
        BasicMotionGesturesHandler_SINGLETONSet = true
        BasicMotionGesturesHandler_SINGLETONValue = newBasicMotionGesturesHandler()
    BasicMotionGesturesHandler_SINGLETONValue

proc getInstance*(t: typedesc[BasicMotionGesturesHandler]): BasicMotionGesturesHandler {.discardable.} =
        return BasicMotionGesturesHandler.SINGLETON

proc initBasicMotionGesturesHandler*(this: BasicMotionGesturesHandler) =
        initBasicEventHandler(this)
        discard

proc newBasicMotionGesturesHandler*(): BasicMotionGesturesHandler =
    result = BasicMotionGesturesHandler()
    initBasicMotionGesturesHandler(result)

method process*(this: BasicMotionGesturesHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let baseMotionGestureEventListener: BaseMotionGestureEventListener = BaseMotionGestureEventListener(JObject(eventListenerInterface))
        baseMotionGestureEventListener.onMotionGestureEvent(MotionGestureEvent(JObject(eventObject)))

when declared(newBasicMotionGesturesHandlerHook0):
    newBasicMotionGesturesHandlerHook0 = proc (): BasicEventHandler = newBasicMotionGesturesHandler()

