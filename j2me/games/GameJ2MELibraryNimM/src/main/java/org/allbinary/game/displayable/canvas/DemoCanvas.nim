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
import java/lang/Thread as ThreadModule
export ThreadModule
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
import org/allbinary/game/score/HighScoresHelperBase as HighScoresHelperBaseModule
export HighScoresHelperBaseModule
import org/allbinary/game/score/HighScoresPaintable as HighScoresPaintableModule
export HighScoresPaintableModule
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule
import org/allbinary/game/state/GameStateFactory as GameStateFactoryModule
export GameStateFactoryModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
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
import org/allbinary/thread/ThreadFactoryUtil as ThreadFactoryUtilModule
export ThreadFactoryUtilModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface as GameCanvasRunnableInterfaceModule
export GameCanvasRunnableInterfaceModule
import org/allbinary/game/displayable/canvas/MenuListener as MenuListenerModule
export MenuListenerModule
import org/allbinary/game/displayable/canvas/DemoPaintableInterface as DemoPaintableInterfaceModule
export DemoPaintableInterfaceModule
import org/allbinary/game/displayable/canvas/FormUtil as FormUtilModule
export FormUtilModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule
import org/allbinary/game/displayable/canvas/BasicMenuInputProcessor as BasicMenuInputProcessorModule
export BasicMenuInputProcessorModule
import org/allbinary/game/displayable/canvas/DemoGameStartupRunnable as DemoGameStartupRunnableModule
export DemoGameStartupRunnableModule
import org/allbinary/game/displayable/canvas/GameRunnable as GameRunnableModule
export GameRunnableModule

type
    DemoCanvas* = ref object of RunnableCanvas
        basicColorFactory*: BasicColorFactory
        myCommandsFactory*: MyCommandsFactory
        gameAdStateFactory*: GameAdStateFactory
        gameInputStrings*: GameInputStrings
        gameStateFactory*: GameStateFactory
        threadFactoryUtil*: ThreadFactoryUtil
        formUtil*: FormUtil
        fullscreenPaintable*: Paintable
        basicGameDemoPaintable*: StatePaintable
        specialAnimationInterface*: SpecialAnimation
        paintedSpecialAnimationInterface*: Animation
        fullScreenUtil*: FullScreenUtil
        gameCanvas*: AllBinaryGameCanvas
        highScoresHelper*: HighScoresHelperBase
        realHighScoresPaintable*: HighScoresPaintable
        highScoresPaintable*: Paintable
        state*: int32
        canvasThread*: JThread
        timeDelayHelper*: TimeDelayHelper
        basicColor*: BasicColor
        abeClientInformation*: AbeClientInformationInterface
        highScoresFactoryInterface*: HighScoresFactoryInterface
        menuInputProcessor*: BasicMenuInputProcessor
        menuForm*: ScrollSelectionForm
        gameInitializationInterfaceFactoryInterface*: BasicBuildGameInitializerFactory
        initialized*: bool
        demoGameRunnable*: DemoGameStartupRunnable
        defaultPaintableInterface*: Paintable
        paintableInterface*: PaintableInterface
        overlayPaintable*: InitUpdatePaintable
        progressPaintable*: PaintableInterface
        tempWait*: int32
        inputToGameKeyMapping*: InputToGameKeyMapping
        gameRunnable*: GameRunnable
        isSingleKeyRepeatableProcessing*: bool
        NONE*: GameKey
        gameKeyEventFactory*: GameKeyEventFactory
        lastKeyNotMapped*: int32
        SET_STATE*: string
        baseGameStatistics*: BaseGameStatistics

