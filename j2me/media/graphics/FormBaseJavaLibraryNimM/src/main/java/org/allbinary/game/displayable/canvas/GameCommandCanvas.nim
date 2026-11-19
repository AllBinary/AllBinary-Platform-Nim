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
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/game/displayable/RepaintBehavior as RepaintBehaviorModule
export RepaintBehaviorModule
import org/allbinary/game/input/GameInputStrings as GameInputStringsModule
export GameInputStringsModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/event/DownGameKeyEventHandler as DownGameKeyEventHandlerModule
export DownGameKeyEventHandlerModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/game/input/event/UpGameKeyEventHandler as UpGameKeyEventHandlerModule
export UpGameKeyEventHandlerModule
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule
import org/allbinary/graphics/displayable/event/DisplayChangeEventListener as DisplayChangeEventListenerModule
export DisplayChangeEventListenerModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/form/PaintableForm as PaintableFormModule
export PaintableFormModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/game/displayable/canvas/MenuListener as MenuListenerModule
export MenuListenerModule
import org/allbinary/game/displayable/canvas/BasicMenuInputProcessor as BasicMenuInputProcessorModule
export BasicMenuInputProcessorModule

type
    GameCommandCanvas* = ref object of MyCanvas
        repaintProcessor*: Processor
        gameInputStrings*: GameInputStrings
        foregroundBasicColor*: BasicColor
        backgroundBasicColor*: BasicColor
        inputToGameKeyMapping*: InputToGameKeyMapping
        gameKeyFactory*: GameKeyFactory
        gameKeyEventFactory*: GameKeyEventFactory
        downGameKeyEventHandler*: DownGameKeyEventHandler
        upGameKeyEventHandler*: UpGameKeyEventHandler
        repaintBehavior*: RepaintBehavior
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        foregroundColor*: int32
        backgroundColor*: int32
        menuInputProcessor*: BasicMenuInputProcessor
        menuPaintable*: Paintable
        menuForm*: PaintableForm
        isSingleKeyRepeatableProcessing*: bool
        fontHeight*: int32

