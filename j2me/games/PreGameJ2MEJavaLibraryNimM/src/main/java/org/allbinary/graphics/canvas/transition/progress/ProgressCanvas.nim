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
# package org.allbinary.graphics.canvas.transition.progress

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/canvas/RunnableCanvas as RunnableCanvasModule
export RunnableCanvasModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/form/item/ABCustomGaugeItem as ABCustomGaugeItemModule
export ABCustomGaugeItemModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/midlet/AllBinaryMidlet as AllBinaryMidletModule
export AllBinaryMidletModule
import org/allbinary/graphics/canvas/transition/progress/ProgressEndListener as ProgressEndListenerModule
export ProgressEndListenerModule

type
    ProgressCanvas* = ref object of RunnableCanvas
        hasPainted*: bool
        backgroundBasicColor*: BasicColor
        GAUGE_PAINTABLE*: Paintable
        maxValue*: float32
        gauge*: ABCustomGaugeItem
        TEXT*: string
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        allbinaryMidlet*: AllBinaryMidlet
        value*: float32
        text*: string
        background*: bool
        paintable*: PaintableInterface
        inProgress*: bool
        IN_GAME_PROCESSOR*: Processor
        inGameProcessor*: Processor
        progressEndListener*: ProgressEndListener
        backgroundLabel*: string
        START_BACKGROUND*: string
        ADD_PORTION*: string
        ADD_EARLY_PORTION*: string

converter jAsPaintableInterface*(value: ProgressCanvas): PaintableInterface = cast[PaintableInterface](value)
converter jAsUpdateMyFontInterface*(value: ProgressCanvas): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newProgressCanvas*(title: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ProgressCanvas
proc initProgressCanvas*(this: ProgressCanvas, title: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method updateMeasurement*(this: ProgressCanvas, graphics: Graphics)
method init*(this: ProgressCanvas, gameMidlet: AllBinaryMidlet) {.base.}
method update*(this: ProgressCanvas, graphics: Graphics) {.base.}
method initCommands*(this: ProgressCanvas, cmdListener: CommandListener)
method getMaxValue*(this: ProgressCanvas): float32 {.base, discardable.}
method start*(this: ProgressCanvas) {.base.}
method startBackground*(this: ProgressCanvas, background: bool) {.base.}
method endActual*(this: ProgressCanvas) {.base.}
method inGame*(this: ProgressCanvas) {.base.}
method `end`*(this: ProgressCanvas) {.base.}
method endFromInitialLazyLoadingComplete*(this: ProgressCanvas) {.base.}
method isInGame*(this: ProgressCanvas): bool {.base, discardable.}
method endIfPaintedSinceStart*(this: ProgressCanvas) {.base.}
method addEarlyPortion*(this: ProgressCanvas, value: int32, text: string, index: int32) {.base.}
method addPortion*(this: ProgressCanvas, value: int32, text: string, index: int32) {.base.}
method addNormalPortion*(this: ProgressCanvas, value: int32, text: string) {.base.}
method setValue*(this: ProgressCanvas, value: int32) {.base.}
method paint*(this: ProgressCanvas, graphics: Graphics)
method paint2*(this: ProgressCanvas, graphics: Graphics) {.base.}
method paintThreed*(this: ProgressCanvas, graphics: Graphics)
method getValue*(this: ProgressCanvas): float32 {.base, discardable.}
method setText*(this: ProgressCanvas, text: string) {.base.}
method getText*(this: ProgressCanvas): string {.base, discardable.}
method setBackground*(this: ProgressCanvas, background: bool) {.base.}
method isBackground*(this: ProgressCanvas): bool {.base, discardable.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule
import javax/microedition/lcdui/NullCommandListener as NullCommandListenerModule
export NullCommandListenerModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/thread/PathFindingThreadPool as PathFindingThreadPoolModule
export PathFindingThreadPoolModule
import org/allbinary/thread/ThreadPool as ThreadPoolModule
export ThreadPoolModule
import org/allbinary/graphics/canvas/transition/progress/ProgressPaintable as ProgressPaintableModule
export ProgressPaintableModule


# Java field initializers run after the base initializer
proc initFieldsProgressCanvas(this: ProgressCanvas) =
    this.hasPainted = false
    
    this.GAUGE_PAINTABLE = newProgressPaintable(this)
    this.maxValue = 100.0'f32
    
    this.TEXT = this.commonStrings.LOADING
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.allbinaryMidlet = AllBinaryMidlet.getNullInstance()
    this.value = 0.0'f32
    this.text = this.TEXT
    this.background = true
    this.paintable = this.GAUGE_PAINTABLE
    this.inProgress = false
    this.IN_GAME_PROCESSOR = newProcessor() #[ Java anonymous class body: implement it as a named subclass
        this.pathFindingThreadPool = PathFindingThreadPool.getInstance()
        
method process*(this: ProgressCanvas) =
            this.pathFindingThreadPool.runAPriorityTask() ]#
    this.inGameProcessor = Processor.getInstance()
    this.progressEndListener = ProgressEndListener.instance
    this.backgroundLabel = "Background AI Game Loading..."
    this.START_BACKGROUND = "startBackground"
    this.ADD_PORTION = "addPortion"
    this.ADD_EARLY_PORTION = "addEarlyPortion"
    discard

proc initProgressCanvas*(this: ProgressCanvas, title: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initRunnableCanvas(this, NullCommandListener.NULL_COMMAND_LISTENERStatic, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, false)
        this.initFieldsProgressCanvas()
        this.backgroundBasicColor = backgroundBasicColor
        this.gauge = newABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, jToInt32(float64(this.maxValue)), 0, backgroundBasicColor, foregroundBasicColor)

proc newProgressCanvas*(title: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ProgressCanvas =
    result = ProgressCanvas()
    initProgressCanvas(result, title, backgroundBasicColor, foregroundBasicColor)

method updateMeasurement*(this: ProgressCanvas, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.gauge.setHeight(font.getHeight() +% 2)
        this.myFontProcessor = MyFontProcessor.getInstance()

method init*(this: ProgressCanvas, gameMidlet: AllBinaryMidlet) {.base.} =
        this.allbinaryMidlet = gameMidlet

method update*(this: ProgressCanvas, graphics: Graphics) {.base.} =
        discard

method initCommands*(this: ProgressCanvas, cmdListener: CommandListener) =
        discard

method getMaxValue*(this: ProgressCanvas): float32 {.base, discardable.} =
        return this.maxValue

method start*(this: ProgressCanvas) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.START_METHOD_NAME)
        this.setBackground(true)
        this.gauge.setHeight(30)
        this.gauge.setLabel(this.commonStrings.PLEASE_WAIT)
        this.setText(this.TEXT)
        this.setValue(0)
        this.inGameProcessor = Processor.getInstance()
        this.paintable = this.GAUGE_PAINTABLE
        this.inProgress = true

method startBackground*(this: ProgressCanvas, background: bool) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.START_BACKGROUND)
        this.setBackground(background)
        this.myFontProcessor = this.updateMyFontProcessor
        this.gauge.setLabel(this.backgroundLabel)
        this.setText(this.TEXT)
        this.setValue(0)
        this.inGameProcessor = Processor.getInstance()
        this.paintable = this.GAUGE_PAINTABLE

method endActual*(this: ProgressCanvas) {.base.} =
        this.allbinaryMidlet.commandAction(GameCommandsFactory.getInstance().SHOW_GAME_CANVAS, NullCanvas.NULL_CANVASStatic)
        this.inProgress = false
        this.inGame()

method inGame*(this: ProgressCanvas) {.base.} =
        this.progressEndListener.onEndEvent()
        this.inGameProcessor = this.IN_GAME_PROCESSOR

method `end`*(this: ProgressCanvas) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.END_METHOD_NAME)
        this.gauge.setValue(this.getMaxValue())
        this.endActual()
        this.paintable = NullPaintable.getInstance()

method endFromInitialLazyLoadingComplete*(this: ProgressCanvas) {.base.} =
        this.progressEndListener.onEndEvent()
        this.gauge.setValue(this.getMaxValue())
        this.inGameProcessor = this.IN_GAME_PROCESSOR

method isInGame*(this: ProgressCanvas): bool {.base, discardable.} =
        if this.inGameProcessor == this.IN_GAME_PROCESSOR:
            return true
        return false

method endIfPaintedSinceStart*(this: ProgressCanvas) {.base.} =
        discard

method addEarlyPortion*(this: ProgressCanvas, value: int32, text: string, index: int32) {.base.} =
        this.setText(newStringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString())
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / float32(value))

