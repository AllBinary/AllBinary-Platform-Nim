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
# package org.allbinary.graphics.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/displayable/command/MyCommandInterface as MyCommandInterfaceModule
export MyCommandInterfaceModule
import org/allbinary/input/TouchJ2ME as TouchJ2MEModule
export TouchJ2MEModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/ABStack as ABStackModule
export ABStackModule
import org/allbinary/graphics/displayable/DisplayableInterface as DisplayableInterfaceModule
export DisplayableInterfaceModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule

type
    MyCanvas* = ref object of Canvas
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        canvasStrings*: CanvasStrings
        stringUtil*: StringUtil
        displayInfo*: DisplayInfoSingleton
        name*: string
        childNameList*: BasicArrayList
        commandStack*: ABStack
        commandListener*: CommandListener
        paused*: bool
        touchME*: TouchJ2ME

converter jAsDisplayableInterface*(value: MyCanvas): DisplayableInterface = cast[DisplayableInterface](value)
converter jAsMyCommandInterface*(value: MyCanvas): MyCommandInterface = cast[MyCommandInterface](value)
proc newMyCanvas*(name: string, childNameList: BasicArrayList): MyCanvas
proc initMyCanvas*(this: MyCanvas, name: string, childNameList: BasicArrayList)
method getWidth*(this: MyCanvas): int32 {.discardable.}
method getHeight*(this: MyCanvas): int32 {.discardable.}
method setFullScreenMode*(this: MyCanvas, mode: bool)
method sizeChanged*(this: MyCanvas, w: int32, h: int32)
method getCommandStack*(this: MyCanvas): ABStack {.base, discardable.}
method isCommand*(this: MyCanvas, command: Command): bool {.base, discardable.}
method addCommand*(this: MyCanvas, command: Command)
method removeCommand*(this: MyCanvas, command: Command)
method removeAllCommands*(this: MyCanvas)
method setCommandListener*(this: MyCanvas, l: CommandListener)
method getCustomCommandListener*(this: MyCanvas): CommandListener {.base, discardable.}
method isPaused*(this: MyCanvas): bool {.base, discardable.}
method removePauseCommand*(this: MyCanvas) {.base.}
method pause*(this: MyCanvas) {.base.}
method unPause*(this: MyCanvas) {.base.}
method process*(this: MyCanvas) {.base.}
method paint*(this: MyCanvas, graphics: Graphics)
method draw*(this: MyCanvas, graphics: Graphics) {.base.}
method hasChild*(this: MyCanvas, displayable: MyCanvas): bool {.base, discardable.}
method destroy*(this: MyCanvas) {.base.}
method setPaused*(this: MyCanvas, isPaused: bool) {.base.}
method keyPressedByDevice*(this: MyCanvas, keyCode: int32, deviceId: int32) {.base.}
method keyRepeatedByDevice*(this: MyCanvas, keyCode: int32, deviceId: int32) {.base.}
method keyReleasedByDevice*(this: MyCanvas, keyCode: int32, deviceId: int32) {.base.}
method pointerDragged*(this: MyCanvas, x: int32, y: int32)
method pointerPressed*(this: MyCanvas, x: int32, y: int32)
method pointerReleased*(this: MyCanvas, x: int32, y: int32)
method nextSong*(this: MyCanvas, nextSongSound: Sound, leftVolume: int32, rightVolume: int32) {.base.}
import javax/microedition/lcdui/NullCommandListener as NullCommandListenerModule
export NullCommandListenerModule
import org/allbinary/graphics/displayable/command/MyCommandsFactory as MyCommandsFactoryModule
export MyCommandsFactoryModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule


# Java field initializers run after the base initializer
proc initFieldsMyCanvas(this: MyCanvas) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.canvasStrings = CanvasStrings.getInstance()
    this.stringUtil = StringUtil.getInstance()
    this.displayInfo = DisplayInfoSingleton.getInstance()
    
    
    
    this.commandListener = NullCommandListener.NULL_COMMAND_LISTENERStatic
    this.paused = false
    this.touchME = newTouchJ2ME()
    discard

proc initMyCanvas*(this: MyCanvas, name: string, childNameList: BasicArrayList) =
        initCanvas(this)
        this.initFieldsMyCanvas()
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR)
        this.displayInfo.update(this, this.canvasStrings.CONSTRUCTOR)
        this.name = name
        this.childNameList = childNameList
        this.commandStack = StdUtil.getInstance().createStack()