converter jAsGameCanvasRunnableInterface*(value: DemoCanvas): GameCanvasRunnableInterface = cast[GameCanvasRunnableInterface](value)
converter jAsMenuListener*(value: DemoCanvas): MenuListener = cast[MenuListener](value)
converter jAsDisplayChangeEventListener*(value: DemoCanvas): DisplayChangeEventListener = cast[DisplayChangeEventListener](value)
converter jAsDemoPaintableInterface*(value: DemoCanvas): DemoPaintableInterface = cast[DemoPaintableInterface](value)
proc newDemoCanvas*(abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool): DemoCanvas
proc initDemoCanvas*(this: DemoCanvas, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool)
method onEvent*(this: DemoCanvas, eventObject: AllBinaryEventObject)
method onDisplayChangeEvent*(this: DemoCanvas, displayChangeEvent: DisplayChangeEvent)
method getCustomCommands*(this: DemoCanvas): JArray[JObject] {.base, discardable.}
method initCommands*(this: DemoCanvas, cmdListener: CommandListener)
method initPostPaint*(this: DemoCanvas) {.base.}
method mediaInit*(this: DemoCanvas) {.base.}
method itemStateChanged*(this: DemoCanvas, item: Item)
method initMenu*(this: DemoCanvas) {.base.}
method open*(this: DemoCanvas)
method close*(this: DemoCanvas)
method getSourceId*(this: DemoCanvas): int32 {.discardable.}
method keyPressed*(this: DemoCanvas, keyCode: int32)
method keyReleased*(this: DemoCanvas, keyCode: int32)
method keyRepeated*(this: DemoCanvas, keyCode: int32)
method keyPressedByDevice*(this: DemoCanvas, keyCode: int32, deviceId: int32)
method keyReleasedByDevice*(this: DemoCanvas, keyCode: int32, deviceId: int32)
method keyRepeatedByDevice*(this: DemoCanvas, keyCode: int32, deviceId: int32)
method addGameKeyEvent*(this: DemoCanvas, keyCode: int32, repeated: bool) {.base.}
method removeGameKeyEvent*(this: DemoCanvas, keyCode: int32, repeated: bool) {.base.}
method pause*(this: DemoCanvas)
method unPause*(this: DemoCanvas)
method isPausable*(this: DemoCanvas): bool {.discardable.}
method isGameOver*(this: DemoCanvas): bool {.discardable.}
method setLoadStateHashtable*(this: DemoCanvas, hashtable: ABHashtable)
method getLoadStateHashtable*(this: DemoCanvas): ABHashtable {.discardable.}
method getCurrentStateHashtable*(this: DemoCanvas): ABHashtable {.discardable.}
method setHighScoreSubmitted*(this: DemoCanvas, isNotUsed: bool)
method paint*(this: DemoCanvas, graphics: Graphics)
method paintThreed*(this: DemoCanvas, graphics: Graphics)
method processGameOver*(this: DemoCanvas)
method demoStateChange*(this: DemoCanvas) {.base.}
method updateDemoState*(this: DemoCanvas) {.base.}
method getNextRandom*(this: DemoCanvas): int32 {.base, discardable.}
method createGameLayerManager*(this: DemoCanvas, randomValue: int32): AllBinaryGameLayerManager {.base, discardable.}
method createRunnable*(this: DemoCanvas, randomLevel: int32): GameCanvasRunnableInterface {.base, discardable.}
method create*(this: DemoCanvas) {.base.}
method start*(this: DemoCanvas) {.base.}
method preDemoProcess*(this: DemoCanvas) {.base.}
method process*(this: DemoCanvas)
method startDemoGame*(this: DemoCanvas) {.base.}
method stopGameDemo*(this: DemoCanvas) {.base.}
method showGamePaintable*(this: DemoCanvas)
method isReadyForStateChange*(this: DemoCanvas): bool {.base, discardable.}
method processGame*(this: DemoCanvas) {.base.}
method run*(this: DemoCanvas)
method run3*(this: DemoCanvas) {.base.}
method setRunning*(this: DemoCanvas, running: bool)
method `end`*(this: DemoCanvas) {.base.}
method setGameState*(this: DemoCanvas, gameState: GameState)
method getGameState*(this: DemoCanvas): GameState {.discardable.}
method getGameCanvasRunnableInterface*(this: DemoCanvas): AllBinaryGameCanvas {.base, discardable.}
method isDemoLoading*(this: DemoCanvas): bool {.base, discardable.}
method getState*(this: DemoCanvas): int32 {.base, discardable.}
method setState*(this: DemoCanvas, state: int32) {.base.}
method isHighScoreSubmitted*(this: DemoCanvas): bool {.discardable.}
method getRealHighScoresPaintable*(this: DemoCanvas): HighScoresPaintable {.base, discardable.}
method setSpecialAnimationInterface*(this: DemoCanvas, specialAnimationInterface: SpecialAnimation) {.base.}
method getSpecialAnimationInterface*(this: DemoCanvas): SpecialAnimation {.base, discardable.}
method setPaintableInterface*(this: DemoCanvas, paintableInterface: PaintableInterface) {.base.}
method getPaintableInterface*(this: DemoCanvas): PaintableInterface {.base, discardable.}
method setDefaultPaintableInterface*(this: DemoCanvas, defaultPaintableInterface: Paintable) {.base.}
method getDefaultPaintableInterface*(this: DemoCanvas): Paintable {.base, discardable.}
method getHighScoresFactoryInterface*(this: DemoCanvas): HighScoresFactoryInterface {.base, discardable.}
method setMenuInputProcessor*(this: DemoCanvas, menuInputProcessor: BasicMenuInputProcessor) {.base.}
method getMenuInputProcessor*(this: DemoCanvas): BasicMenuInputProcessor {.base, discardable.}
method getMenuForm*(this: DemoCanvas): ScrollSelectionForm {.base, discardable.}
method setMenuForm*(this: DemoCanvas, menuForm: ScrollSelectionForm) {.base.}
method isInitialized*(this: DemoCanvas): bool {.discardable.}
method getOverlayPaintable*(this: DemoCanvas): Paintable {.base, discardable.}
method setBasicGameDemoPaintable*(this: DemoCanvas, basicGameDemoPaintable: StatePaintable) {.base.}
method getBasicGameDemoPaintable*(this: DemoCanvas): StatePaintable {.base, discardable.}
method setTempWait*(this: DemoCanvas, tempWait: int32) {.base.}
method getTempWait*(this: DemoCanvas): int32 {.base, discardable.}
method isSingleThread*(this: DemoCanvas): bool {.discardable.}
method isRunningInAnotherThread*(this: DemoCanvas): bool {.base, discardable.}
method getGameInitializationInterfaceFactoryInterface*(this: DemoCanvas): BasicBuildGameInitializerFactory {.base, discardable.}
method getType*(this: DemoCanvas): int32 {.discardable.}
method getTitle*(this: DemoCanvas): string {.discardable.}
method isPaused*(this: DemoCanvas): bool {.discardable.}
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
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/event/ChangedGameFeatureListener as ChangedGameFeatureListenerModule
export ChangedGameFeatureListenerModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
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
import org/allbinary/game/score/HighScoresHelper as HighScoresHelperModule
export HighScoresHelperModule
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
import org/allbinary/graphics/displayable/screen/FullScreenPaintableFactory as FullScreenPaintableFactoryModule
export FullScreenPaintableFactoryModule
import org/allbinary/graphics/form/CommandCurrentSelectionFormFactory as CommandCurrentSelectionFormFactoryModule
export CommandCurrentSelectionFormFactoryModule
import org/allbinary/graphics/form/FormType as FormTypeModule
export FormTypeModule
import org/allbinary/graphics/form/FormTypeFactory as FormTypeFactoryModule
export FormTypeFactoryModule
import org/allbinary/graphics/form/ScrollSelectionFormNoneFactory as ScrollSelectionFormNoneFactoryModule
export ScrollSelectionFormNoneFactoryModule
import org/allbinary/graphics/form/item/CommandTextItemArrayFactory as CommandTextItemArrayFactoryModule
export CommandTextItemArrayFactoryModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/graphics/opengles/CurrentDisplayableFactory as CurrentDisplayableFactoryModule
export CurrentDisplayableFactoryModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
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
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
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
import org/allbinary/media/audio/PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactoryModule
export PrimaryPlayerQueueFactoryModule
import org/allbinary/media/audio/SecondaryPlayerQueueFactory as SecondaryPlayerQueueFactoryModule
export SecondaryPlayerQueueFactoryModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/thread/NullThread as NullThreadModule
export NullThreadModule
import org/allbinary/thread/ThreadUtil as ThreadUtilModule
export ThreadUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/displayable/canvas/NullGameCanvas as NullGameCanvasModule
export NullGameCanvasModule
import org/allbinary/game/displayable/canvas/NoMenuInputProcessor as NoMenuInputProcessorModule
export NoMenuInputProcessorModule
import org/allbinary/game/displayable/canvas/NullWaitGameRunnable as NullWaitGameRunnableModule
export NullWaitGameRunnableModule
import org/allbinary/game/displayable/canvas/GameInputMappingCanvas as GameInputMappingCanvasModule
export GameInputMappingCanvasModule
import org/allbinary/game/displayable/canvas/DemoLimitedCommandTextItemArrayFactory as DemoLimitedCommandTextItemArrayFactoryModule
export DemoLimitedCommandTextItemArrayFactoryModule
import org/allbinary/game/displayable/canvas/CommandFormInputProcessor as CommandFormInputProcessorModule
export CommandFormInputProcessorModule
import org/allbinary/game/displayable/canvas/DemoCanvasProgressUtil as DemoCanvasProgressUtilModule
export DemoCanvasProgressUtilModule
import org/allbinary/game/displayable/canvas/DemoGameRunnable as DemoGameRunnableModule
export DemoGameRunnableModule