method addPortion*(this: ProgressCanvas, value: int32, text: string, index: int32) {.base.} =
        this.setText(newStringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString())
        PreLogUtil.put(this.text, this, this.ADD_PORTION)
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / float32(value))

method addNormalPortion*(this: ProgressCanvas, value: int32, text: string) {.base.} =
        if this.text != text:
            PreLogUtil.put(text, this, this.ADD_PORTION)
        this.setText(text)
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / float32(value))

method setValue*(this: ProgressCanvas, value: int32) {.base.} =
        this.value = float32(value)
        this.gauge.setValue(float32(value))

method paint*(this: ProgressCanvas, graphics: Graphics) =
        this.paintable.paint(graphics)

method paint2*(this: ProgressCanvas, graphics: Graphics) {.base.} =
        this.myFontProcessor.process(graphics)
        graphics.setColor(this.backgroundBasicColor.intValue())
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight())
        this.gauge.paintXY(graphics, 0, 0)
        this.hasPainted = true

method paintThreed*(this: ProgressCanvas, graphics: Graphics) =
        discard

method getValue*(this: ProgressCanvas): float32 {.base, discardable.} =
        return this.value

method setText*(this: ProgressCanvas, text: string) {.base.} =
        this.text = text

method getText*(this: ProgressCanvas): string {.base, discardable.} =
        return this.text

method setBackground*(this: ProgressCanvas, background: bool) {.base.} =
        this.background = background

method isBackground*(this: ProgressCanvas): bool {.base, discardable.} =
        return this.background

when declared(newProgressCanvasHook3):
    newProgressCanvasHook3 = proc (title: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): RunnableCanvas = newProgressCanvas(title, backgroundBasicColor, foregroundBasicColor)

