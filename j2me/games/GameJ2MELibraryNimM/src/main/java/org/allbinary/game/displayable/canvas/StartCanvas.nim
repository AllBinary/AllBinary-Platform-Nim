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
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/special/SpecialAnimation as SpecialAnimationModule
export SpecialAnimationModule
import org/allbinary/business/advertisement/GameAdStateFactory as GameAdStateFactoryModule
export GameAdStateFactoryModule
import org/allbinary/canvas/BaseGameStatistics as BaseGameStatisticsModule
export BaseGameStatisticsModule
import org/allbinary/canvas/FullScreenUtil as FullScreenUtilModule
export FullScreenUtilModule
import org/allbinary/canvas/RunnableCanvas as RunnableCanvasModule
export RunnableCanvasModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/init/BasicBuildGameInitializerFactory as BasicBuildGameInitializerFactoryModule
export BasicBuildGameInitializerFactoryModule
import org/allbinary/game/input/GameInputStrings as GameInputStringsModule
export GameInputStringsModule
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/score/HighScoresFactoryInterface as HighScoresFactoryInterfaceModule
export HighScoresFactoryInterfaceModule
import org/allbinary/game/score/HighScoresHelper as HighScoresHelperModule
export HighScoresHelperModule
import org/allbinary/game/score/HighScoresPaintable as HighScoresPaintableModule
export HighScoresPaintableModule
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule
import org/allbinary/game/state/GameStateFactory as GameStateFactoryModule
export GameStateFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/displayable/command/MyCommandsFactory as MyCommandsFactoryModule
export MyCommandsFactoryModule
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule
import org/allbinary/graphics/displayable/event/DisplayChangeEventListener as DisplayChangeEventListenerModule
export DisplayChangeEventListenerModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/graphics/paint/InitUpdatePaintable as InitUpdatePaintableModule
export InitUpdatePaintableModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/graphics/paint/StatePaintable as StatePaintableModule
export StatePaintableModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface as GameCanvasRunnableInterfaceModule
export GameCanvasRunnableInterfaceModule
import org/allbinary/game/displayable/canvas/MenuListener as MenuListenerModule
export MenuListenerModule
import org/allbinary/game/displayable/canvas/FormUtil as FormUtilModule
export FormUtilModule
import org/allbinary/game/displayable/canvas/BasicMenuInputProcessor as BasicMenuInputProcessorModule
export BasicMenuInputProcessorModule
import org/allbinary/game/displayable/canvas/GameRunnable as GameRunnableModule
export GameRunnableModule

type
    StartCanvas* = ref object of RunnableCanvas
        basicColorFactory*: BasicColorFactory
        features*: Features
        openGLFeatureFactory*: OpenGLFeatureFactory
        myCommandsFactory*: MyCommandsFactory
        gameAdStateFactory*: GameAdStateFactory
        gameStateFactory*: GameStateFactory
        gameInputStrings*: GameInputStrings
        formUtil*: FormUtil
        basicGameDemoPaintable*: StatePaintable
        specialAnimationInterface*: SpecialAnimation
        paintedSpecialAnimationInterface*: Animation
        fullScreenUtil*: FullScreenUtil
        highScoresHelper*: HighScoresHelper
        realHighScoresPaintable*: HighScoresPaintable
        highScoresPaintable*: Paintable
        state*: int32
        timeDelayHelper*: TimeDelayHelper
        highScoresFactoryInterface*: HighScoresFactoryInterface
        menuInputProcessor*: BasicMenuInputProcessor
        menuForm*: ScrollSelectionForm
        gameInitializationInterfaceFactoryInterface*: BasicBuildGameInitializerFactory
        initialized*: bool
        defaultPaintableInterface*: Paintable
        paintableInterface*: PaintableInterface
        overlayPaintable*: InitUpdatePaintable
        tempWait*: int32
        inputToGameKeyMapping*: InputToGameKeyMapping
        gameRunnable*: GameRunnable
        progressPaintable*: PaintableInterface
        isSingleKeyRepeatableProcessing*: bool
        NONE*: GameKey
        gameKeyEventFactory*: GameKeyEventFactory
        SET_STATE*: string
        baseGameStatistics*: BaseGameStatistics