proc newMyCanvas*(name: string, childNameList: BasicArrayList): MyCanvas =
    result = MyCanvas()
    initMyCanvas(result, name, childNameList)

method getWidth*(this: MyCanvas): int32 {.discardable.} =
        return procCall Canvas(this).getWidth()

method getHeight*(this: MyCanvas): int32 {.discardable.} =
        return procCall Canvas(this).getHeight()

method setFullScreenMode*(this: MyCanvas, mode: bool) =
        jSuperStatement(procCall Canvas(this).setFullScreenMode(mode))
        this.displayInfo.update(this, this.canvasStrings.SET_FULL_SCREEN_MODE)

method sizeChanged*(this: MyCanvas, w: int32, h: int32) =
        this.displayInfo.update(this, this.canvasStrings.SIZE_CHANGED)

method getCommandStack*(this: MyCanvas): ABStack {.base, discardable.} =
        return this.commandStack

method isCommand*(this: MyCanvas, command: Command): bool {.base, discardable.} =
        return this.commandStack.contains(command)

method addCommand*(this: MyCanvas, command: Command) =
        if (not this.commandStack.contains(command)):
            this.commandStack.push(command)
            jSuperStatement(procCall Canvas(this).addCommand(command))

method removeCommand*(this: MyCanvas, command: Command) =
        this.commandStack.removeElement(command)
        jSuperStatement(procCall Canvas(this).removeCommand(command))

method removeAllCommands*(this: MyCanvas) =
        var size: int32 = this.commandStack.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                jSuperStatement(procCall Canvas(this).removeCommand(Command(JObject(this.commandStack.pop()))))

method setCommandListener*(this: MyCanvas, l: CommandListener) =
        jSuperStatement(procCall Canvas(this).setCommandListener(l))
        this.commandListener = l

method getCustomCommandListener*(this: MyCanvas): CommandListener {.base, discardable.} =
        return this.commandListener

method isPaused*(this: MyCanvas): bool {.base, discardable.} =
        return this.paused

method removePauseCommand*(this: MyCanvas) {.base.} =
        this.removeCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND)

method pause*(this: MyCanvas) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.PAUSE)
        this.removePauseCommand()
        this.addCommand(MyCommandsFactory.getInstance().RESUME_COMMAND)
        this.setPaused(true)

method unPause*(this: MyCanvas) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.UN_PAUSE)
        this.removeCommand(MyCommandsFactory.getInstance().RESUME_COMMAND)
        this.addCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND)
        this.setPaused(false)

method process*(this: MyCanvas) {.base.} =
        this.displayInfo.process()

method paint*(this: MyCanvas, graphics: Graphics) =
        discard

method draw*(this: MyCanvas, graphics: Graphics) {.base.} =
        discard

method hasChild*(this: MyCanvas, displayable: MyCanvas): bool {.base, discardable.} =
        return this.childNameList.contains(displayable.name)

method destroy*(this: MyCanvas) {.base.} =
        this.logUtil.putF("Destroyed MyCanvas", this, "destroy")

method setPaused*(this: MyCanvas, isPaused: bool) {.base.} =
        this.paused = isPaused

method keyPressedByDevice*(this: MyCanvas, keyCode: int32, deviceId: int32) {.base.} =
        discard

method keyRepeatedByDevice*(this: MyCanvas, keyCode: int32, deviceId: int32) {.base.} =
        discard

method keyReleasedByDevice*(this: MyCanvas, keyCode: int32, deviceId: int32) {.base.} =
        discard

method pointerDragged*(this: MyCanvas, x: int32, y: int32) =
        this.touchME.pointerDragged(x, y)

method pointerPressed*(this: MyCanvas, x: int32, y: int32) =
        this.touchME.pointerPressed(x, y)

method pointerReleased*(this: MyCanvas, x: int32, y: int32) =
        this.touchME.pointerReleased(x, y)

method nextSong*(this: MyCanvas, nextSongSound: Sound, leftVolume: int32, rightVolume: int32) {.base.} =
        discard

when declared(newMyCanvasHook2):
    newMyCanvasHook2 = proc (name: string, childNameList: BasicArrayList): Canvas = newMyCanvas(name, childNameList)