var DemoCanvas_idValue: int32
var DemoCanvas_idSet = false
proc id*(t: typedesc[DemoCanvas]): int32 =
    if not DemoCanvas_idSet:
        DemoCanvas_idSet = true
        DemoCanvas_idValue = 0
    DemoCanvas_idValue
var DemoCanvas_BOT_GAME_STATSValue: string
var DemoCanvas_BOT_GAME_STATSSet = false
proc BOT_GAME_STATS*(t: typedesc[DemoCanvas]): string =
    if not DemoCanvas_BOT_GAME_STATSSet:
        DemoCanvas_BOT_GAME_STATSSet = true
        DemoCanvas_BOT_GAME_STATSValue = "Bot Game Statistics: "
    DemoCanvas_BOT_GAME_STATSValue
var DemoCanvas_TYPEValue: int32
var DemoCanvas_TYPESet = false
proc TYPE*(t: typedesc[DemoCanvas]): int32 =
    if not DemoCanvas_TYPESet:
        DemoCanvas_TYPESet = true
        DemoCanvas_TYPEValue = 3
    DemoCanvas_TYPEValue

# Java field initializers run after the base initializer
proc initFieldsDemoCanvas(this: DemoCanvas) =
    this.basicColorFactory = BasicColorFactory.getInstance()
    this.myCommandsFactory = MyCommandsFactory.getInstance()
    this.gameAdStateFactory = GameAdStateFactory.getInstance()
    this.gameInputStrings = GameInputStrings.getInstance()
    this.gameStateFactory = GameStateFactory.getInstance()
    this.threadFactoryUtil = ThreadFactoryUtil.getInstance()
    this.formUtil = FormUtil.getInstance()
    this.fullscreenPaintable = FullScreenPaintableFactory.getInstance().paintable
    this.basicGameDemoPaintable = StatePaintableFactory.getInstance()
    this.specialAnimationInterface = SpecialAnimation.getInstance()
    this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
    this.fullScreenUtil = FullScreenUtil.getInstance()
    this.gameCanvas = NullGameCanvas.getInstance()
    this.highScoresHelper = newHighScoresHelper()
    this.realHighScoresPaintable = newHighScoresPaintable()
    this.highScoresPaintable = NullPaintable.getInstance()
    this.state = 0
    this.canvasThread = NullThread.NULL_THREADStatic
    this.timeDelayHelper = newTimeDelayHelper(6000)
    this.basicColor = this.basicColorFactory.RED
    
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance()
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
    
    this.initialized = false
    
    this.defaultPaintableInterface = NullPaintable.getInstance()
    this.paintableInterface = NullPaintable.getInstance()
    
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance()
    this.tempWait = NullWaitGameRunnable.getInstance().WAIT
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
    this.gameRunnable = NullWaitGameRunnable.getInstance()
    this.isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
    this.NONE = GameKeyFactory.getInstance().NONE
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    this.lastKeyNotMapped = -1
    this.SET_STATE = "setState"
    this.baseGameStatistics = GameStatisticsFactory.getInstance()
    discard

