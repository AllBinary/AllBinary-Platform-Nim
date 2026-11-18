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
# package org.allbinary.graphics.displayable.command

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule

type
    MyCommandsFactory* = ref object of JObject
        NO_COMMAND*: Command
        GAUGE_CHANGE*: Command
        SET_DISPLAYABLE*: Command
        PAUSE_COMMAND*: Command
        RESUME_COMMAND*: Command

proc newMyCommandsFactory*(): MyCommandsFactory
proc initMyCommandsFactory*(this: MyCommandsFactory)
proc getInstance*(t: typedesc[MyCommandsFactory]): MyCommandsFactory {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var MyCommandsFactory_instanceValue: MyCommandsFactory
var MyCommandsFactory_instanceSet = false
proc instance*(t: typedesc[MyCommandsFactory]): MyCommandsFactory =
    if not MyCommandsFactory_instanceSet:
        MyCommandsFactory_instanceSet = true
        MyCommandsFactory_instanceValue = newMyCommandsFactory()
    MyCommandsFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMyCommandsFactory(this: MyCommandsFactory) =
    this.NO_COMMAND = newCommand(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, -1, -1)
    this.GAUGE_CHANGE = newCommand("GAUGE_CHANGE", StringUtil.getInstance().EMPTY_STRING, Command.ITEM, 1)
    this.SET_DISPLAYABLE = newCommand("Display", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    this.PAUSE_COMMAND = newCommand("Pause", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
    this.RESUME_COMMAND = newCommand("Resume", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
    discard

proc getInstance*(t: typedesc[MyCommandsFactory]): MyCommandsFactory {.discardable.} =
        return MyCommandsFactory.instance

proc initMyCommandsFactory*(this: MyCommandsFactory) =
        this.initFieldsMyCommandsFactory()
        discard

proc newMyCommandsFactory*(): MyCommandsFactory =
    result = MyCommandsFactory()
    initMyCommandsFactory(result)