converter jAsMenuListener*(value: GameCommandCanvas): MenuListener = cast[MenuListener](value)
converter jAsGameKeyEventSourceInterface*(value: GameCommandCanvas): GameKeyEventSourceInterface = cast[GameKeyEventSourceInterface](value)
converter jAsDisplayChangeEventListener*(value: GameCommandCanvas): DisplayChangeEventListener = cast[DisplayChangeEventListener](value)
converter jAsEventListenerInterface*(value: GameCommandCanvas): EventListenerInterface = cast[EventListenerInterface](value)
converter jAsUpdateMyFontInterface*(value: GameCommandCanvas): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newGameCommandCanvas*(cmdListener: CommandListener, name: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): GameCommandCanvas
proc initGameCommandCanvas*(this: GameCommandCanvas, cmdListener: CommandListener, name: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method updateMeasurement*(this: GameCommandCanvas, graphics: Graphics)
method onEvent*(this: GameCommandCanvas, eventObject: AllBinaryEventObject)
method onDisplayChangeEvent*(this: GameCommandCanvas, displayChangeEvent: DisplayChangeEvent)
method initCommands*(this: GameCommandCanvas, cmdListener: CommandListener) {.base.}
method initMenu*(this: GameCommandCanvas) {.base.}
method createForm*(this: GameCommandCanvas): ScrollSelectionForm {.base, discardable.}
method createRectangle*(this: GameCommandCanvas, size: int32): Rectangle {.base, discardable.}
method open*(this: GameCommandCanvas)
method close*(this: GameCommandCanvas)
method update*(this: GameCommandCanvas) {.base.}
method getSourceId*(this: GameCommandCanvas): int32 {.discardable.}
method keyPressed*(this: GameCommandCanvas, keyCode: int32)
method keyReleased*(this: GameCommandCanvas, keyCode: int32)
method keyRepeated*(this: GameCommandCanvas, keyCode: int32)
method keyPressedByDevice*(this: GameCommandCanvas, keyCode: int32, deviceId: int32)
method keyReleasedByDevice*(this: GameCommandCanvas, keyCode: int32, deviceId: int32)
method keyRepeatedByDevice*(this: GameCommandCanvas, keyCode: int32, deviceId: int32)
method addGameKeyEvent*(this: GameCommandCanvas, keyCode: int32, deviceId: int32, repeated: bool) {.base.}
method removeGameKeyEvent*(this: GameCommandCanvas, keyCode: int32, deviceId: int32, repeated: bool) {.base.}
method paint*(this: GameCommandCanvas, graphics: Graphics)
method setMenuInputProcessor*(this: GameCommandCanvas, menuInputProcessor: BasicMenuInputProcessor) {.base.}
method getMenuInputProcessor*(this: GameCommandCanvas): BasicMenuInputProcessor {.base, discardable.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/NullCommandListener as NullCommandListenerModule
export NullCommandListenerModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/InputFeatureFactory as InputFeatureFactoryModule
export InputFeatureFactoryModule
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/GameKeyEventHandler as GameKeyEventHandlerModule
export GameKeyEventHandlerModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/displayable/event/DisplayChangeEventHandler as DisplayChangeEventHandlerModule
export DisplayChangeEventHandlerModule
import org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory as ScreenRepaintProcessorFactoryModule
export ScreenRepaintProcessorFactoryModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/graphics/form/CommandCurrentSelectionFormFactory as CommandCurrentSelectionFormFactoryModule
export CommandCurrentSelectionFormFactoryModule
import org/allbinary/graphics/form/FormPaintable as FormPaintableModule
export FormPaintableModule
import org/allbinary/graphics/form/FormTypeFactory as FormTypeFactoryModule
export FormTypeFactoryModule
import org/allbinary/graphics/form/ScrollSelectionFormNoneFactory as ScrollSelectionFormNoneFactoryModule
export ScrollSelectionFormNoneFactoryModule
import org/allbinary/graphics/form/item/CommandTextItemArrayFactory as CommandTextItemArrayFactoryModule
export CommandTextItemArrayFactoryModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/graphics/form/item/validation/AllCommandsVisitor as AllCommandsVisitorModule
export AllCommandsVisitorModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler as BasicMotionGesturesHandlerModule
export BasicMotionGesturesHandlerModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/displayable/canvas/NoMenuInputProcessor as NoMenuInputProcessorModule
export NoMenuInputProcessorModule
import org/allbinary/game/displayable/canvas/ImmediateCommandFormInputProcessor as ImmediateCommandFormInputProcessorModule
export ImmediateCommandFormInputProcessorModule

var GameCommandCanvas_idValue: int32
var GameCommandCanvas_idSet = false
proc id*(t: typedesc[GameCommandCanvas]): int32 =
    if not GameCommandCanvas_idSet:
        GameCommandCanvas_idSet = true
        GameCommandCanvas_idValue = 0
    GameCommandCanvas_idValue

# Java field initializers run after the base initializer
proc initFieldsGameCommandCanvas(this: GameCommandCanvas) =
    this.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this)
    this.gameInputStrings = GameInputStrings.getInstance()
    
    
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
    this.gameKeyFactory = GameKeyFactory.getInstance()
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance()
    this.menuPaintable = NullPaintable.getInstance()
    this.menuForm = PaintableForm.getNullPaintableForm()
    this.isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
    this.fontHeight = 0
    discard

proc initGameCommandCanvas*(this: GameCommandCanvas, cmdListener: CommandListener, name: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initMyCanvas(this, name, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST)
        this.initFieldsGameCommandCanvas()
        this.repaintBehavior = RepaintBehavior.getInstance()
        this.foregroundBasicColor = foregroundBasicColor
        this.backgroundBasicColor = backgroundBasicColor
        this.foregroundColor = this.foregroundBasicColor.intValue()
        this.backgroundColor = this.backgroundBasicColor.intValue()
        this.initCommands(cmdListener)
        if (not jSame(cmdListener, NullCommandListener.NULL_COMMAND_LISTENERStatic)):
            try:
                this.initMenu()
                this.repaintProcessor.process()
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                raise newJException("RuntimeException", "")

proc newGameCommandCanvas*(cmdListener: CommandListener, name: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): GameCommandCanvas =
    result = GameCommandCanvas()
    initGameCommandCanvas(result, cmdListener, name, backgroundBasicColor, foregroundBasicColor)

method updateMeasurement*(this: GameCommandCanvas, graphics: Graphics) =
        try:
            let font: Font = graphics.getFont()
            this.logUtil.putF(newStringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT)
            this.fontHeight = font.getHeight()
            let rectangle: Rectangle = this.createRectangle(this.menuForm.size())
            this.menuForm.init(rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM)
            this.update()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        this.myFontProcessor = MyFontProcessor.getInstance()

method onEvent*(this: GameCommandCanvas, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onDisplayChangeEvent*(this: GameCommandCanvas, displayChangeEvent: DisplayChangeEvent) =
        this.logUtil.putF(newStringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT)
        this.myFontProcessor = this.updateMyFontProcessor

method initCommands*(this: GameCommandCanvas, cmdListener: CommandListener) {.base.} =
        this.removeAllCommands()
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)

method initMenu*(this: GameCommandCanvas) {.base.} =
        let form: ScrollSelectionForm = this.createForm()
        this.menuForm = form
        if (not jSame(form, ScrollSelectionFormNoneFactory.getInstance())):
            this.setMenuInputProcessor(newImmediateCommandFormInputProcessor(newBasicArrayListD(), -1, this, form))
            this.menuPaintable = newFormPaintable(form)
        this.repaintBehavior.onChangeRepaint(this)

method createForm*(this: GameCommandCanvas): ScrollSelectionForm {.base, discardable.} =
        let items: JArray[ABCustomItem] = newCommandTextItemArrayFactory(newAllCommandsVisitor()).getInstance(this.getCommandStack(), this.backgroundBasicColor, this.foregroundBasicColor)
        let rectangle: Rectangle = this.createRectangle(items.length)
        return CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, false, this.backgroundBasicColor, this.foregroundBasicColor)

method createRectangle*(this: GameCommandCanvas, size: int32): Rectangle {.base, discardable.} =
        let height: int32 = size *% this.fontHeight
        let startY: int32 = (this.displayInfo.getLastHeight() *% 2 div 3) -% height
        let pointFactory: PointFactory = PointFactory.getInstance()
        let rectangle: Rectangle = newRectangle(pointFactory.createXY(30, startY), this.displayInfo.getLastWidth() -% 30, startY)
        return rectangle

method open*(this: GameCommandCanvas) =
        this.logUtil.putF(this.commonStrings.START, this, "open")
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().addListenerInterface(this)

method close*(this: GameCommandCanvas) =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE)
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().removeListener(this)