proc initDemoCanvas*(this: DemoCanvas, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool) =
        initRunnableCanvas(this, commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true)
        this.initFieldsDemoCanvas()
        this.abeClientInformation = abeClientInformation
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
        this.demoGameRunnable = newDemoGameStartupRunnable(this)
        DisplayChangeEventHandler.getInstance().addListenerInterface(this)

proc newDemoCanvas*(abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool): DemoCanvas =
    result = DemoCanvas()
    initDemoCanvas(result, abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)

method onEvent*(this: DemoCanvas, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onDisplayChangeEvent*(this: DemoCanvas, displayChangeEvent: DisplayChangeEvent) =
        try:
            this.logUtil.putF(newStringMaker().append(this.commonLabels.START_LABEL).append(this.displayInfo.toString()).toString(), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT)
            let scrollSelectionForm: ScrollSelectionForm = this.getMenuForm()
            if (not jIsNil(scrollSelectionForm)):
                let formType: FormType = FormTypeFactory.getInstance().getFormType()
                let rectangle: Rectangle = this.formUtil.createFormRectangle()
                scrollSelectionForm.init(rectangle, formType)
            this.overlayPaintable.init()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)

method getCustomCommands*(this: DemoCanvas): JArray[JObject] {.base, discardable.} =
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

method initCommands*(this: DemoCanvas, cmdListener: CommandListener) =
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

method initPostPaint*(this: DemoCanvas) {.base.} =
        discard

method mediaInit*(this: DemoCanvas) {.base.} =
        AllBinaryMediaManager.init(EarlySoundsFactory.getInstance())

method itemStateChanged*(this: DemoCanvas, item: Item) =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