converter jAsGameCanvasRunnableInterface*(value: StartCanvas): GameCanvasRunnableInterface = cast[GameCanvasRunnableInterface](value)
converter jAsMenuListener*(value: StartCanvas): MenuListener = cast[MenuListener](value)
converter jAsDisplayChangeEventListener*(value: StartCanvas): DisplayChangeEventListener = cast[DisplayChangeEventListener](value)
proc newStartCanvas*(abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool): StartCanvas
proc initStartCanvas*(this: StartCanvas, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool)
method onEvent*(this: StartCanvas, eventObject: AllBinaryEventObject)
method onDisplayChangeEvent*(this: StartCanvas, displayChangeEvent: DisplayChangeEvent)
method getCustomCommands*(this: StartCanvas): JArray[JObject] {.base, discardable.}
method initCommands*(this: StartCanvas, cmdListener: CommandListener)
method initPostPaint*(this: StartCanvas) {.base.}
method mediaInit*(this: StartCanvas) {.base.}
method itemStateChanged*(this: StartCanvas, item: Item)
method initMenu*(this: StartCanvas) {.base.}
method open*(this: StartCanvas)
method close*(this: StartCanvas)
method getSourceId*(this: StartCanvas): int32 {.discardable.}
method keyPressed*(this: StartCanvas, keyCode: int32)
method keyReleased*(this: StartCanvas, keyCode: int32)
method keyRepeated*(this: StartCanvas, keyCode: int32)
method keyPressedByDevice*(this: StartCanvas, keyCode: int32, deviceId: int32)
method keyReleasedByDevice*(this: StartCanvas, keyCode: int32, deviceId: int32)
method keyRepeatedByDevice*(this: StartCanvas, keyCode: int32, deviceId: int32)
method addGameKeyEvent*(this: StartCanvas, keyCode: int32, repeated: bool) {.base.}
method removeGameKeyEvent*(this: StartCanvas, keyCode: int32, repeated: bool) {.base.}
method pause*(this: StartCanvas)
method unPause*(this: StartCanvas)
method isPausable*(this: StartCanvas): bool {.discardable.}
method isGameOver*(this: StartCanvas): bool {.discardable.}
method setLoadStateHashtable*(this: StartCanvas, hashtable: ABHashtable)
method getLoadStateHashtable*(this: StartCanvas): ABHashtable {.discardable.}
method getCurrentStateHashtable*(this: StartCanvas): ABHashtable {.discardable.}
method setHighScoreSubmitted*(this: StartCanvas, isNotUsed: bool)
method paint*(this: StartCanvas, graphics: Graphics)
method paintThreed*(this: StartCanvas, graphics: Graphics)
method processGameOver*(this: StartCanvas)
method demoStateChange*(this: StartCanvas) {.base.}
method updateDemoState*(this: StartCanvas) {.base.}
method getNextRandom*(this: StartCanvas): int32 {.base, discardable.}
method createGameLayerManager*(this: StartCanvas, randomValue: int32): AllBinaryGameLayerManager {.base, discardable.}
method createRunnable*(this: StartCanvas, randomLevel: int32): GameCanvasRunnableInterface {.base, discardable.}
method createCanvas*(this: StartCanvas) {.base.}
method start*(this: StartCanvas) {.base.}
method preDemoProcess*(this: StartCanvas) {.base.}
method process*(this: StartCanvas)
method startDemoGame*(this: StartCanvas) {.base.}
method processGame*(this: StartCanvas) {.base.}
method run*(this: StartCanvas)
method setRunning*(this: StartCanvas, running: bool)
method `end`*(this: StartCanvas) {.base.}
method setGameState*(this: StartCanvas, gameState: GameState)
method getGameState*(this: StartCanvas): GameState {.discardable.}
method getState*(this: StartCanvas): int32 {.base, discardable.}
method setState*(this: StartCanvas, state: int32) {.base.}
method isHighScoreSubmitted*(this: StartCanvas): bool {.discardable.}
method getRealHighScoresPaintable*(this: StartCanvas): HighScoresPaintable {.base, discardable.}
method setSpecialAnimationInterface*(this: StartCanvas, specialAnimationInterface: SpecialAnimation) {.base.}
method getSpecialAnimationInterface*(this: StartCanvas): SpecialAnimation {.base, discardable.}
method setPaintableInterface*(this: StartCanvas, paintableInterface: PaintableInterface) {.base.}
method getPaintableInterface*(this: StartCanvas): PaintableInterface {.base, discardable.}
method setDefaultPaintableInterface*(this: StartCanvas, defaultPaintableInterface: Paintable) {.base.}
method getDefaultPaintableInterface*(this: StartCanvas): Paintable {.base, discardable.}
method getHighScoresFactoryInterface*(this: StartCanvas): HighScoresFactoryInterface {.base, discardable.}
method setMenuInputProcessor*(this: StartCanvas, menuInputProcessor: BasicMenuInputProcessor) {.base.}
method getMenuInputProcessor*(this: StartCanvas): BasicMenuInputProcessor {.base, discardable.}
method getMenuForm*(this: StartCanvas): ScrollSelectionForm {.base, discardable.}
method setMenuForm*(this: StartCanvas, menuForm: ScrollSelectionForm) {.base.}
method isInitialized*(this: StartCanvas): bool {.discardable.}
method getOverlayPaintable*(this: StartCanvas): Paintable {.base, discardable.}
method setBasicGameDemoPaintable*(this: StartCanvas, basicGameDemoPaintable: StatePaintable) {.base.}
method getBasicGameDemoPaintable*(this: StartCanvas): StatePaintable {.base, discardable.}
method setTempWait*(this: StartCanvas, tempWait: int32) {.base.}
method getTempWait*(this: StartCanvas): int32 {.base, discardable.}
method isSingleThread*(this: StartCanvas): bool {.discardable.}
method isRunningInAnotherThread*(this: StartCanvas): bool {.base, discardable.}
method getGameInitializationInterfaceFactoryInterface*(this: StartCanvas): BasicBuildGameInitializerFactory {.base, discardable.}
method getTitle*(this: StartCanvas): string {.discardable.}
method isPaused*(this: StartCanvas): bool {.discardable.}
method getType*(this: StartCanvas): int32 {.discardable.}
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/animation/IndexedAnimationBehavior as IndexedAnimationBehaviorModule
export IndexedAnimationBehaviorModule
import org/allbinary/canvas/CustomGameMenuUtil as CustomGameMenuUtilModule
export CustomGameMenuUtilModule
import org/allbinary/canvas/GameStatisticsFactory as GameStatisticsFactoryModule
export GameStatisticsFactoryModule
import org/allbinary/game/GameAdState as GameAdStateModule
export GameAdStateModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/event/ChangedGameFeatureListener as ChangedGameFeatureListenerModule
export ChangedGameFeatureListenerModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/game/configuration/feature/InputFeatureFactory as InputFeatureFactoryModule
export InputFeatureFactoryModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule
import org/allbinary/game/init/GameInitializationUtil as GameInitializationUtilModule
export GameInitializationUtilModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/game/input/event/DownGameKeyEventHandler as DownGameKeyEventHandlerModule
export DownGameKeyEventHandlerModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/GameKeyEventHandler as GameKeyEventHandlerModule
export GameKeyEventHandlerModule
import org/allbinary/game/input/event/UpGameKeyEventHandler as UpGameKeyEventHandlerModule
export UpGameKeyEventHandlerModule
import org/allbinary/game/layer/SWTUtil as SWTUtilModule
export SWTUtilModule
import org/allbinary/game/midlet/DemoGameMidlet as DemoGameMidletModule
export DemoGameMidletModule
import org/allbinary/game/score/HighScoreCommands as HighScoreCommandsModule
export HighScoreCommandsModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule
import org/allbinary/game/score/NullHighScoresSingletonFactory as NullHighScoresSingletonFactoryModule
export NullHighScoresSingletonFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/ResizableListenerHandler as ResizableListenerHandlerModule
export ResizableListenerHandlerModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/graphics/displayable/event/DisplayChangeEventHandler as DisplayChangeEventHandlerModule
export DisplayChangeEventHandlerModule
import org/allbinary/graphics/form/FormType as FormTypeModule
export FormTypeModule
import org/allbinary/graphics/form/FormTypeFactory as FormTypeFactoryModule
export FormTypeFactoryModule
import org/allbinary/graphics/opengles/CurrentDisplayableFactory as CurrentDisplayableFactoryModule
export CurrentDisplayableFactoryModule
import org/allbinary/graphics/opengles/OpenGLFeatureUtil as OpenGLFeatureUtilModule
export OpenGLFeatureUtilModule
import org/allbinary/graphics/opengles/OpenGLThreadUtil as OpenGLThreadUtilModule
export OpenGLThreadUtilModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/graphics/paint/StatePaintableFactory as StatePaintableFactoryModule
export StatePaintableFactoryModule
import org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler as BasicMotionGesturesHandlerModule
export BasicMotionGesturesHandlerModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/system/os/OperatingSystemFactory as OperatingSystemFactoryModule
export OperatingSystemFactoryModule
import org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory as InApplicationPurchaseFactoryModule
export InApplicationPurchaseFactoryModule
import org/allbinary/logic/system/security/licensing/LockableFeature as LockableFeatureModule
export LockableFeatureModule
import org/allbinary/logic/system/security/licensing/LockableFeatureFactory as LockableFeatureFactoryModule
export LockableFeatureFactoryModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/media/audio/AllBinaryMediaManager as AllBinaryMediaManagerModule
export AllBinaryMediaManagerModule
import org/allbinary/media/audio/EarlySoundsFactory as EarlySoundsFactoryModule
export EarlySoundsFactoryModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/displayable/canvas/NoMenuInputProcessor as NoMenuInputProcessorModule
export NoMenuInputProcessorModule
import org/allbinary/game/displayable/canvas/NullWaitGameRunnable as NullWaitGameRunnableModule
export NullWaitGameRunnableModule
import org/allbinary/game/displayable/canvas/GameInputMappingCanvas as GameInputMappingCanvasModule
export GameInputMappingCanvasModule