method update*(this: GameCommandCanvas) {.base.} =
        this.repaintProcessor.process()

method getSourceId*(this: GameCommandCanvas): int32 {.discardable.} =
        return GameCommandCanvas.id

method keyPressed*(this: GameCommandCanvas, keyCode: int32) =
        this.keyPressedByDevice(keyCode, 0)

method keyReleased*(this: GameCommandCanvas, keyCode: int32) =
        this.keyReleasedByDevice(keyCode, 0)

method keyRepeated*(this: GameCommandCanvas, keyCode: int32) =
        this.keyRepeatedByDevice(keyCode, 0)

method keyPressedByDevice*(this: GameCommandCanvas, keyCode: int32, deviceId: int32) =
        this.logUtil.putF(newStringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED)
        this.addGameKeyEvent(keyCode, 0, false)

method keyReleasedByDevice*(this: GameCommandCanvas, keyCode: int32, deviceId: int32) =
        this.removeGameKeyEvent(keyCode, deviceId, false)

method keyRepeatedByDevice*(this: GameCommandCanvas, keyCode: int32, deviceId: int32) =
        if this.isSingleKeyRepeatableProcessing:
            this.addGameKeyEvent(keyCode, deviceId, true)

method addGameKeyEvent*(this: GameCommandCanvas, keyCode: int32, deviceId: int32, repeated: bool) {.base.} =
        try:
            let gameKey: GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if (not jSame(gameKey, this.gameKeyFactory.NONE)):
                let gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey)
                this.downGameKeyEventHandler.fireEvent(gameKeyEvent)
                this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else:
                this.logUtil.putF(newStringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)

method removeGameKeyEvent*(this: GameCommandCanvas, keyCode: int32, deviceId: int32, repeated: bool) {.base.} =
        try:
            let gameKey: GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if (not jSame(gameKey, this.gameKeyFactory.NONE)):
                let gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey)
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else:
                this.logUtil.putF(newStringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e)

method paint*(this: GameCommandCanvas, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        this.menuPaintable.paint(graphics)
        this.repaintBehavior.repaint(this)

method setMenuInputProcessor*(this: GameCommandCanvas, menuInputProcessor: BasicMenuInputProcessor) {.base.} =
        this.menuInputProcessor = menuInputProcessor

method getMenuInputProcessor*(this: GameCommandCanvas): BasicMenuInputProcessor {.base, discardable.} =
        return this.menuInputProcessor

when declared(newGameCommandCanvasHook4):
    newGameCommandCanvasHook4 = proc (cmdListener: CommandListener, name: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): MyCanvas = newGameCommandCanvas(cmdListener, name, backgroundBasicColor, foregroundBasicColor)