method initMenu*(this: DemoCanvas) {.base.} =
        this.close()
        let commandTextItemArrayFactory: CommandTextItemArrayFactory = DemoLimitedCommandTextItemArrayFactory.getInstance().getCommandTextItemArrayFactory()
        let items: JArray[ABCustomItem] = commandTextItemArrayFactory.getInstance(this.getCommandStack(), this.basicColorFactory.BLACK, this.basicColorFactory.WHITE)
        let formType: FormType = FormTypeFactory.getInstance().getFormType()
        let rectangle: Rectangle = this.formUtil.createFormRectangle()
        PreLogUtil.put(newStringMaker().append(this.commonLabels.START_LABEL).append(this.displayInfo.toString()).toString(), this, "initMenu")
        let scrollSelectionForm: ScrollSelectionForm = CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 15, true, this.basicColorFactory.BLACK, this.basicColorFactory.WHITE)
        this.setMenuForm(scrollSelectionForm)
        let formType2: FormType = FormTypeFactory.getInstance().getFormType()
        let rectangle2: Rectangle = this.formUtil.createFormRectangle()
        scrollSelectionForm.init(rectangle2, formType2)
        if this.getMenuForm() != ScrollSelectionFormNoneFactory.getInstance():
            this.setMenuInputProcessor(newCommandFormInputProcessor(newBasicArrayListD(), -1, this, this.getMenuForm()))
        this.open()

method open*(this: DemoCanvas) =
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor())

method close*(this: DemoCanvas) =
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor())

method getSourceId*(this: DemoCanvas): int32 {.discardable.} =
        return DemoCanvas.id

method keyPressed*(this: DemoCanvas, keyCode: int32) =
        this.keyPressedByDevice(keyCode, 0)

method keyReleased*(this: DemoCanvas, keyCode: int32) =
        this.keyReleasedByDevice(keyCode, 0)

method keyRepeated*(this: DemoCanvas, keyCode: int32) =
        this.keyRepeatedByDevice(keyCode, 0)

method keyPressedByDevice*(this: DemoCanvas, keyCode: int32, deviceId: int32) =
        this.addGameKeyEvent(keyCode, false)

method keyReleasedByDevice*(this: DemoCanvas, keyCode: int32, deviceId: int32) =
        this.removeGameKeyEvent(keyCode, false)

method keyRepeatedByDevice*(this: DemoCanvas, keyCode: int32, deviceId: int32) =
        if this.isSingleKeyRepeatableProcessing:
            this.addGameKeyEvent(keyCode, true)

method addGameKeyEvent*(this: DemoCanvas, keyCode: int32, repeated: bool) {.base.} =
        try:
            var gameKey: GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if gameKey != this.NONE:
                var gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey)
                DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            else:
                if this.lastKeyNotMapped != keyCode:
                    this.lastKeyNotMapped = keyCode
                    this.logUtil.putF(newStringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)

method removeGameKeyEvent*(this: DemoCanvas, keyCode: int32, repeated: bool) {.base.} =
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

method pause*(this: DemoCanvas) =
        this.close()
        this.setPaused(true)
        this.gameRunnable = NullWaitGameRunnable.getInstance()
        this.gameCanvas.pause()

method unPause*(this: DemoCanvas) =
        this.open()
        this.gameCanvas.unPause()
        this.gameRunnable = this.gameCanvas.gameRunnable
        this.setPaused(false)

method isPausable*(this: DemoCanvas): bool {.discardable.} =
        if CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance():
            return true
        else:
            return false

method isGameOver*(this: DemoCanvas): bool {.discardable.} =
        this.logUtil.putF(newStringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(" since not a game").toString(), this, "isGameOver")
        return false

method setLoadStateHashtable*(this: DemoCanvas, hashtable: ABHashtable) =
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable")

method getLoadStateHashtable*(this: DemoCanvas): ABHashtable {.discardable.} =
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable")
        return this.stdUtil.NULL_TABLE

method getCurrentStateHashtable*(this: DemoCanvas): ABHashtable {.discardable.} =
        this.logUtil.putF("Trying to save the AI lol", this, "getCurrentStateHashtable")
        return this.stdUtil.NULL_TABLE

method setHighScoreSubmitted*(this: DemoCanvas, isNotUsed: bool) =
        discard

method paint*(this: DemoCanvas, graphics: Graphics) =
        this.paintableInterface.paint(graphics)
        this.paintedSpecialAnimationInterface.paintXY(graphics, 0, 0)
        this.highScoresPaintable.paint(graphics)
        this.getBasicGameDemoPaintable().paint(graphics)
        this.overlayPaintable.paint(graphics)
        this.fullscreenPaintable.paint(graphics)
        this.progressPaintable.paint(graphics)

method paintThreed*(this: DemoCanvas, graphics: Graphics) =
        this.paintableInterface.paintThreed(graphics)
        this.paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0)