var StartCanvas_idValue: int32
var StartCanvas_idSet = false
proc id*(t: typedesc[StartCanvas]): int32 =
    if not StartCanvas_idSet:
        StartCanvas_idSet = true
        StartCanvas_idValue = 0
    StartCanvas_idValue
var StartCanvas_BOT_GAME_STATSValue: string
var StartCanvas_BOT_GAME_STATSSet = false
proc BOT_GAME_STATS*(t: typedesc[StartCanvas]): string =
    if not StartCanvas_BOT_GAME_STATSSet:
        StartCanvas_BOT_GAME_STATSSet = true
        StartCanvas_BOT_GAME_STATSValue = "Bot Game Statistics: "
    StartCanvas_BOT_GAME_STATSValue

# Java field initializers run after the base initializer
proc initFieldsStartCanvas(this: StartCanvas) =
    this.basicColorFactory = BasicColorFactory.getInstance()
    this.features = Features.getInstance()
    this.openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
    this.myCommandsFactory = MyCommandsFactory.getInstance()
    this.gameAdStateFactory = GameAdStateFactory.getInstance()
    this.gameStateFactory = GameStateFactory.getInstance()
    this.gameInputStrings = GameInputStrings.getInstance()
    this.formUtil = FormUtil.getInstance()
    this.basicGameDemoPaintable = StatePaintableFactory.getInstance()
    this.specialAnimationInterface = SpecialAnimation.getInstance()
    this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
    this.fullScreenUtil = FullScreenUtil.getInstance()
    this.highScoresHelper = newHighScoresHelper()
    this.realHighScoresPaintable = newHighScoresPaintable()
    this.highScoresPaintable = NullPaintable.getInstance()
    this.state = 0
    this.timeDelayHelper = newTimeDelayHelper(6000)
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance()
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
    
    this.initialized = false
    this.defaultPaintableInterface = NullPaintable.getInstance()
    this.paintableInterface = NullPaintable.getInstance()
    
    this.tempWait = NullWaitGameRunnable.getInstance().WAIT
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
    this.gameRunnable = NullWaitGameRunnable.getInstance()
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance()
    this.isSingleKeyRepeatableProcessing = this.features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
    this.NONE = GameKeyFactory.getInstance().NONE
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    this.SET_STATE = "setState"
    this.baseGameStatistics = GameStatisticsFactory.getInstance()
    discard

