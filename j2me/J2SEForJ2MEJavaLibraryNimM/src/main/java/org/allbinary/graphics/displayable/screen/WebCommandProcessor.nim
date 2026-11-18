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
import java/awt/Desktop as DesktopModule
export DesktopModule
import java/net/URI as URIModule
export URIModule
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/graphics/displayable/screen/AboutCommandProcessor as AboutCommandProcessorModule
export AboutCommandProcessorModule

type
    WebCommandProcessor* = ref object of JObject
        logUtil*: LogUtil
        aboutCommandProcessor*: AboutCommandProcessor
        list*: BasicArrayList

proc newWebCommandProcessor*(): WebCommandProcessor
proc getInstance*(t: typedesc[WebCommandProcessor]): WebCommandProcessor {.discardable.}
method process*(this: WebCommandProcessor, midletCommandListener: CommandListener, command: Command, canvas: Canvas) {.base.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var WebCommandProcessor_instanceValue: WebCommandProcessor
var WebCommandProcessor_instanceSet = false
proc instance*(t: typedesc[WebCommandProcessor]): WebCommandProcessor =
    if not WebCommandProcessor_instanceSet:
        WebCommandProcessor_instanceSet = true
        WebCommandProcessor_instanceValue = newWebCommandProcessor()
    WebCommandProcessor_instanceValue

# Java field initializers run after the base initializer
proc initFieldsWebCommandProcessor(this: WebCommandProcessor) =
    this.logUtil = LogUtil.getInstance()
    this.aboutCommandProcessor = AboutCommandProcessor.getInstance()
    this.list = newBasicArrayListD()
    discard

proc initWebCommandProcessor*(this: WebCommandProcessor) =
    this.initFieldsWebCommandProcessor()

proc newWebCommandProcessor*(): WebCommandProcessor =
    result = WebCommandProcessor()
    initWebCommandProcessor(result)

proc getInstance*(t: typedesc[WebCommandProcessor]): WebCommandProcessor {.discardable.} =
        return WebCommandProcessor.instance

method process*(this: WebCommandProcessor, midletCommandListener: CommandListener, command: Command, canvas: Canvas) {.base.} =
        try:
            if Desktop.isDesktopSupported() and Desktop.getDesktop().isSupported(Desktop.Action.BROWSE):
                Desktop.getDesktop().browse(newURI(jstr(this.list.removeAt(0))))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.PROCESS, e)