method processGameOver*(this: DemoCanvas) =
        this.logUtil.putF("Not Implemented since not a game", this, "setGameOver")

method demoStateChange*(this: DemoCanvas) {.base.} =
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

method updateDemoState*(this: DemoCanvas) {.base.} =
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().createInstance(this.state).toString(), this, this.SET_STATE)
        this.getBasicGameDemoPaintable().setState(this.state)
        if this.state == 0:
            this.highScoresPaintable = NullPaintable.getInstance()
            this.paintedSpecialAnimationInterface = this.getSpecialAnimationInterface()
            if (not this.demoGameRunnable.isRunning()) and this.gameCanvas.isInitialized():
                this.getSpecialAnimationInterface().reset()
        elif this.state == 1:
            this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        elif this.state == 2:
            this.highScoresPaintable = this.getRealHighScoresPaintable()
        var gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
        gameAdState.processPageAdState()

method getNextRandom*(this: DemoCanvas): int32 {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method createGameLayerManager*(this: DemoCanvas, randomValue: int32): AllBinaryGameLayerManager {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method createRunnable*(this: DemoCanvas, randomLevel: int32): GameCanvasRunnableInterface {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method create*(this: DemoCanvas) {.base.} =
        PreLogUtil.put(this.commonStrings.START, this, "create")
        this.highScoresPaintable = NullPaintable.getInstance()
        var randomLevel: int32 = this.getNextRandom()
        this.gameCanvas = AllBinaryGameCanvas(JObject(this.createRunnable(randomLevel)))
        this.basicColor = this.gameCanvas.getLayerManager().getForegroundBasicColor()
        this.getRealHighScoresPaintable().setBasicColorP(this.basicColor)
        this.gameCanvas.setGameCanvasStartListener(this)
        let gameInfo: GameInfo = this.gameCanvas.getLayerManager().getGameInfo()
        this.getHighScoresFactoryInterface().fetchHighScores(gameInfo, this.highScoresHelper)

method start*(this: DemoCanvas) {.base.} =
        let gameCanvas: AllBinaryGameCanvas = this.gameCanvas
        PreLogUtil.put(newStringMaker().append("Game Thread in DemoCanvas: ").append(this.stringUtil.toString(gameCanvas)).toString(), this, this.commonStrings.START)
        this.canvasThread = this.threadFactoryUtil.getInstanceGameCanvasRunnable(gameCanvas)
        this.gameCanvas.setThread(this.canvasThread)
        this.threadFactoryUtil.start(this.canvasThread)
        if this.getWait() == NullWaitGameRunnable.getInstance().WAIT:
            this.setWait(this.getTempWait())

method preDemoProcess*(this: DemoCanvas) {.base.} =
        if (not this.gameCanvas.isInitialized()) or this.gameCanvas.getTitle() == NullGameCanvas.NO_GAME:
            if AllBinaryMediaManager.update():
                if (not PrimaryPlayerQueueFactory.getInstance().process()):
                    SecondaryPlayerQueueFactory.getInstance().process()
        this.overlayPaintable.update()

method process*(this: DemoCanvas) =
        procCall RunnableCanvas(this).process()
        this.getMenuInputProcessor().processInputList()
        this.preDemoProcess()
        if this.state == 0:
            let indexedAnimationBehavior: IndexedAnimationBehavior = (IndexedAnimationBehavior(JObject(this.getSpecialAnimationInterface().getAnimationBehavior())))
            if indexedAnimationBehavior.loopIndex < 1:
                this.timeDelayHelper.setStartTimeTNT()
            var demoGameMidlet: DemoGameMidlet = DemoGameMidlet(JObject(this.getCustomCommandListener()))
            if this.gameCanvas != NullGameCanvas.getInstance() and this.gameCanvas.isGameOver():
                this.stopGameDemo()
                var randomLevel: int32 = this.getNextRandom()
                var gameInfo: GameInfo = this.gameCanvas.getLayerManager().getGameInfo()
                gameInfo.setCurrentLevel(randomLevel)
                this.gameCanvas.setGameOver(false)
                this.start()
            elif this.gameCanvas == NullGameCanvas.getInstance() and demoGameMidlet.isReady():
                if (not this.demoGameRunnable.isRunning()):
                    this.startDemoGame()
                    this.demoGameRunnable.setRunning(true)
                    let thread: JThread = this.threadFactoryUtil.getInstanceForRunnable(this.demoGameRunnable)
                    this.demoGameRunnable.setThread(thread)
                    this.threadFactoryUtil.start(thread)

method startDemoGame*(this: DemoCanvas) {.base.} =
        DemoCanvasProgressUtil.showProgress(this)

method stopGameDemo*(this: DemoCanvas) {.base.} =
        if this.gameCanvas != NullGameCanvas.getInstance():
            this.logUtil.putF("Set Running False", this, "stopGameDemo")
            this.gameCanvas.setRunning(false)
        ThreadUtil.getInstance().join(this.canvasThread)

method showGamePaintable*(this: DemoCanvas) =
        let METHOD_NAME: string = "showGamePaintable"
        PreLogUtil.put(this.commonStrings.START, this, METHOD_NAME)
        let isDefault: bool = J2MEUtil.isHTML()
        if this.gameCanvas != NullGameCanvas.getInstance() and (this.gameCanvas.isRunning() or isDefault or SWTUtil.isSWT) and (not (this.gameCanvas.getType() == NullGameCanvas.TYPE)):
            this.gameRunnable = this.gameCanvas.gameRunnable
            PreLogUtil.put("Showing Game", this, METHOD_NAME)
            this.setPaintableInterface(this.gameCanvas)
        else:
            this.gameRunnable = NullWaitGameRunnable.getInstance()
            PreLogUtil.put("Not Showing Game", this, METHOD_NAME)
            this.setPaintableInterface(this.getDefaultPaintableInterface())

method isReadyForStateChange*(this: DemoCanvas): bool {.base, discardable.} =
        return (not this.demoGameRunnable.isRunning()) and this.gameCanvas.isInitialized()

method processGame*(this: DemoCanvas) {.base.} =
        this.gameRunnable.run()
        if (not this.specialAnimationInterface.isComplete()) and this.isReadyForStateChange():
            this.specialAnimationInterface.nextFrame()
        if this.timeDelayHelper.isTimeTNT() and this.isReadyForStateChange():
            this.demoStateChange()
        else:
            this.process()

method run*(this: DemoCanvas) =
        this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
        try:
            let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
            let features: Features = Features.getInstance()
            let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Demo Thread")
            this.setCurrentThread()
            this.setRunning(true)
            if features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND):
                progressCanvas.`end`()
            else:
                progressCanvas.addNormalPortion(50, "Demo Thread Running")
            this.fullScreenUtil.initOnRun(this, this.getCustomCommandListener())
            this.initMenu()
            this.initPostPaint()
            this.updateDemoState()
            if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD):
                while this.gameCanvas == NullGameCanvas.getInstance() or (not this.gameCanvas.isInitialized()):
                    this.loopTimeHelper.setStartTimeTNT()
                    this.processGame()
                    this.processLoopSleep()
                let demoGameRunnable: DemoGameRunnable = newDemoGameRunnable(this)
                let currentDisplayableFactory: CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.setRunnable(demoGameRunnable)
                currentDisplayableFactory.setMyCanvas(this)
                OpenGLThreadUtil.getInstance().onResume()
            if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD) or J2MEUtil.isHTML():
                let demoGameRunnable: DemoGameRunnable = newDemoGameRunnable(this)
                let currentDisplayableFactory: CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.setRunnable(demoGameRunnable)
                currentDisplayableFactory.setMyCanvas(this)
            else:
                while this.isRunning():
                    this.run3()
                this.`end`()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)