proc initStartCanvas*(this: StartCanvas, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool) =
        initRunnableCanvas(this, commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true)
        this.initFieldsStartCanvas()
        this.setWait(NullWaitGameRunnable.getInstance().WAIT)
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        GameInitializationUtil.getInstance().initDemo(abeClientInformation, this, gameInitializationInterfaceFactoryInterface)
        ResizableListenerHandler.getInstance().fireEvent(false)
        this.overlayPaintable = overlayPaintable
        this.highScoresFactoryInterface = highScoresFactoryInterface
        this.setDefaultPaintableInterface(paintable)
        this.setPaintableInterface(this.getDefaultPaintableInterface())
        if isContinue:
            this.addCommand(GameCommandsFactory.getInstance().CONTINUE_COMMAND)
        if ChangedGameFeatureListener.getInstance().isChangedFeature(GameFeatureFactory.getInstance().SOUND):
            this.mediaInit()
        DisplayChangeEventHandler.getInstance().addListenerInterface(this)

proc newStartCanvas*(abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool): StartCanvas =
    result = StartCanvas()
    initStartCanvas(result, abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)

method onEvent*(this: StartCanvas, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onDisplayChangeEvent*(this: StartCanvas, displayChangeEvent: DisplayChangeEvent) =
        try:
            var scrollSelectionForm: ScrollSelectionForm = this.getMenuForm()
            if (not jIsNil(scrollSelectionForm)):
                var formType: FormType = FormTypeFactory.getInstance().getFormType()
                var rectangle: Rectangle = this.formUtil.createFormRectangle()
                scrollSelectionForm.init(rectangle, formType)
            this.overlayPaintable.init()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)

