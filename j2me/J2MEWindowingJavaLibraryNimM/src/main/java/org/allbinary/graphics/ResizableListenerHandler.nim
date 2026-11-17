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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/ResizableListenerInterface as ResizableListenerInterfaceModule
export ResizableListenerInterfaceModule

type
    ResizableListenerHandler* = ref object of JObject

proc newResizableListenerHandler*(): ResizableListenerHandler
proc getInstance*(t: typedesc[ResizableListenerHandler]): ResizableListenerHandler {.discardable.}
method setListener*(this: ResizableListenerHandler, resizableListenerInterface: ResizableListenerInterface) {.base.}
method fire*(this: ResizableListenerHandler, isFullScreen: bool) {.base.}
method fireEvent*(this: ResizableListenerHandler, value: bool) {.base.}

var ResizableListenerHandler_instanceValue: ResizableListenerHandler
var ResizableListenerHandler_instanceSet = false
proc instance*(t: typedesc[ResizableListenerHandler]): ResizableListenerHandler =
    if not ResizableListenerHandler_instanceSet:
        ResizableListenerHandler_instanceSet = true
        ResizableListenerHandler_instanceValue = newResizableListenerHandler()
    ResizableListenerHandler_instanceValue

proc initResizableListenerHandler*(this: ResizableListenerHandler) =
    discard

proc newResizableListenerHandler*(): ResizableListenerHandler =
    result = ResizableListenerHandler()
    initResizableListenerHandler(result)

proc getInstance*(t: typedesc[ResizableListenerHandler]): ResizableListenerHandler {.discardable.} =
        return ResizableListenerHandler.instance

method setListener*(this: ResizableListenerHandler, resizableListenerInterface: ResizableListenerInterface) {.base.} =
        discard

method fire*(this: ResizableListenerHandler, isFullScreen: bool) {.base.} =
        discard

method fireEvent*(this: ResizableListenerHandler, value: bool) {.base.} =
        discard

