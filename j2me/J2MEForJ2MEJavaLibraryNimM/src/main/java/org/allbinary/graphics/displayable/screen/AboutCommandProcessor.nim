#[
 
  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.screen

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule

type
    AboutCommandProcessor* = ref object of JObject

proc newAboutCommandProcessor*(): AboutCommandProcessor
proc getInstance*(t: typedesc[AboutCommandProcessor]): AboutCommandProcessor {.discardable.}
method process*(this: AboutCommandProcessor, midletCommandListener: CommandListener, command: Command, canvas: Canvas) {.base.}

var AboutCommandProcessor_instanceValue: AboutCommandProcessor
var AboutCommandProcessor_instanceSet = false
proc instance*(t: typedesc[AboutCommandProcessor]): AboutCommandProcessor =
    if not AboutCommandProcessor_instanceSet:
        AboutCommandProcessor_instanceSet = true
        AboutCommandProcessor_instanceValue = newAboutCommandProcessor()
    AboutCommandProcessor_instanceValue

proc initAboutCommandProcessor*(this: AboutCommandProcessor) =
    discard

proc newAboutCommandProcessor*(): AboutCommandProcessor =
    result = AboutCommandProcessor()
    initAboutCommandProcessor(result)

proc getInstance*(t: typedesc[AboutCommandProcessor]): AboutCommandProcessor {.discardable.} =
        return AboutCommandProcessor.instance

method process*(this: AboutCommandProcessor, midletCommandListener: CommandListener, command: Command, canvas: Canvas) {.base.} =
        midletCommandListener.commandAction(command, canvas)

