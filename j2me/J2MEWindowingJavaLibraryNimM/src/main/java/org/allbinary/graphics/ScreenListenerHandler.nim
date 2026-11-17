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
import org/allbinary/graphics/ScreenListenerInterface as ScreenListenerInterfaceModule
export ScreenListenerInterfaceModule

type
    ScreenListenerHandler* = ref object of JObject
        screenListenerInterface*: ScreenListenerInterface

proc newScreenListenerHandler*(): ScreenListenerHandler
proc getInstance*(t: typedesc[ScreenListenerHandler]): ScreenListenerHandler {.discardable.}
method setListener*(this: ScreenListenerHandler, screenListenerInterface: ScreenListenerInterface) {.base.}
method fireWithState*(this: ScreenListenerHandler, isFullScreen: bool) {.base.}
method fire*(this: ScreenListenerHandler) {.base.}
import org/allbinary/graphics/ScreenEmptyListener as ScreenEmptyListenerModule
export ScreenEmptyListenerModule

var ScreenListenerHandler_instanceValue: ScreenListenerHandler
var ScreenListenerHandler_instanceSet = false
proc instance*(t: typedesc[ScreenListenerHandler]): ScreenListenerHandler =
    if not ScreenListenerHandler_instanceSet:
        ScreenListenerHandler_instanceSet = true
        ScreenListenerHandler_instanceValue = newScreenListenerHandler()
    ScreenListenerHandler_instanceValue

# Java field initializers run after the base initializer
proc initFieldsScreenListenerHandler(this: ScreenListenerHandler) =
    this.screenListenerInterface = newScreenEmptyListener()
    discard

proc initScreenListenerHandler*(this: ScreenListenerHandler) =
    this.initFieldsScreenListenerHandler()

proc newScreenListenerHandler*(): ScreenListenerHandler =
    result = ScreenListenerHandler()
    initScreenListenerHandler(result)

proc getInstance*(t: typedesc[ScreenListenerHandler]): ScreenListenerHandler {.discardable.} =
        return ScreenListenerHandler.instance

method setListener*(this: ScreenListenerHandler, screenListenerInterface: ScreenListenerInterface) {.base.} =
        this.screenListenerInterface = screenListenerInterface

method fireWithState*(this: ScreenListenerHandler, isFullScreen: bool) {.base.} =
        this.screenListenerInterface.onFullScreen(isFullScreen)

method fire*(this: ScreenListenerHandler) {.base.} =
        this.screenListenerInterface.onFullScreenDisplay()

