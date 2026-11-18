# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

#Temp should not be in any build
type
    NullDisplayable* = ref object of Canvas

proc newNullDisplayable*(): NullDisplayable
proc initNullDisplayable*(this: NullDisplayable)
proc getInstance*(t: typedesc[NullDisplayable]): NullDisplayable {.discardable.}
method paint*(this: NullDisplayable, graphics: Graphics)

var NullDisplayable_SINGLETONValue: NullDisplayable
var NullDisplayable_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NullDisplayable]): NullDisplayable =
    if not NullDisplayable_SINGLETONSet:
        NullDisplayable_SINGLETONSet = true
        NullDisplayable_SINGLETONValue = newNullDisplayable()
    NullDisplayable_SINGLETONValue

proc getInstance*(t: typedesc[NullDisplayable]): NullDisplayable {.discardable.} =
        return NullDisplayable.SINGLETON

proc initNullDisplayable*(this: NullDisplayable) =
        initCanvas(this)
        discard

proc newNullDisplayable*(): NullDisplayable =
    result = NullDisplayable()
    initNullDisplayable(result)

method paint*(this: NullDisplayable, graphics: Graphics) =
        discard

when declared(newNullDisplayableHook0):
    newNullDisplayableHook0 = proc (): Canvas = newNullDisplayable()