method run3*(this: DemoCanvas) {.base.} =
        this.loopTimeHelper.setStartTimeTNT()
        this.processGame()
        this.processLoopSleep()

method setRunning*(this: DemoCanvas, running: bool) =
        procCall RunnableCanvas(this).setRunning(running)
        try:
            let features: Features = Features.getInstance()
            let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            if running:
                discard
            else:
                if (features.isDefault(openGLFeatureFactory.OPENGL) or J2MEUtil.isHTML()) or SWTUtil.isSWT:
                    let currentDisplayableFactory: CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                    currentDisplayableFactory.clearRunnable()
                    this.`end`()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e)

method `end`*(this: DemoCanvas) {.base.} =
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        let features: Features = Features.getInstance()
        this.baseGameStatistics.add(newStringMaker().append(DemoCanvas.BOT_GAME_STATS).append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString())
        this.baseGameStatistics.init()
        if features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND):
            progressCanvas.start()
        this.logUtil.putF("Demo End", this, this.commonStrings.RUN)
        this.close()
        DisplayChangeEventHandler.getInstance().removeListener(this)
        this.stopGameDemo()

method setGameState*(this: DemoCanvas, gameState: GameState) =
        discard

method getGameState*(this: DemoCanvas): GameState {.discardable.} =
        return this.gameStateFactory.PLAYING_GAME_STATE