method getCustomCommands*(this: StartCanvas): JArray[JObject] {.base, discardable.} =
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        if J2MEUtil.isHTML():
            let commandArray: JArray[JObject] = newJArrayFromRefs[JObject](gameCommandsFactory.START_COMMAND, HighScoreCommands.getInstance().DISPLAY, GameInputMappingCanvas.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT)
            return commandArray
        else:
            let commandList: BasicArrayList = newBasicArrayListD()
            commandList.add(gameCommandsFactory.START_COMMAND)
            let inApplicationPurchaseFactory: InApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance()
            if inApplicationPurchaseFactory.isEnabled():
                let list: BasicArrayList = LockableFeatureFactory.getInstance().getList()
                if list.size() > 0 and (not inApplicationPurchaseFactory.isPurchased(LockableFeature(JObject(list.get(0))))):
                    commandList.add(gameCommandsFactory.BUY_COMMAND)
            commandList.add(HighScoreCommands.getInstance().DISPLAY)
            try:
                let isOverScan: bool = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
                if SWTUtil.isSWT:
                    commandList.add(GameInputMappingCanvas.DISPLAY)
                elif (not isOverScan):
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS)
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM)
                    commandList.add(GameInputMappingCanvas.DISPLAY)
            except CatchableError as jcaught:
                discard
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT)
            let commandArray: JArray[JObject] = commandList.toArray()
            return commandArray

method initCommands*(this: StartCanvas, cmdListener: CommandListener) =
        this.removeAllCommands()
        let commandArray: JArray[JObject] = this.getCustomCommands()
        let size: int32 = commandArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.addCommand(Command(JObject(commandArray[index])))
        CustomGameMenuUtil.add(this)
        this.setCommandListener(cmdListener)

