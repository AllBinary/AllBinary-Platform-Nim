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
# package org.allbinary.content

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    CommandUriAction* = ref object of JObject
        logUtil*: LogUtil

proc newCommandUriAction*(): CommandUriAction
proc getInstance*(t: typedesc[CommandUriAction]): CommandUriAction {.discardable.}
method add*(this: CommandUriAction, command: Command, url: string) {.base.}
method process*(this: CommandUriAction, command: Command) {.base.}

var CommandUriAction_instanceValue: CommandUriAction
var CommandUriAction_instanceSet = false
proc instance*(t: typedesc[CommandUriAction]): CommandUriAction =
    if not CommandUriAction_instanceSet:
        CommandUriAction_instanceSet = true
        CommandUriAction_instanceValue = newCommandUriAction()
    CommandUriAction_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCommandUriAction(this: CommandUriAction) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initCommandUriAction*(this: CommandUriAction) =
    this.initFieldsCommandUriAction()

proc newCommandUriAction*(): CommandUriAction =
    result = CommandUriAction()
    initCommandUriAction(result)

proc getInstance*(t: typedesc[CommandUriAction]): CommandUriAction {.discardable.} =
        return CommandUriAction.instance

method add*(this: CommandUriAction, command: Command, url: string) {.base.} =
        discard

method process*(this: CommandUriAction, command: Command) {.base.} =
        discard