method getGameCanvasRunnableInterface*(this: DemoCanvas): AllBinaryGameCanvas {.base, discardable.} =
        return this.gameCanvas

method isDemoLoading*(this: DemoCanvas): bool {.base, discardable.} =
        var gameCanvas: AllBinaryGameCanvas = this.gameCanvas
        if gameCanvas == NullGameCanvas.getInstance():
            return true
        elif gameCanvas.isInitialized():
            return false
        return true

method getState*(this: DemoCanvas): int32 {.base, discardable.} =
        return this.state

method setState*(this: DemoCanvas, state: int32) {.base.} =
        this.state = state

method isHighScoreSubmitted*(this: DemoCanvas): bool {.discardable.} =
        this.logUtil.putF("Wow the AI got a high score!", this, "isHighScoreSubmitted")
        return false

method getRealHighScoresPaintable*(this: DemoCanvas): HighScoresPaintable {.base, discardable.} =
        return this.realHighScoresPaintable

method setSpecialAnimationInterface*(this: DemoCanvas, specialAnimationInterface: SpecialAnimation) {.base.} =
        specialAnimationInterface.setFrame(0)
        this.specialAnimationInterface = specialAnimationInterface

method getSpecialAnimationInterface*(this: DemoCanvas): SpecialAnimation {.base, discardable.} =
        return this.specialAnimationInterface

method setPaintableInterface*(this: DemoCanvas, paintableInterface: PaintableInterface) {.base.} =
        this.paintableInterface = paintableInterface

method getPaintableInterface*(this: DemoCanvas): PaintableInterface {.base, discardable.} =
        return this.paintableInterface

method setDefaultPaintableInterface*(this: DemoCanvas, defaultPaintableInterface: Paintable) {.base.} =
        this.defaultPaintableInterface = defaultPaintableInterface

method getDefaultPaintableInterface*(this: DemoCanvas): Paintable {.base, discardable.} =
        return this.defaultPaintableInterface

method getHighScoresFactoryInterface*(this: DemoCanvas): HighScoresFactoryInterface {.base, discardable.} =
        return this.highScoresFactoryInterface

method setMenuInputProcessor*(this: DemoCanvas, menuInputProcessor: BasicMenuInputProcessor) {.base.} =
        this.menuInputProcessor = menuInputProcessor

method getMenuInputProcessor*(this: DemoCanvas): BasicMenuInputProcessor {.base, discardable.} =
        return this.menuInputProcessor

method getMenuForm*(this: DemoCanvas): ScrollSelectionForm {.base, discardable.} =
        return this.menuForm

method setMenuForm*(this: DemoCanvas, menuForm: ScrollSelectionForm) {.base.} =
        this.menuForm = menuForm

method isInitialized*(this: DemoCanvas): bool {.discardable.} =
        return this.initialized

method getOverlayPaintable*(this: DemoCanvas): Paintable {.base, discardable.} =
        return this.overlayPaintable

method setBasicGameDemoPaintable*(this: DemoCanvas, basicGameDemoPaintable: StatePaintable) {.base.} =
        this.basicGameDemoPaintable = basicGameDemoPaintable

method getBasicGameDemoPaintable*(this: DemoCanvas): StatePaintable {.base, discardable.} =
        return this.basicGameDemoPaintable

method setTempWait*(this: DemoCanvas, tempWait: int32) {.base.} =
        this.tempWait = tempWait

method getTempWait*(this: DemoCanvas): int32 {.base, discardable.} =
        return this.tempWait

method isSingleThread*(this: DemoCanvas): bool {.discardable.} =
        return OpenGLFeatureUtil.getInstance().isAnyThreed() or SWTUtil.isSWT

method isRunningInAnotherThread*(this: DemoCanvas): bool {.base, discardable.} =
        let features: Features = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD):
            return true
        else:
            return this.isRunning()

method getGameInitializationInterfaceFactoryInterface*(this: DemoCanvas): BasicBuildGameInitializerFactory {.base, discardable.} =
        return this.gameInitializationInterfaceFactoryInterface

method getType*(this: DemoCanvas): int32 {.discardable.} =
        return DemoCanvas.TYPE

method getTitle*(this: DemoCanvas): string {.discardable.} =
        return procCall RunnableCanvas(this).getTitle()

method isPaused*(this: DemoCanvas): bool {.discardable.} =
        return procCall RunnableCanvas(this).isPaused()

when declared(newDemoCanvasHook7):
    newDemoCanvasHook7 = proc (abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, highScoresFactoryInterface: HighScoresFactoryInterface, paintable: Paintable, overlayPaintable: InitUpdatePaintable, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, isContinue: bool): RunnableCanvas = newDemoCanvas(abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)

