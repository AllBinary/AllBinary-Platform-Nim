#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
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
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Form as FormModule
export FormModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/game/displayable/canvas/MenuListener as MenuListenerModule
export MenuListenerModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/command/MyCommandInterface as MyCommandInterfaceModule
export MyCommandInterfaceModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/ABStack as ABStackModule
export ABStackModule

type
    CommandForm* = ref object of Form
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        repaintProcessor*: Processor
        commandStack*: ABStack

converter jAsMyCommandInterface*(value: CommandForm): MyCommandInterface = cast[MyCommandInterface](value)
converter jAsMenuListener*(value: CommandForm): MenuListener = cast[MenuListener](value)
proc newCommandForm*(commandListener: CommandListener, formTitle: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm
proc initCommandForm*(this: CommandForm, commandListener: CommandListener, formTitle: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor)
proc getNullCommandForm*(t: typedesc[CommandForm]): CommandForm {.discardable.}
method initCommands*(this: CommandForm, cmdListener: CommandListener) {.base.}
method open*(this: CommandForm)
method close*(this: CommandForm)
method update*(this: CommandForm) {.base.}
method getSourceId*(this: CommandForm): int32 {.discardable.}
method addCommand*(this: CommandForm, command: Command)
method removeAllCommands*(this: CommandForm)
import javax/microedition/lcdui/NullCommandListener as NullCommandListenerModule
export NullCommandListenerModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory as ScreenRepaintProcessorFactoryModule
export ScreenRepaintProcessorFactoryModule

var CommandForm_NULL_COMMAND_FORMValue: JObject
var CommandForm_NULL_COMMAND_FORMSet = false
proc NULL_COMMAND_FORM*(t: typedesc[CommandForm]): JObject =
    if not CommandForm_NULL_COMMAND_FORMSet:
        CommandForm_NULL_COMMAND_FORMSet = true
        CommandForm_NULL_COMMAND_FORMValue = NullUtil.getInstance().NULL_OBJECT
    CommandForm_NULL_COMMAND_FORMValue
proc `NULL_COMMAND_FORM=`*(t: typedesc[CommandForm], value: JObject) =
    CommandForm_NULL_COMMAND_FORMSet = true
    CommandForm_NULL_COMMAND_FORMValue = value

# Java field initializers run after the base initializer
proc initFieldsCommandForm(this: CommandForm) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this)
    
    discard

proc getNullCommandForm*(t: typedesc[CommandForm]): CommandForm {.discardable.} =
        if CommandForm.NULL_COMMAND_FORM == NullUtil.getInstance().NULL_OBJECT:
            CommandForm.NULL_COMMAND_FORM = newCommandForm(NullCommandListener.NULL_COMMAND_LISTENERStatic, StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        return CommandForm(JObject(CommandForm.NULL_COMMAND_FORM))

proc initCommandForm*(this: CommandForm, commandListener: CommandListener, formTitle: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initForm(this, formTitle)
        this.initFieldsCommandForm()
        this.commandStack = StdUtil.getInstance().createStack()
        try:
            this.repaintProcessor.process()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e)

proc newCommandForm*(commandListener: CommandListener, formTitle: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm =
    result = CommandForm()
    initCommandForm(result, commandListener, formTitle, backgrounBasicColor, foregroundBasicColor)

method initCommands*(this: CommandForm, cmdListener: CommandListener) {.base.} =
        discard

method open*(this: CommandForm) =
        this.logUtil.putF(this.commonStrings.START, this, "open")

method close*(this: CommandForm) =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE)

method update*(this: CommandForm) {.base.} =
        this.repaintProcessor.process()

method getSourceId*(this: CommandForm): int32 {.discardable.} =
        return 0

method addCommand*(this: CommandForm, command: Command) =
        this.commandStack.push(command)
        procCall Form(this).addCommand(command)

method removeAllCommands*(this: CommandForm) =
        let size: int32 = this.commandStack.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                procCall Form(this).removeCommand(Command(JObject(this.commandStack.pop())))

when declared(newCommandFormHook4):
    newCommandFormHook4 = proc (commandListener: CommandListener, formTitle: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): Form = newCommandForm(commandListener, formTitle, backgrounBasicColor, foregroundBasicColor)