method initPostPaint*(this: StartCanvas) {.base.} =
        discard

method mediaInit*(this: StartCanvas) {.base.} =
        AllBinaryMediaManager.init(EarlySoundsFactory.getInstance())

method itemStateChanged*(this: StartCanvas, item: Item) =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

method initMenu*(this: StartCanvas) {.base.} =
        this.close()
        this.open()

method open*(this: StartCanvas) =
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor())

method close*(this: StartCanvas) =
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor())

method getSourceId*(this: StartCanvas): int32 {.discardable.} =
        return StartCanvas.id

method keyPressed*(this: StartCanvas, keyCode: int32) =
        this.keyPressedByDevice(keyCode, 0)

method keyReleased*(this: StartCanvas, keyCode: int32) =
        this.keyReleasedByDevice(keyCode, 0)

method keyRepeated*(this: StartCanvas, keyCode: int32) =
        this.keyRepeatedByDevice(keyCode, 0)

method keyPressedByDevice*(this: StartCanvas, keyCode: int32, deviceId: int32) =
        this.addGameKeyEvent(keyCode, false)

method keyReleasedByDevice*(this: StartCanvas, keyCode: int32, deviceId: int32) =
        this.removeGameKeyEvent(keyCode, false)

method keyRepeatedByDevice*(this: StartCanvas, keyCode: int32, deviceId: int32) =
        if this.isSingleKeyRepeatableProcessing:
            this.addGameKeyEvent(keyCode, true)

method addGameKeyEvent*(this: StartCanvas, keyCode: int32, repeated: bool) {.base.} =
        try:
            var gameKey: GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if gameKey != this.NONE:
                var gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey)
                DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            else:
                this.logUtil.putF(newStringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)

method removeGameKeyEvent*(this: StartCanvas, keyCode: int32, repeated: bool) {.base.} =
        try:
            var gameKey: GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if gameKey != this.NONE:
                var gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey)
                UpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            else:
                this.logUtil.putF(newStringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e)

method pause*(this: StartCanvas) =
        this.close()
        this.setPaused(true)

method unPause*(this: StartCanvas) =
        this.open()
        this.setPaused(false)

method isPausable*(this: StartCanvas): bool {.discardable.} =
        if CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance():
            return true
        else:
            return false

method isGameOver*(this: StartCanvas): bool {.discardable.} =
        this.logUtil.putF(newStringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(" since not a game").toString(), this, "isGameOver")
        return false

method setLoadStateHashtable*(this: StartCanvas, hashtable: ABHashtable) =
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable")

method getLoadStateHashtable*(this: StartCanvas): ABHashtable {.discardable.} =
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable")
        return this.stdUtil.NULL_TABLE

method getCurrentStateHashtable*(this: StartCanvas): ABHashtable {.discardable.} =
        this.logUtil.putF("Trying to save the AI lol", this, "getCurrentStateHashtable")
        return this.stdUtil.NULL_TABLE

method setHighScoreSubmitted*(this: StartCanvas, isNotUsed: bool) =
        discard

method paint*(this: StartCanvas, graphics: Graphics) =
        this.paintableInterface.paint(graphics)
        this.paintedSpecialAnimationInterface.paintXY(graphics, 0, 0)
        this.highScoresPaintable.paint(graphics)
        this.getBasicGameDemoPaintable().paint(graphics)
        this.overlayPaintable.paint(graphics)
        this.progressPaintable.paint(graphics)

method paintThreed*(this: StartCanvas, graphics: Graphics) =
        this.paintableInterface.paintThreed(graphics)
        this.paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0)

method processGameOver*(this: StartCanvas) =
        this.logUtil.putF("Not Implemented since not a game", this, "setGameOver")

