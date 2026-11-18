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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    AnimationEventHandler* = ref object of BasicEventHandler

proc newAnimationEventHandler*(): AnimationEventHandler
proc initAnimationEventHandler*(this: AnimationEventHandler)
proc getInstance*(t: typedesc[AnimationEventHandler]): AnimationEventHandler {.discardable.}

var AnimationEventHandler_eventHandlerValue: AnimationEventHandler
var AnimationEventHandler_eventHandlerSet = false
proc eventHandler*(t: typedesc[AnimationEventHandler]): AnimationEventHandler =
    if not AnimationEventHandler_eventHandlerSet:
        AnimationEventHandler_eventHandlerSet = true
        AnimationEventHandler_eventHandlerValue = newAnimationEventHandler()
    AnimationEventHandler_eventHandlerValue

proc initAnimationEventHandler*(this: AnimationEventHandler) =
        initBasicEventHandler(this)
        discard

proc newAnimationEventHandler*(): AnimationEventHandler =
    result = AnimationEventHandler()
    initAnimationEventHandler(result)

proc getInstance*(t: typedesc[AnimationEventHandler]): AnimationEventHandler {.discardable.} =
        return AnimationEventHandler.eventHandler

when declared(newAnimationEventHandlerHook0):
    newAnimationEventHandlerHook0 = proc (): BasicEventHandler = newAnimationEventHandler()

