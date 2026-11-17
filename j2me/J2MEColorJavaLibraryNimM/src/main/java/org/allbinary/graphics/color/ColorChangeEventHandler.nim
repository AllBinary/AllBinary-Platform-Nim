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
# package org.allbinary.graphics.color

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    ColorChangeEventHandler* = ref object of BasicEventHandler

proc newColorChangeEventHandler*(): ColorChangeEventHandler
proc initColorChangeEventHandler*(this: ColorChangeEventHandler)
proc getInstance*(t: typedesc[ColorChangeEventHandler]): ColorChangeEventHandler {.discardable.}

var ColorChangeEventHandler_eventHandlerValue: ColorChangeEventHandler
var ColorChangeEventHandler_eventHandlerSet = false
proc eventHandler*(t: typedesc[ColorChangeEventHandler]): ColorChangeEventHandler =
    if not ColorChangeEventHandler_eventHandlerSet:
        ColorChangeEventHandler_eventHandlerSet = true
        ColorChangeEventHandler_eventHandlerValue = newColorChangeEventHandler()
    ColorChangeEventHandler_eventHandlerValue

proc initColorChangeEventHandler*(this: ColorChangeEventHandler) =
        initBasicEventHandler(this)
        discard

proc newColorChangeEventHandler*(): ColorChangeEventHandler =
    result = ColorChangeEventHandler()
    initColorChangeEventHandler(result)

proc getInstance*(t: typedesc[ColorChangeEventHandler]): ColorChangeEventHandler {.discardable.} =
        return ColorChangeEventHandler.eventHandler

when declared(newColorChangeEventHandlerHook0):
    newColorChangeEventHandlerHook0 = proc (): BasicEventHandler = newColorChangeEventHandler()