method demoStateChange*(this: StartCanvas) {.base.} =
        var newState: int32 = this.state +% 1
        if newState > 2:
            newState = 0
        elif newState == 2:
            if (not this.highScoresHelper.isAnyHighScores()):
                newState = 0
            else:
                let highScores: HighScores = this.highScoresHelper.getNextHighScores()
                if highScores == NullHighScoresSingletonFactory.getInstance():
                    newState = 0
                else:
                    this.getRealHighScoresPaintable().setHighScores(highScores)
        this.setState(newState)
        this.updateDemoState()

method updateDemoState*(this: StartCanvas) {.base.} =
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().createInstance(this.state).toString(), this, this.SET_STATE)
        this.getBasicGameDemoPaintable().setState(this.state)
        if this.state == 0:
            this.highScoresPaintable = NullPaintable.getInstance()
            this.paintedSpecialAnimationInterface = this.getSpecialAnimationInterface()
            this.getSpecialAnimationInterface().reset()
        elif this.state == 1:
            this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        elif this.state == 2:
            this.highScoresPaintable = this.getRealHighScoresPaintable()
        var gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
        gameAdState.processPageAdState()

method getNextRandom*(this: StartCanvas): int32 {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method createGameLayerManager*(this: StartCanvas, randomValue: int32): AllBinaryGameLayerManager {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method createRunnable*(this: StartCanvas, randomLevel: int32): GameCanvasRunnableInterface {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method createCanvas*(this: StartCanvas) {.base.} =
        this.highScoresPaintable = NullPaintable.getInstance()
        var randomLevel: int32 = this.getNextRandom()

method start*(this: StartCanvas) {.base.} =
        discard

method preDemoProcess*(this: StartCanvas) {.base.} =
        this.overlayPaintable.update()

method process*(this: StartCanvas) =
        this.getMenuInputProcessor().processInputList()
        this.preDemoProcess()
        if this.state == 0:
            let indexedAnimationBehavior: IndexedAnimationBehavior = IndexedAnimationBehavior(JObject(this.getSpecialAnimationInterface().getAnimationBehavior()))
            if indexedAnimationBehavior.loopIndex < 1:
                this.timeDelayHelper.setStartTimeTNT()
            var demoGameMidlet: DemoGameMidlet = DemoGameMidlet(JObject(this.getCustomCommandListener()))

method startDemoGame*(this: StartCanvas) {.base.} =
        discard

method processGame*(this: StartCanvas) {.base.} =
        this.gameRunnable.run()
        this.specialAnimationInterface.nextFrame()
        this.process()

method run*(this: StartCanvas) =
        this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
        try:
            let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Demo Thread")
            this.setCurrentThread()
            this.setRunning(true)
            if this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND):
                progressCanvas.`end`()
            else:
                progressCanvas.addNormalPortion(50, "Demo Thread Running")
            this.fullScreenUtil.initOnRun(this, this.getCustomCommandListener())
            this.initMenu()
            this.initPostPaint()
            this.updateDemoState()
            if this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD):
                OpenGLThreadUtil.getInstance().onResume()
            if this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) or J2MEUtil.isHTML():
                discard
            else:
                while this.isRunning():
                    this.loopTimeHelper.setStartTimeTNT()
                    this.processGame()
                    this.processLoopSleep()
                this.`end`()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)

method setRunning*(this: StartCanvas, running: bool) =
        procCall RunnableCanvas(this).setRunning(running)
        try:
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL) or J2MEUtil.isHTML()) and (not running):
                let currentDisplayableFactory: CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.clearRunnable()
                this.`end`()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e)

method `end`*(this: StartCanvas) {.base.} =
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        this.baseGameStatistics.add(newStringMaker().append(StartCanvas.BOT_GAME_STATS).append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString())
        this.baseGameStatistics.init()
        if this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND):
            progressCanvas.start()
        this.logUtil.putF("Demo End", this, this.commonStrings.RUN)
        this.close()
        DisplayChangeEventHandler.getInstance().removeListener(this)

method setGameState*(this: StartCanvas, gameState: GameState) =
        discard

method getGameState*(this: StartCanvas): GameState {.discardable.} =
        return this.gameStateFactory.PLAYING_GAME_STATE

