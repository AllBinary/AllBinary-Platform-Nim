# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/canvas/BaseGameStatistics as BaseGameStatisticsModule
export BaseGameStatisticsModule

#J2SEForJ2ME
type
    NullDisplayable* = ref object of Canvas
        baseGameStatistics*: BaseGameStatistics

proc newNullDisplayable*(): NullDisplayable
proc initNullDisplayable*(this: NullDisplayable)
proc getInstance*(t: typedesc[NullDisplayable]): NullDisplayable {.discardable.}
method paint*(this: NullDisplayable, graphics: Graphics)
import org/allbinary/canvas/GameStatisticsFactory as GameStatisticsFactoryModule
export GameStatisticsFactoryModule

var NullDisplayable_SINGLETONValue: NullDisplayable
var NullDisplayable_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NullDisplayable]): NullDisplayable =
    if not NullDisplayable_SINGLETONSet:
        NullDisplayable_SINGLETONSet = true
        NullDisplayable_SINGLETONValue = newNullDisplayable()
    NullDisplayable_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsNullDisplayable(this: NullDisplayable) =
    this.baseGameStatistics = GameStatisticsFactory.getInstance()
    discard

proc getInstance*(t: typedesc[NullDisplayable]): NullDisplayable {.discardable.} =
        return NullDisplayable.SINGLETON

proc initNullDisplayable*(this: NullDisplayable) =
        initCanvas(this)
        this.initFieldsNullDisplayable()
        discard

proc newNullDisplayable*(): NullDisplayable =
    result = NullDisplayable()
    initNullDisplayable(result)

method paint*(this: NullDisplayable, graphics: Graphics) =
        this.baseGameStatistics.nextRefresh()

when declared(newNullDisplayableHook0):
    newNullDisplayableHook0 = proc (): Canvas = newNullDisplayable()

