# Generated Code Do Not Modify
# package javax.microedition.lcdui

{.warning[UnusedImport]: off.}
import allbinary_java
import java/util/Stack as StackModule
export StackModule
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

type
    NullCanvas* = ref object of Canvas

proc newNullCanvas*(): NullCanvas
proc initNullCanvas*(this: NullCanvas)
method setFullScreenMode*(this: NullCanvas, mode: bool)
method sizeChanged*(this: NullCanvas, w: int32, h: int32)
method getCommandStack*(this: NullCanvas): Stack {.base, discardable.}
method isCommand*(this: NullCanvas, command: Command): bool {.base, discardable.}
method addCommand*(this: NullCanvas, command: Command)
method removeCommand*(this: NullCanvas, command: Command)
method removeAllCommands*(this: NullCanvas) {.base.}
method setCommandListener*(this: NullCanvas, l: CommandListener)
method getCustomCommandListener*(this: NullCanvas): CommandListener {.base, discardable.}
method isPaused*(this: NullCanvas): bool {.base, discardable.}
method removePauseCommand*(this: NullCanvas) {.base.}
method pause*(this: NullCanvas) {.base.}
method unPause*(this: NullCanvas) {.base.}
method process*(this: NullCanvas) {.base.}
method paint*(this: NullCanvas, graphics: Graphics)
method destroy*(this: NullCanvas) {.base.}
method setPaused*(this: NullCanvas, isPaused: bool) {.base.}
method pointerDragged*(this: NullCanvas, x: int32, y: int32)
method pointerPressed*(this: NullCanvas, x: int32, y: int32)
method pointerReleased*(this: NullCanvas, x: int32, y: int32)

var NullCanvas_NULL_CANVASValue: NullCanvas
var NullCanvas_NULL_CANVASSet = false
proc NULL_CANVASStatic*(t: typedesc[NullCanvas]): NullCanvas =
    if not NullCanvas_NULL_CANVASSet:
        NullCanvas_NULL_CANVASSet = true
        NullCanvas_NULL_CANVASValue = newNullCanvas()
    NullCanvas_NULL_CANVASValue

proc initNullCanvas*(this: NullCanvas) =
        initCanvas(this)
        discard

proc newNullCanvas*(): NullCanvas =
    result = NullCanvas()
    initNullCanvas(result)

method setFullScreenMode*(this: NullCanvas, mode: bool) =
        discard

method sizeChanged*(this: NullCanvas, w: int32, h: int32) =
        discard

method getCommandStack*(this: NullCanvas): Stack {.base, discardable.} =
        raise newJException("RuntimeException", "")

method isCommand*(this: NullCanvas, command: Command): bool {.base, discardable.} =
        raise newJException("RuntimeException", "")

method addCommand*(this: NullCanvas, command: Command) =
        discard

method removeCommand*(this: NullCanvas, command: Command) =
        discard

method removeAllCommands*(this: NullCanvas) {.base.} =
        discard

method setCommandListener*(this: NullCanvas, l: CommandListener) =
        discard

method getCustomCommandListener*(this: NullCanvas): CommandListener {.base, discardable.} =
        raise newJException("RuntimeException", "")

method isPaused*(this: NullCanvas): bool {.base, discardable.} =
        raise newJException("RuntimeException", "")

method removePauseCommand*(this: NullCanvas) {.base.} =
        discard

method pause*(this: NullCanvas) {.base.} =
        discard

method unPause*(this: NullCanvas) {.base.} =
        discard

method process*(this: NullCanvas) {.base.} =
        discard

method paint*(this: NullCanvas, graphics: Graphics) =
        discard

method destroy*(this: NullCanvas) {.base.} =
        discard

method setPaused*(this: NullCanvas, isPaused: bool) {.base.} =
        raise newJException("RuntimeException", "")

method pointerDragged*(this: NullCanvas, x: int32, y: int32) =
        discard

method pointerPressed*(this: NullCanvas, x: int32, y: int32) =
        discard

method pointerReleased*(this: NullCanvas, x: int32, y: int32) =
        discard

when declared(newNullCanvasHook0):
    newNullCanvasHook0 = proc (): Canvas = newNullCanvas()