method getState*(this: StartCanvas): int32 {.base, discardable.} =
        return this.state

method setState*(this: StartCanvas, state: int32) {.base.} =
        this.state = state

method isHighScoreSubmitted*(this: StartCanvas): bool {.discardable.} =
        this.logUtil.putF("Wow the AI got a high score!", this, "isHighScoreSubmitted")
        return false

method getRealHighScoresPaintable*(this: StartCanvas): HighScoresPaintable {.base, discardable.} =
        return this.realHighScoresPaintable

method setSpecialAnimationInterface*(this: StartCanvas, specialAnimationInterface: SpecialAnimation) {.base.} =
        specialAnimationInterface.setFrame(0)
        this.specialAnimationInterface = specialAnimationInterface

method getSpecialAnimationInterface*(this: StartCanvas): SpecialAnimation {.base, discardable.} =
        return this.specialAnimationInterface

method setPaintableInterface*(this: StartCanvas, paintableInterface: PaintableInterface) {.base.} =
        this.paintableInterface = paintableInterface

method getPaintableInterface*(this: StartCanvas): PaintableInterface {.base, discardable.} =
        return this.paintableInterface

method setDefaultPaintableInterface*(this: StartCanvas, defaultPaintableInterface: Paintable) {.base.} =
        this.defaultPaintableInterface = defaultPaintableInterface

method getDefaultPaintableInterface*(this: StartCanvas): Paintable {.base, discardable.} =
        return this.defaultPaintableInterface

method getHighScoresFactoryInterface*(this: StartCanvas): HighScoresFactoryInterface {.base, discardable.} =
        return this.highScoresFactoryInterface

method setMenuInputProcessor*(this: StartCanvas, menuInputProcessor: BasicMenuInputProcessor) {.base.} =
        this.menuInputProcessor = menuInputProcessor

method getMenuInputProcessor*(this: StartCanvas): BasicMenuInputProcessor {.base, discardable.} =
        return this.menuInputProcessor

method getMenuForm*(this: StartCanvas): ScrollSelectionForm {.base, discardable.} =
        return this.menuForm

method setMenuForm*(this: StartCanvas, menuForm: ScrollSelectionForm) {.base.} =
        this.menuForm = menuForm

method isInitialized*(this: StartCanvas): bool {.discardable.} =
        return this.initialized

method getOverlayPaintable*(this: StartCanvas): Paintable {.base, discardable.} =
        return this.overlayPaintable

method setBasicGameDemoPaintable*(this: StartCanvas, basicGameDemoPaintable: StatePaintable) {.base.} =
        this.basicGameDemoPaintable = basicGameDemoPaintable

method getBasicGameDemoPaintable*(this: StartCanvas): StatePaintable {.base, discardable.} =
        return this.basicGameDemoPaintable

method setTempWait*(this: StartCanvas, tempWait: int32) {.base.} =
        this.tempWait = tempWait

method getTempWait*(this: StartCanvas): int32 {.base, discardable.} =
        return this.tempWait

method isSingleThread*(this: StartCanvas): bool {.discardable.} =
        return OpenGLFeatureUtil.getInstance().isAnyThreed() or SWTUtil.isSWT

method isRunningInAnotherThread*(this: StartCanvas): bool {.base, discardable.} =
        let features: Features = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD):
            return true
        else:
            return this.isRunning()

method getGameInitializationInterfaceFactoryInterface*(this: StartCanvas): BasicBuildGameInitializerFactory {.base, discardable.} =
        return this.gameInitializationInterfaceFactoryInterface

method getTitle*(this: StartCanvas): string {.discardable.} =
        return procCall RunnableCanvas(this).getTitle()

method isPaused*(this: StartCanvas): bool {.discardable.} =
        return procCall RunnableCanvas(this).isPaused()

method getType*(this: StartCanvas): int32 {.discardable.} =
        return procCall RunnableCanvas(this).getType()

when declared(newStartCanvasHook7):
    newStartCanvasHook7 = proc (abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool): RunnableCanvas = newStartCanvas(abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)

