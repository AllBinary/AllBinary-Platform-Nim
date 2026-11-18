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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/displayable/canvas/CommandFormInputProcessor as CommandFormInputProcessorModule
export CommandFormInputProcessorModule

type
    CommandRunnable* = ref object of Runnable
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        commandFormInputProcessor*: CommandFormInputProcessor
        command*: Command

proc newCommandRunnable*(commandFormInputProcessor: CommandFormInputProcessor, command: Command): CommandRunnable
proc initCommandRunnable*(this: CommandRunnable, commandFormInputProcessor: CommandFormInputProcessor, command: Command)
method run*(this: CommandRunnable)
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule


# Java field initializers run after the base initializer
proc initFieldsCommandRunnable(this: CommandRunnable) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    discard

proc initCommandRunnable*(this: CommandRunnable, commandFormInputProcessor: CommandFormInputProcessor, command: Command) =
        this.initFieldsCommandRunnable()
        this.commandFormInputProcessor = commandFormInputProcessor
        this.command = command

proc newCommandRunnable*(commandFormInputProcessor: CommandFormInputProcessor, command: Command): CommandRunnable =
    result = CommandRunnable()
    initCommandRunnable(result, commandFormInputProcessor, command)

method run*(this: CommandRunnable) =
        try:
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            let canvas: MyCanvas = this.commandFormInputProcessor.getCanvas()
            let commandListener: CommandListener = canvas.getCustomCommandListener()
            commandListener.commandAction(this.command, canvas)
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)

