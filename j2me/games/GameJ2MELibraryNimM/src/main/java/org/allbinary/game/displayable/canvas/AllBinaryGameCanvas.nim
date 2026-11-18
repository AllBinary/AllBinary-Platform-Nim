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
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Thread as ThreadModule
export ThreadModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import org/allbinary/business/advertisement/GameAdStateFactory as GameAdStateFactoryModule
export GameAdStateFactoryModule
import org/allbinary/canvas/BaseGameStatistics as BaseGameStatisticsModule
export BaseGameStatisticsModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/canvas/RunnableCanvas as RunnableCanvasModule
export RunnableCanvasModule
import org/allbinary/game/GameStrings as GameStringsModule
export GameStringsModule
import org/allbinary/game/GameTypeFactory as GameTypeFactoryModule
export GameTypeFactoryModule
import org/allbinary/game/IntermissionCompositeInterface as IntermissionCompositeInterfaceModule
export IntermissionCompositeInterfaceModule
import org/allbinary/game/IntermissionEnableListenerInterface as IntermissionEnableListenerInterfaceModule
export IntermissionEnableListenerInterfaceModule
import org/allbinary/game/IntermissionInterface as IntermissionInterfaceModule
export IntermissionInterfaceModule
import org/allbinary/game/configuration/feature/TouchFeatureFactory as TouchFeatureFactoryModule
export TouchFeatureFactoryModule
import org/allbinary/game/init/BasicBuildGameInitializerFactory as BasicBuildGameInitializerFactoryModule
export BasicBuildGameInitializerFactoryModule
import org/allbinary/game/input/GameInputStrings as GameInputStringsModule
export GameInputStringsModule
import org/allbinary/game/input/InputProcessor as InputProcessorModule
export InputProcessorModule
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule
import org/allbinary/game/input/event/GameKeyEventHandler as GameKeyEventHandlerModule
export GameKeyEventHandlerModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/paint/ColorFillBasePaintable as ColorFillBasePaintableModule
export ColorFillBasePaintableModule
import org/allbinary/game/resource/ResourceLoadingLevel as ResourceLoadingLevelModule
export ResourceLoadingLevelModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule
import org/allbinary/game/score/HighScoresHelperBaseInterface as HighScoresHelperBaseInterfaceModule
export HighScoresHelperBaseInterfaceModule
import org/allbinary/game/score/HighScoresFactoryInterface as HighScoresFactoryInterfaceModule
export HighScoresFactoryInterfaceModule
import org/allbinary/game/score/HighScoresPaintable as HighScoresPaintableModule
export HighScoresPaintableModule
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule
import org/allbinary/game/state/GameStateFactory as GameStateFactoryModule
export GameStateFactoryModule
import org/allbinary/graphics/ScreenCapture as ScreenCaptureModule
export ScreenCaptureModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/color/BasicColorSetUtil as BasicColorSetUtilModule
export BasicColorSetUtilModule
import org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton as GameTickDisplayInfoSingletonModule
export GameTickDisplayInfoSingletonModule
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule
import org/allbinary/graphics/displayable/event/DisplayChangeEventListener as DisplayChangeEventListenerModule
export DisplayChangeEventListenerModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
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
import org/allbinary/input/gyro/SensorGameUpdateProcessor as SensorGameUpdateProcessorModule
export SensorGameUpdateProcessorModule
import org/allbinary/input/motion/button/BaseTouchInput as BaseTouchInputModule
export BaseTouchInputModule
import org/allbinary/input/motion/button/TouchButtonFactory as TouchButtonFactoryModule
export TouchButtonFactoryModule
import org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler as BasicMotionGesturesHandlerModule
export BasicMotionGesturesHandlerModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/media/audio/PlayerQueue as PlayerQueueModule
export PlayerQueueModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface as AllBinaryGameCanvasInterfaceModule
export AllBinaryGameCanvasInterfaceModule
import org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface as GameCanvasRunnableInterfaceModule
export GameCanvasRunnableInterfaceModule
import org/allbinary/game/displayable/canvas/MenuListener as MenuListenerModule
export MenuListenerModule
import org/allbinary/game/displayable/canvas/PopupMenuInterface as PopupMenuInterfaceModule
export PopupMenuInterfaceModule
import org/allbinary/game/displayable/canvas/GameCanvasRunnable as GameCanvasRunnableModule
export GameCanvasRunnableModule
import org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable as GameCanvasPauseRunnableModule
export GameCanvasPauseRunnableModule
import org/allbinary/game/displayable/canvas/FormUtil as FormUtilModule
export FormUtilModule
import org/allbinary/game/displayable/canvas/MyFormUtil as MyFormUtilModule
export MyFormUtilModule
import org/allbinary/game/displayable/canvas/EndGameInfo as EndGameInfoModule
export EndGameInfoModule
import org/allbinary/game/displayable/canvas/BasicMenuInputProcessor as BasicMenuInputProcessorModule
export BasicMenuInputProcessorModule
import org/allbinary/game/displayable/canvas/DemoGameBehavior as DemoGameBehaviorModule
export DemoGameBehaviorModule
import org/allbinary/game/displayable/canvas/BaseMenuBehavior as BaseMenuBehaviorModule
export BaseMenuBehaviorModule
import org/allbinary/game/displayable/canvas/DemoPaintableInterface as DemoPaintableInterfaceModule
export DemoPaintableInterfaceModule

type
    AllBinaryGameCanvas* = ref object of RunnableCanvas
        basicColorFactory*: BasicColorFactory
        basicSetColorUtil*: BasicColorSetUtil
        touchFeatureFactory*: TouchFeatureFactory
        openGLFeatureFactory*: OpenGLFeatureFactory
        touchButtonFactory*: TouchButtonFactory
        gameAdStateFactory*: GameAdStateFactory
        gameStrings*: GameStrings
        gameInputStrings*: GameInputStrings
        gameStateFactory*: GameStateFactory
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper
        gameTickDisplayInfoSingleton*: GameTickDisplayInfoSingleton
        gameRunnable*: GameCanvasRunnable
        gamePauseRunnable*: GameCanvasPauseRunnable
        formUtil*: FormUtil
        myFormUtil*: MyFormUtil
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        gameSpecificPaintable*: Paintable
        sensorGameUpdateProcessor*: SensorGameUpdateProcessor
        endGameInfo*: EndGameInfo
        startIntermissionInterface*: IntermissionInterface
        endLevelIntermissionInterface*: IntermissionInterface
        gameLayerManager*: AllBinaryGameLayerManager
        gameState*: GameState
        gameOver*: bool
        initialized*: bool
        gameStateTimeHelper*: TimeDelayHelper
        highScoresHelper*: HighScoresHelperBaseInterface
        highScoreSubmitted*: bool
        realHighScoresPaintable*: HighScoresPaintable
        highScoresPaintable*: Paintable
        localPlayerGameInputList*: BasicArrayList
        isCheating*: bool
        hashtable*: ABHashtable
        isSingleKeyRepeatableProcessing*: bool
        gameInitializationInterfaceFactoryInterface*: BasicBuildGameInitializerFactory
        touchButtonsPaintable*: Paintable
        touchPaintable*: Paintable
        cheatProcessor*: PlayerGameInput
        gameInputProcessor*: Processor
        endGameProcessor*: Processor
        realEndGameProcessor*: Processor
        startIntermissionProcessor*: Processor
        realStartIntermissionProcessor*: Processor
        endGamePaintable*: Paintable
        endGameStatePaintable*: Paintable
        nonBotPaintable*: Paintable
        intermissionPaintable*: Paintable
        startIntermissionPaintable*: InitUpdatePaintable
        mainStateProcessor*: Processor
        processGameProcessor*: Processor
        highScoresFactoryInterface*: HighScoresFactoryInterface
        startLevel*: int32
        mainMenuInputProcessor*: BasicMenuInputProcessor
        popupMenuInputProcessor*: BasicMenuInputProcessor
        menuInputProcessor*: BasicMenuInputProcessor
        menuForm*: ScrollSelectionForm
        formPaintable*: Paintable
        openMenuPaintable*: Paintable
        menuPaintable*: Paintable
        currentTouchInputFactory*: BaseTouchInput
        colorFillPaintable*: ColorFillBasePaintable
        baseGameStatistics*: BaseGameStatistics
        primaryPlayerQueue*: PlayerQueue
        secondaryPlayerQueue*: PlayerQueue
        BUILD_GAME*: string
        gameTypeFactory*: GameTypeFactory
        screenCapture*: ScreenCapture
        basicMotionGesturesHandler*: BasicMotionGesturesHandler
        gameKeyEventHandler*: GameKeyEventHandler
        gameBehavior*: DemoGameBehavior
        menuBehavior*: BaseMenuBehavior
        progressPaintable*: PaintableInterface
        fontHeightP*: int32
        gameCanvasStartListener*: DemoPaintableInterface
        rawGameInputProcessor*: InputProcessor
        rawInputProcessor*: InputProcessor
        inputProcessor*: InputProcessor
        YIELD_SLEEP*: int64

converter jAsAllBinaryGameCanvasInterface*(value: AllBinaryGameCanvas): AllBinaryGameCanvasInterface = cast[AllBinaryGameCanvasInterface](value)
converter jAsGameCanvasRunnableInterface*(value: AllBinaryGameCanvas): GameCanvasRunnableInterface = cast[GameCanvasRunnableInterface](value)
converter jAsMenuListener*(value: AllBinaryGameCanvas): MenuListener = cast[MenuListener](value)
converter jAsIntermissionCompositeInterface*(value: AllBinaryGameCanvas): IntermissionCompositeInterface = cast[IntermissionCompositeInterface](value)
converter jAsIntermissionEnableListenerInterface*(value: AllBinaryGameCanvas): IntermissionEnableListenerInterface = cast[IntermissionEnableListenerInterface](value)
converter jAsPopupMenuInterface*(value: AllBinaryGameCanvas): PopupMenuInterface = cast[PopupMenuInterface](value)
converter jAsDisplayChangeEventListener*(value: AllBinaryGameCanvas): DisplayChangeEventListener = cast[DisplayChangeEventListener](value)
converter jAsUpdateMyFontInterface*(value: AllBinaryGameCanvas): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newAllBinaryGameCanvas*(commandListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool): AllBinaryGameCanvas
proc initAllBinaryGameCanvas*(this: AllBinaryGameCanvas, commandListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool)
method updateMeasurement*(this: AllBinaryGameCanvas, graphics: Graphics)
method getInGameMenuBehavior*(this: AllBinaryGameCanvas): BaseMenuBehavior {.base, discardable.}
method setCurrentThread*(this: AllBinaryGameCanvas)
method onEvent*(this: AllBinaryGameCanvas, eventObject: AllBinaryEventObject)
method onDisplayChangeEvent*(this: AllBinaryGameCanvas, displayChangeEvent: DisplayChangeEvent)
method updateMenuFromEvent*(this: AllBinaryGameCanvas, displayChangeEvent: DisplayChangeEvent) {.base.}
method processSleep*(this: AllBinaryGameCanvas)
method initPopupMenu*(this: AllBinaryGameCanvas) {.base.}
method initMenu*(this: AllBinaryGameCanvas) {.base.}
method initMenu2*(this: AllBinaryGameCanvas) {.base.}
method updateMenu*(this: AllBinaryGameCanvas) {.base.}
method updateMenu2*(this: AllBinaryGameCanvas) {.base.}
method pause*(this: AllBinaryGameCanvas)
method unPause*(this: AllBinaryGameCanvas)
method isPausable*(this: AllBinaryGameCanvas): bool {.discardable.}
method popupMenu*(this: AllBinaryGameCanvas)
method popupMenu2*(this: AllBinaryGameCanvas) {.base.}
method toggleMenu*(this: AllBinaryGameCanvas)
method closeMenu*(this: AllBinaryGameCanvas)
method closeMenu2*(this: AllBinaryGameCanvas) {.base.}
method open*(this: AllBinaryGameCanvas)
method close*(this: AllBinaryGameCanvas)
method processorInit*(this: AllBinaryGameCanvas) {.base.}
method setProcessGameProcessorInit*(this: AllBinaryGameCanvas) {.base.}
method initSpecialPaint*(this: AllBinaryGameCanvas) {.base.}
method init*(this: AllBinaryGameCanvas, gameLayerManager: AllBinaryGameLayerManager, buffered: bool) {.base.}
method notifyIntermission*(this: AllBinaryGameCanvas, enable: bool)
method mediaInit*(this: AllBinaryGameCanvas) {.base.}
method initConfigurable*(this: AllBinaryGameCanvas, abeClientInformation: AbeClientInformationInterface) {.base.}
method initApp*(this: AllBinaryGameCanvas, abeClientInformation: AbeClientInformationInterface) {.base.}
method initTouch*(this: AllBinaryGameCanvas) {.base.}
method updateCurrentTouchInputFactory*(this: AllBinaryGameCanvas, nextTouchInput: BaseTouchInput) {.base.}
method updateTouch*(this: AllBinaryGameCanvas) {.base.}
method updateTouch2*(this: AllBinaryGameCanvas) {.base.}
method postInitTouch*(this: AllBinaryGameCanvas) {.base.}
method initCommands*(this: AllBinaryGameCanvas, cmdListener: CommandListener)
method addCommands*(this: AllBinaryGameCanvas) {.base.}
method itemStateChanged*(this: AllBinaryGameCanvas, item: Item)
method updateScreenButtonPaintable*(this: AllBinaryGameCanvas) {.base.}
method updateScreenButtonPaintable2*(this: AllBinaryGameCanvas) {.base.}
method getLayerManager*(this: AllBinaryGameCanvas): AllBinaryGameLayerManager {.discardable.}
method setLayerManager*(this: AllBinaryGameCanvas, layerManager: AllBinaryGameLayerManager) {.base.}
method isGameOver*(this: AllBinaryGameCanvas): bool {.discardable.}
method setGameOver*(this: AllBinaryGameCanvas, gameOver: bool) {.base.}
method processGameOver*(this: AllBinaryGameCanvas)
method isHighScoreSubmitted*(this: AllBinaryGameCanvas): bool {.discardable.}
method setHighScoreSubmitted*(this: AllBinaryGameCanvas, highScoreSubmitted: bool)
method getGameState*(this: AllBinaryGameCanvas): GameState {.discardable.}
method setGameState*(this: AllBinaryGameCanvas, gameState: GameState)
method updateGameState*(this: AllBinaryGameCanvas) {.base.}
method updateGameKeyEventProcessor*(this: AllBinaryGameCanvas) {.base.}
method removeAllGameKeyInputListenersOnBuild*(this: AllBinaryGameCanvas) {.base.}
method removeAllGameKeyInputListeners*(this: AllBinaryGameCanvas) {.base.}
method removeAllGameKeyInputListeners2*(this: AllBinaryGameCanvas) {.base.}
method removeKeyInputListener*(this: AllBinaryGameCanvas, playerGameInput: PlayerGameInput) {.base.}
method updateEndGameProcessor*(this: AllBinaryGameCanvas) {.base.}
method updateEndGameProcessor2*(this: AllBinaryGameCanvas) {.base.}
method buildGameInit*(this: AllBinaryGameCanvas, isPortion: bool) {.base.}
method cleanupGame*(this: AllBinaryGameCanvas) {.base.}
method loadResourceLoadingLevel*(this: AllBinaryGameCanvas, resourceLoadingLevel: ResourceLoadingLevel) {.base.}
method loadResources*(this: AllBinaryGameCanvas, level: int32) {.base.}
method updateColor*(this: AllBinaryGameCanvas) {.base.}
method buildGame*(this: AllBinaryGameCanvas, portion: int32) {.base.}
method buildGame2*(this: AllBinaryGameCanvas) {.base.}
method addKeyInputListener*(this: AllBinaryGameCanvas, playerGameInput: PlayerGameInput) {.base.}
method setGameCanvasStartListener*(this: AllBinaryGameCanvas, gameCanvasStartListener: DemoPaintableInterface) {.base.}
method loadState*(this: AllBinaryGameCanvas) {.base.}
method getLoadStateHashtable*(this: AllBinaryGameCanvas): ABHashtable {.discardable.}
method setLoadStateHashtable*(this: AllBinaryGameCanvas, hashtable: ABHashtable)
method getCurrentStateHashtable*(this: AllBinaryGameCanvas): ABHashtable {.discardable.}
method paintGameOver*(this: AllBinaryGameCanvas, graphics: Graphics) {.base.}
method draw*(this: AllBinaryGameCanvas, graphics: Graphics)
method clear*(this: AllBinaryGameCanvas, graphics: Graphics) {.base.}
method paint*(this: AllBinaryGameCanvas, graphics: Graphics)
method paintThreed*(this: AllBinaryGameCanvas, graphics: Graphics)
method processEndLevelIntermissionGameState*(this: AllBinaryGameCanvas) {.base.}
method nonBotPaint*(this: AllBinaryGameCanvas, graphics: Graphics) {.base.}
method paintIntermission*(this: AllBinaryGameCanvas, graphics: Graphics) {.base.}
method keyPressed*(this: AllBinaryGameCanvas, keyCode: int32)
method keyReleased*(this: AllBinaryGameCanvas, keyCode: int32)
method keyRepeated*(this: AllBinaryGameCanvas, keyCode: int32)
method keyPressedByDevice*(this: AllBinaryGameCanvas, keyCode: int32, deviceId: int32)
method keyRepeatedByDevice*(this: AllBinaryGameCanvas, keyCode: int32, deviceId: int32)
method keyReleasedByDevice*(this: AllBinaryGameCanvas, keyCode: int32, deviceId: int32)
method handleRawKey*(this: AllBinaryGameCanvas, keyCode: int32, deviceId: int32, repeated: bool) {.base.}
method endProgress*(this: AllBinaryGameCanvas, isProgress: bool): int32 {.base, discardable.}
method processPlayingGame*(this: AllBinaryGameCanvas) {.base.}
method threadInit*(this: AllBinaryGameCanvas) {.base.}
method processGame*(this: AllBinaryGameCanvas) {.base.}
method notifyDonePainting*(this: AllBinaryGameCanvas) {.base.}
method shouldWait*(this: AllBinaryGameCanvas) {.base.}
method run*(this: AllBinaryGameCanvas)
method run2*(this: AllBinaryGameCanvas) {.base.}
method run3*(this: AllBinaryGameCanvas) {.base.}
method setRunning*(this: AllBinaryGameCanvas, running: bool)
method `end`*(this: AllBinaryGameCanvas) {.base.}
method endGameThread*(this: AllBinaryGameCanvas) {.base.}
method createHighScore*(this: AllBinaryGameCanvas, score: int64): HighScore {.base, discardable.}
method setHighScore*(this: AllBinaryGameCanvas, abeClientInformation: AbeClientInformationInterface, name: string, score: int64, autoSubmit: bool, isLast: bool) {.base.}
method setHighScore2*(this: AllBinaryGameCanvas, abeClientInformation: AbeClientInformationInterface, name: string, score: int64, autoSubmit: bool, isLast: bool) {.base.}
method getGameStateTimeHelper*(this: AllBinaryGameCanvas): TimeDelayHelper {.base, discardable.}
method setInitialized*(this: AllBinaryGameCanvas, initialized: bool) {.base.}
method isInitialized*(this: AllBinaryGameCanvas): bool {.discardable.}
method getSourceId*(this: AllBinaryGameCanvas): int32 {.discardable.}
method setProgressPaintable*(this: AllBinaryGameCanvas, paintable: PaintableInterface) {.base.}
method getStartIntermissionInterface*(this: AllBinaryGameCanvas): IntermissionInterface {.discardable.}
method getEndLevelIntermissionInterface*(this: AllBinaryGameCanvas): IntermissionInterface {.discardable.}
method setTouchPaintableP*(this: AllBinaryGameCanvas, paintable: Paintable) {.base.}
method getTouchPaintableP*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method setEndGamePaintable*(this: AllBinaryGameCanvas, endGamePaintable: Paintable) {.base.}
method getEndGamePaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method setIntermissionPaintable*(this: AllBinaryGameCanvas, intermissionPaintable: Paintable) {.base.}
method getIntermissionPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method getEndGameInfoP*(this: AllBinaryGameCanvas): EndGameInfo {.base, discardable.}
method setHighScoresPaintable*(this: AllBinaryGameCanvas, highScoresPaintable: Paintable) {.base.}
method getHighScoresPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method getRealHighScoresPaintable*(this: AllBinaryGameCanvas): HighScoresPaintable {.base, discardable.}
method clearPlayerGameInputList*(this: AllBinaryGameCanvas) {.base.}
method addPlayerGameInput*(this: AllBinaryGameCanvas, playerGameInput: PlayerGameInput) {.base.}
method setMenuInputProcessor*(this: AllBinaryGameCanvas, menuInputProcessor: BasicMenuInputProcessor) {.base.}
method getMenuInputProcessor*(this: AllBinaryGameCanvas): BasicMenuInputProcessor {.base, discardable.}
method getMenuForm*(this: AllBinaryGameCanvas): ScrollSelectionForm {.base, discardable.}
method setMenuForm*(this: AllBinaryGameCanvas, menuForm: ScrollSelectionForm) {.base.}
method getStartLevel*(this: AllBinaryGameCanvas): int32 {.base, discardable.}
method setStartLevel*(this: AllBinaryGameCanvas, startLevel: int32) {.base.}
method setTouchButtonsPaintable*(this: AllBinaryGameCanvas, touchButtonsPaintable: Paintable) {.base.}
method getTouchButtonsPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method setGameInputProcessor*(this: AllBinaryGameCanvas, gameInputProcessor: Processor) {.base.}
method getGameInputProcessor*(this: AllBinaryGameCanvas): Processor {.base, discardable.}
method setEndGameProcessor*(this: AllBinaryGameCanvas, endGameProcessor: Processor) {.base.}
method getEndGameProcessor*(this: AllBinaryGameCanvas): Processor {.base, discardable.}
method setEndGameStatePaintable*(this: AllBinaryGameCanvas, endGameStatePaintable: Paintable) {.base.}
method getEndGameStatePaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method setNonBotPaintableP*(this: AllBinaryGameCanvas, nonBotPaintable: Paintable) {.base.}
method getNonBotPaintableP*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method setStartIntermissionPaintable*(this: AllBinaryGameCanvas, startIntermissionPaintable: InitUpdatePaintable) {.base.}
method getStartIntermissionPaintable*(this: AllBinaryGameCanvas): InitUpdatePaintable {.base, discardable.}
method setMainStateProcessor*(this: AllBinaryGameCanvas, mainStateProcessor: Processor) {.base.}
method getMainStateProcessor*(this: AllBinaryGameCanvas): Processor {.base, discardable.}
method setProcessGameProcessor*(this: AllBinaryGameCanvas, processGameProcessor: Processor) {.base.}
method getProcessGameProcessor*(this: AllBinaryGameCanvas): Processor {.base, discardable.}
method setOpenMenuPaintable*(this: AllBinaryGameCanvas, openMenuPaintable: Paintable) {.base.}
method getOpenMenuPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method setPopupMenuInputProcessor*(this: AllBinaryGameCanvas, popupMenuInputProcessor: BasicMenuInputProcessor) {.base.}
method getPopupMenuInputProcessor*(this: AllBinaryGameCanvas): BasicMenuInputProcessor {.base, discardable.}
method getSensorGameUpdateProcessor*(this: AllBinaryGameCanvas): SensorGameUpdateProcessor {.base, discardable.}
method getRawGameInputProcessor*(this: AllBinaryGameCanvas): InputProcessor {.base, discardable.}
method getRawInputProcessor*(this: AllBinaryGameCanvas): InputProcessor {.base, discardable.}
method setInputProcessor*(this: AllBinaryGameCanvas, inputProcessor: InputProcessor) {.base.}
method getInputProcessor*(this: AllBinaryGameCanvas): InputProcessor {.base, discardable.}
method setMenuPaintable*(this: AllBinaryGameCanvas, menuPaintable: Paintable) {.base.}
method getMenuPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method setFormPaintable*(this: AllBinaryGameCanvas, formPaintable: Paintable) {.base.}
method getFormPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method setGameSpecificPaintableP*(this: AllBinaryGameCanvas, gameSpecificPaintable: Paintable) {.base.}
method getGameSpecificPaintableP*(this: AllBinaryGameCanvas): Paintable {.base, discardable.}
method isSingleThread*(this: AllBinaryGameCanvas): bool {.discardable.}
method isRunningInAnotherThread*(this: AllBinaryGameCanvas): bool {.base, discardable.}
method getType*(this: AllBinaryGameCanvas): int32 {.discardable.}
method getTitle*(this: AllBinaryGameCanvas): string {.discardable.}
method isPaused*(this: AllBinaryGameCanvas): bool {.discardable.}
import javax/microedition/lcdui/ChoiceGroup as ChoiceGroupModule
export ChoiceGroupModule
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/NullCommandListener as NullCommandListenerModule
export NullCommandListenerModule
import org/allbinary/AndroidUtil as AndroidUtilModule
export AndroidUtilModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/canvas/GameStatisticsFactory as GameStatisticsFactoryModule
export GameStatisticsFactoryModule
import org/allbinary/debug/DebugFactory as DebugFactoryModule
export DebugFactoryModule
import org/allbinary/debug/NoDebug as NoDebugModule
export NoDebugModule
import org/allbinary/game/GameAdState as GameAdStateModule
export GameAdStateModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/game/Intermission as IntermissionModule
export IntermissionModule
import org/allbinary/game/PlayerTypesFactory as PlayerTypesFactoryModule
export PlayerTypesFactoryModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/InGameFeatures as InGameFeaturesModule
export InGameFeaturesModule
import org/allbinary/game/configuration/InGameOptionsForm as InGameOptionsFormModule
export InGameOptionsFormModule
import org/allbinary/game/configuration/event/ChangedGameFeatureListener as ChangedGameFeatureListenerModule
export ChangedGameFeatureListenerModule
import org/allbinary/game/configuration/event/GameInitializedEvent as GameInitializedEventModule
export GameInitializedEventModule
import org/allbinary/game/configuration/event/GameInitializedEventHandler as GameInitializedEventHandlerModule
export GameInitializedEventHandlerModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/game/configuration/feature/GameFeatureUtil as GameFeatureUtilModule
export GameFeatureUtilModule
import org/allbinary/game/configuration/feature/InputFeatureFactory as InputFeatureFactoryModule
export InputFeatureFactoryModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule
import org/allbinary/game/configuration/feature/SensorFeatureFactory as SensorFeatureFactoryModule
export SensorFeatureFactoryModule
import org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory as GameLevelDisplayChangeEventListenersFactoryModule
export GameLevelDisplayChangeEventListenersFactoryModule
import org/allbinary/game/init/GameInitializationUtil as GameInitializationUtilModule
export GameInitializationUtilModule
import org/allbinary/game/input/NoPlayerGameInput as NoPlayerGameInputModule
export NoPlayerGameInputModule
import org/allbinary/game/layer/SWTUtil as SWTUtilModule
export SWTUtilModule
import org/allbinary/game/paint/ColorFillPaintableFactory as ColorFillPaintableFactoryModule
export ColorFillPaintableFactoryModule
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule
import org/allbinary/game/score/NullHighScoresSingletonFactory as NullHighScoresSingletonFactoryModule
export NullHighScoresSingletonFactoryModule
import org/allbinary/game/score/displayable/HighScoreTextBox as HighScoreTextBoxModule
export HighScoreTextBoxModule
import org/allbinary/graphics/GraphicsStrings as GraphicsStringsModule
export GraphicsStringsModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/ScreenCaptureFactory as ScreenCaptureFactoryModule
export ScreenCaptureFactoryModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/displayable/command/MyCommandsFactory as MyCommandsFactoryModule
export MyCommandsFactoryModule
import org/allbinary/graphics/displayable/event/DisplayChangeEventHandler as DisplayChangeEventHandlerModule
export DisplayChangeEventHandlerModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/graphics/form/CommandCurrentSelectionFormFactory as CommandCurrentSelectionFormFactoryModule
export CommandCurrentSelectionFormFactoryModule
import org/allbinary/graphics/form/FormPaintable as FormPaintableModule
export FormPaintableModule
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
import org/allbinary/graphics/opengles/OpenGLFeatureUtil as OpenGLFeatureUtilModule
export OpenGLFeatureUtilModule
import org/allbinary/graphics/opengles/OpenGLThreadUtil as OpenGLThreadUtilModule
export OpenGLThreadUtilModule
import org/allbinary/graphics/paint/NullInitUpdatePaintable as NullInitUpdatePaintableModule
export NullInitUpdatePaintableModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/image/opengles/OpenGLImageSpecificFactory as OpenGLImageSpecificFactoryModule
export OpenGLImageSpecificFactoryModule
import org/allbinary/input/gyro/SingleSensorGameUpdateProcessor as SingleSensorGameUpdateProcessorModule
export SingleSensorGameUpdateProcessorModule
import org/allbinary/input/motion/button/NoButtonsTouchInputFactory as NoButtonsTouchInputFactoryModule
export NoButtonsTouchInputFactoryModule
import org/allbinary/input/motion/button/TouchButtonsPaintableFactory as TouchButtonsPaintableFactoryModule
export TouchButtonsPaintableFactoryModule
import org/allbinary/input/motion/button/TouchScreenFactory as TouchScreenFactoryModule
export TouchScreenFactoryModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/system/os/OperatingSystemFactory as OperatingSystemFactoryModule
export OperatingSystemFactoryModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/media/audio/AllBinaryMediaManager as AllBinaryMediaManagerModule
export AllBinaryMediaManagerModule
import org/allbinary/media/audio/PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactoryModule
export PrimaryPlayerQueueFactoryModule
import org/allbinary/media/audio/SecondaryPlayerQueueFactory as SecondaryPlayerQueueFactoryModule
export SecondaryPlayerQueueFactoryModule
import org/allbinary/media/audio/SelectSound as SelectSoundModule
export SelectSoundModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/thread/SecondaryThreadPool as SecondaryThreadPoolModule
export SecondaryThreadPoolModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/game/displayable/canvas/NoMenuInputProcessor as NoMenuInputProcessorModule
export NoMenuInputProcessorModule
import org/allbinary/game/displayable/canvas/BaseGameBehavior as BaseGameBehaviorModule
export BaseGameBehaviorModule
import org/allbinary/game/displayable/canvas/BasicPopupMenuPaintable as BasicPopupMenuPaintableModule
export BasicPopupMenuPaintableModule
import org/allbinary/game/displayable/canvas/PopupMenuInputProcessor as PopupMenuInputProcessorModule
export PopupMenuInputProcessorModule
import org/allbinary/game/displayable/canvas/InGameMenuBehavior as InGameMenuBehaviorModule
export InGameMenuBehaviorModule
import org/allbinary/game/displayable/canvas/GameLimitedCommandTextItemArrayFactory as GameLimitedCommandTextItemArrayFactoryModule
export GameLimitedCommandTextItemArrayFactoryModule
import org/allbinary/game/displayable/canvas/PopupCommandFormInputProcessor as PopupCommandFormInputProcessorModule
export PopupCommandFormInputProcessorModule
import org/allbinary/game/displayable/canvas/NullWaitGameRunnable as NullWaitGameRunnableModule
export NullWaitGameRunnableModule
import org/allbinary/game/displayable/canvas/GameProcessor as GameProcessorModule
export GameProcessorModule
import org/allbinary/game/displayable/canvas/CheatGameInputProcessor as CheatGameInputProcessorModule
export CheatGameInputProcessorModule
import org/allbinary/game/displayable/canvas/EndGameProcessor as EndGameProcessorModule
export EndGameProcessorModule
import org/allbinary/game/displayable/canvas/StartIntermissionProcessor as StartIntermissionProcessorModule
export StartIntermissionProcessorModule
import org/allbinary/game/displayable/canvas/EndGamePaintable as EndGamePaintableModule
export EndGamePaintableModule
import org/allbinary/game/displayable/canvas/NullDemoPaintable as NullDemoPaintableModule
export NullDemoPaintableModule
import org/allbinary/game/displayable/canvas/GameCanvasInputProcessor as GameCanvasInputProcessorModule
export GameCanvasInputProcessorModule
import org/allbinary/game/displayable/canvas/FormInputProcessor as FormInputProcessorModule
export FormInputProcessorModule
import org/allbinary/game/displayable/canvas/SaveHighScoreRunnable as SaveHighScoreRunnableModule
export SaveHighScoreRunnableModule

var AllBinaryGameCanvas_idValue: int32
var AllBinaryGameCanvas_idSet = false
proc id*(t: typedesc[AllBinaryGameCanvas]): int32 =
    if not AllBinaryGameCanvas_idSet:
        AllBinaryGameCanvas_idSet = true
        AllBinaryGameCanvas_idValue = 0
    AllBinaryGameCanvas_idValue
var AllBinaryGameCanvas_TYPEValue: int32
var AllBinaryGameCanvas_TYPESet = false
proc TYPE*(t: typedesc[AllBinaryGameCanvas]): int32 =
    if not AllBinaryGameCanvas_TYPESet:
        AllBinaryGameCanvas_TYPESet = true
        AllBinaryGameCanvas_TYPEValue = 2
    AllBinaryGameCanvas_TYPEValue

# Java field initializers run after the base initializer
proc initFieldsAllBinaryGameCanvas(this: AllBinaryGameCanvas) =
    this.basicColorFactory = BasicColorFactory.getInstance()
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    this.touchFeatureFactory = TouchFeatureFactory.getInstance()
    this.openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
    this.touchButtonFactory = TouchButtonFactory.getInstance()
    this.gameAdStateFactory = GameAdStateFactory.getInstance()
    this.gameStrings = GameStrings.getInstance()
    this.gameInputStrings = GameInputStrings.getInstance()
    this.gameStateFactory = GameStateFactory.getInstance()
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    this.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
    this.gameRunnable = newGameCanvasRunnable(this)
    this.gamePauseRunnable = newGameCanvasPauseRunnable(this)
    this.formUtil = FormUtil.getInstance()
    this.myFormUtil = MyFormUtil.getInstance()
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.gameSpecificPaintable = NullPaintable.getInstance()
    this.sensorGameUpdateProcessor = newSingleSensorGameUpdateProcessor()
    this.endGameInfo = newEndGameInfo()
    this.startIntermissionInterface = newIntermission()
    this.endLevelIntermissionInterface = newIntermission()
    this.gameLayerManager = AllBinaryGameLayerManager.getNullInstance()
    this.gameState = this.gameStateFactory.NO_GAME_STATE
    this.gameOver = false
    this.initialized = false
    this.gameStateTimeHelper = newTimeDelayHelper(0)
    
    this.highScoreSubmitted = false
    this.realHighScoresPaintable = newHighScoresPaintable()
    this.highScoresPaintable = NullPaintable.getInstance()
    this.localPlayerGameInputList = newBasicArrayListD()
    this.isCheating = false
    this.hashtable = this.stdUtil.NULL_TABLE
    this.isSingleKeyRepeatableProcessing = false
    this.gameInitializationInterfaceFactoryInterface = BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
    this.touchButtonsPaintable = NullPaintable.getInstance()
    this.touchPaintable = NullPaintable.getInstance()
    this.cheatProcessor = NoPlayerGameInput.getInstance()
    this.gameInputProcessor = Processor.getInstance()
    this.endGameProcessor = Processor.getInstance()
    this.realEndGameProcessor = Processor.getInstance()
    this.startIntermissionProcessor = Processor.getInstance()
    this.realStartIntermissionProcessor = Processor.getInstance()
    this.endGamePaintable = NullPaintable.getInstance()
    this.endGameStatePaintable = NullPaintable.getInstance()
    this.nonBotPaintable = NullPaintable.getInstance()
    this.intermissionPaintable = NullPaintable.getInstance()
    this.startIntermissionPaintable = NullInitUpdatePaintable.getInstance()
    this.mainStateProcessor = Processor.getInstance()
    this.processGameProcessor = Processor.getInstance()
    
    this.startLevel = 0
    this.mainMenuInputProcessor = NoMenuInputProcessor.getInstance()
    this.popupMenuInputProcessor = NoMenuInputProcessor.getInstance()
    this.menuInputProcessor = NoMenuInputProcessor.getInstance()
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
    this.formPaintable = NullPaintable.getInstance()
    this.openMenuPaintable = NullPaintable.getInstance()
    this.menuPaintable = NullPaintable.getInstance()
    this.currentTouchInputFactory = NoButtonsTouchInputFactory.getInstance()
    this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(this.basicColorFactory.BLACK, true)
    this.baseGameStatistics = GameStatisticsFactory.getInstance()
    this.primaryPlayerQueue = PrimaryPlayerQueueFactory.getInstance()
    this.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
    this.BUILD_GAME = "buildGame"
    this.gameTypeFactory = GameTypeFactory.getInstance()
    this.screenCapture = ScreenCaptureFactory.getInstance()
    this.basicMotionGesturesHandler = BasicMotionGesturesHandler.getInstance()
    this.gameKeyEventHandler = GameKeyEventHandler.getInstance()
    
    
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance()
    this.fontHeightP = 0
    this.gameCanvasStartListener = NullDemoPaintable.NULL_DEMO_PAINTABLEStatic
    this.rawGameInputProcessor = newGameCanvasInputProcessor(this)
    this.rawInputProcessor = newFormInputProcessor(this)
    this.inputProcessor = this.getRawGameInputProcessor()
    this.YIELD_SLEEP = 100'i64
    discard

proc initAllBinaryGameCanvas*(this: AllBinaryGameCanvas, commandListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool) =
        initRunnableCanvas(this, commandListener, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, true)
        this.initFieldsAllBinaryGameCanvas()
        this.highScoresHelper = highScoresFactoryInterface.createHighScoresHelper()
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        this.init(gameLayerManager, buffered)
        this.highScoresFactoryInterface = highScoresFactoryInterface
        if this.gameLayerManager.getGameInfo().getGameType() == this.gameTypeFactory.BOT or this.gameLayerManager.getGameInfo().getGameType() == this.gameTypeFactory.NONE:
            this.gameBehavior = DemoGameBehavior.getInstance()
            this.menuBehavior = BaseMenuBehavior.getInstance()
        else:
            this.gameBehavior = BaseGameBehavior.getInstance()
            this.menuBehavior = this.getInGameMenuBehavior()
        this.initPopupMenu()
        this.initMenu()
        this.initSpecialPaint()
        DisplayChangeEventHandler.getInstance().addListenerInterface(this)

proc newAllBinaryGameCanvas*(commandListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool): AllBinaryGameCanvas =
    result = AllBinaryGameCanvas()
    initAllBinaryGameCanvas(result, commandListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)

method updateMeasurement*(this: AllBinaryGameCanvas, graphics: Graphics) =
        try:
            let font: Font = graphics.getFont()
            this.logUtil.putF(newStringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT)
            this.fontHeightP = font.getHeight()
            this.myFormUtil.updateMeasurement(graphics)
            let popupMenuRectangle: Rectangle = this.myFormUtil.getPopupMenuRectangle()
            let basicPopupMenuPaintable: BasicPopupMenuPaintable = (BasicPopupMenuPaintable(JObject(this.getOpenMenuPaintable())))
            basicPopupMenuPaintable.init(popupMenuRectangle)
            if this.getPopupMenuInputProcessor() != NoMenuInputProcessor.getInstance():
                let popupMenuInputProcessor: PopupMenuInputProcessor = (PopupMenuInputProcessor(JObject(this.getPopupMenuInputProcessor())))
                popupMenuInputProcessor.init(popupMenuRectangle)
            this.myFontProcessor = MyFontProcessor.getInstance()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)

method getInGameMenuBehavior*(this: AllBinaryGameCanvas): BaseMenuBehavior {.base, discardable.} =
        return InGameMenuBehavior.getInstance()

method setCurrentThread*(this: AllBinaryGameCanvas) =
        if J2MEUtil.isHTML():
            procCall RunnableCanvas(this).setCurrentThreadFake()
        else:
            procCall RunnableCanvas(this).setCurrentThread()

method onEvent*(this: AllBinaryGameCanvas, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onDisplayChangeEvent*(this: AllBinaryGameCanvas, displayChangeEvent: DisplayChangeEvent) =
        try:
            this.logUtil.putF(newStringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT)
            this.myFontProcessor = this.updateMyFontProcessor
            this.menuBehavior.onDisplayChangeEvent(this, displayChangeEvent)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)

method updateMenuFromEvent*(this: AllBinaryGameCanvas, displayChangeEvent: DisplayChangeEvent) {.base.} =
        let formType: FormType = FormTypeFactory.getInstance().getFormType()
        let rectangle: Rectangle = this.formUtil.createFormRectangle()
        this.menuForm.init(rectangle, formType)
        if this.currentTouchInputFactory != NoButtonsTouchInputFactory.getInstance():
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory.getList())
        this.myFontProcessor = this.updateMyFontProcessor

method processSleep*(this: AllBinaryGameCanvas) =
        procCall RunnableCanvas(this).processSleep()
        if AllBinaryMediaManager.update():
            if (not this.primaryPlayerQueue.process()):
                this.secondaryPlayerQueue.process()
        if this.menuInputProcessor.processInputList() != -1:
            this.runnableCanvasRefreshHelper.process()

method initPopupMenu*(this: AllBinaryGameCanvas) {.base.} =
        if this.popupMenuInputProcessor == NoMenuInputProcessor.getInstance():
            let features: Features = Features.getInstance()
            let popupMenuRectangle: Rectangle = this.myFormUtil.getPopupMenuRectangle()
            if features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED):
                this.setOpenMenuPaintable(newBasicPopupMenuPaintable(popupMenuRectangle, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()))
                this.setPopupMenuInputProcessor(newPopupMenuInputProcessor(newBasicArrayListD(), -1, this, popupMenuRectangle))
        else:
            discard

method initMenu*(this: AllBinaryGameCanvas) {.base.} =
        try:
            this.menuBehavior.initMenu(this)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e)

method initMenu2*(this: AllBinaryGameCanvas) {.base.} =
        this.closeMenu()
        let formType: FormType = FormTypeFactory.getInstance().getFormType()
        let gameLimitedCommandTextItemArrayFactory: GameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance()
        let commandTextItemArrayFactory: CommandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        let items: JArray[ABCustomItem] = commandTextItemArrayFactory.getInstance(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor())
        let rectangle: Rectangle = this.formUtil.createFormRectangle()
        this.setMenuForm(CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()))
        let scrollSelectionForm: ScrollSelectionForm = this.getMenuForm()
        let features: Features = Features.getInstance()
        if features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED):
            this.mainMenuInputProcessor = newPopupCommandFormInputProcessor(newBasicArrayListD(), -1, this, scrollSelectionForm, PopupMenuInputProcessor(JObject(this.getPopupMenuInputProcessor())))
        else:
            discard
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor())
        if scrollSelectionForm != ScrollSelectionFormNoneFactory.getInstance():
            this.setFormPaintable(newFormPaintable(scrollSelectionForm))
        else:
            discard
        this.closeMenu()

method updateMenu*(this: AllBinaryGameCanvas) {.base.} =
        try:
            this.menuBehavior.updateMenu(this)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e)

method updateMenu2*(this: AllBinaryGameCanvas) {.base.} =
        let scrollSelectionForm: ScrollSelectionForm = this.getMenuForm()
        scrollSelectionForm.deleteAll()
        let gameLimitedCommandTextItemArrayFactory: GameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance()
        let commandTextItemArrayFactory: CommandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        let items: JArray[ABCustomItem] = commandTextItemArrayFactory.getInstance(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor())
        let size: int32 = items.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                scrollSelectionForm.append(items[index])
        let formType: FormType = FormTypeFactory.getInstance().getFormType()
        let rectangle: Rectangle = this.formUtil.createFormRectangle()
        scrollSelectionForm.init(rectangle, formType)

method pause*(this: AllBinaryGameCanvas) =
        this.gameBehavior.pause(this)
        this.closeMenu()
        procCall RunnableCanvas(this).pause()
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance())
        this.tsUtil.gc()

method unPause*(this: AllBinaryGameCanvas) =
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.UNPAUSE)
        this.closeMenu()
        this.tsUtil.gc()
        procCall RunnableCanvas(this).unPause()
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance())
        this.gameBehavior.unPause(this)

method isPausable*(this: AllBinaryGameCanvas): bool {.discardable.} =
        if CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance():
            return true
        else:
            return false

method popupMenu*(this: AllBinaryGameCanvas) =
        this.menuBehavior.popupMenu(this)

method popupMenu2*(this: AllBinaryGameCanvas) {.base.} =
        this.primaryPlayerQueue.add(SelectSound.getInstance())
        this.setMenuPaintable(this.getFormPaintable())
        this.setMenuInputProcessor(this.mainMenuInputProcessor)
        this.basicMotionGesturesHandler.addListenerInterface(this.mainMenuInputProcessor)
        this.gameKeyEventHandler.addListener(this.mainMenuInputProcessor)

method toggleMenu*(this: AllBinaryGameCanvas) =
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.TOGGLE_MENU)
        if this.getMenuPaintable() == this.getOpenMenuPaintable():
            this.pause()
            this.updateMenu()
            this.popupMenu()
        elif this.getMenuPaintable() == this.getFormPaintable():
            this.primaryPlayerQueue.add(SelectSound.getInstance())
            this.unPause()

method closeMenu*(this: AllBinaryGameCanvas) =
        this.menuBehavior.closeMenu(this)

method closeMenu2*(this: AllBinaryGameCanvas) {.base.} =
        this.setMenuPaintable(this.getOpenMenuPaintable())
        this.basicMotionGesturesHandler.removeListener(this.mainMenuInputProcessor)
        this.gameKeyEventHandler.removeListener(this.mainMenuInputProcessor)
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor())

method open*(this: AllBinaryGameCanvas) =
        this.basicMotionGesturesHandler.addListenerInterface(this.menuInputProcessor)
        this.gameKeyEventHandler.addListener(this.menuInputProcessor)

method close*(this: AllBinaryGameCanvas) =
        this.basicMotionGesturesHandler.removeListener(this.menuInputProcessor)
        this.gameKeyEventHandler.removeListener(this.menuInputProcessor)
        this.primaryPlayerQueue.clear()
        this.secondaryPlayerQueue.clear()

method processorInit*(this: AllBinaryGameCanvas) {.base.} =
        this.setMainStateProcessor(Processor.getInstance())
        this.setProcessGameProcessorInit()

method setProcessGameProcessorInit*(this: AllBinaryGameCanvas) {.base.} =
        this.setProcessGameProcessor(newGameProcessor(this))

method initSpecialPaint*(this: AllBinaryGameCanvas) {.base.} =
        this.menuBehavior.initSpecialPaint(this)

method init*(this: AllBinaryGameCanvas, gameLayerManager: AllBinaryGameLayerManager, buffered: bool) {.base.} =
        this.gameStateTimeHelper.setStartTimeTNT()
        this.setHighScoreSubmitted(false)
        this.setLayerManager(gameLayerManager)
        if (not buffered):
            let BUFF_MESSAGE: string = "XXX Not Buffering Causes Concurrency Issues XXX"
            this.logUtil.putF(BUFF_MESSAGE, this, this.commonStrings.CONSTRUCTOR)
        else:
            raise newJException("Exception", "Buffering is disabled")
        this.setGameInputProcessor(Processor.getInstance())
        let features: Features = Features.getInstance()
        if features.isFeature(GameFeatureFactory.getInstance().CHEATING):
            this.isCheating = true
            this.cheatProcessor = newCheatGameInputProcessor(this)
            this.gameKeyEventHandler.addListener(this.cheatProcessor)
        else:
            this.isCheating = false
            this.cheatProcessor = NoPlayerGameInput.getInstance()
        this.realEndGameProcessor = newEndGameProcessor(this)
        this.setEndGameProcessor(Processor.getInstance())
        this.realStartIntermissionProcessor = newStartIntermissionProcessor(this)
        this.startIntermissionProcessor = Processor.getInstance()
        this.setEndGameStatePaintable(newEndGamePaintable(this))
        this.setEndGamePaintable(NullPaintable.getInstance())
        this.setIntermissionPaintable(NullPaintable.getInstance())
        this.getStartIntermissionInterface().setListener(this)

method notifyIntermission*(this: AllBinaryGameCanvas, enable: bool) =
        if enable:
            this.startIntermissionProcessor = this.realStartIntermissionProcessor
        else:
            this.startIntermissionProcessor = Processor.getInstance()
        if enable:
            this.setIntermissionPaintable(this.getStartIntermissionPaintable())
        else:
            this.setIntermissionPaintable(NullPaintable.getInstance())

method mediaInit*(this: AllBinaryGameCanvas) {.base.} =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

method initConfigurable*(this: AllBinaryGameCanvas, abeClientInformation: AbeClientInformationInterface) {.base.} =
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(50, "Setting Configurables")
        GameInitializationUtil.getInstance().initGame(abeClientInformation, this, this.gameInitializationInterfaceFactoryInterface)
        let gameFeatureFactory: GameFeatureFactory = GameFeatureFactory.getInstance()
        let changedGameFeatureListener: ChangedGameFeatureListener = ChangedGameFeatureListener.getInstance()
        if changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND):
            let features: Features = Features.getInstance()
            this.logUtil.putF(newStringMaker().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).toString(), this, "initConfigurable")
            this.mediaInit()
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND)
        let sensorFeatureFactory: SensorFeatureFactory = SensorFeatureFactory.getInstance()
        if changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) or changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION) or changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS):
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION)
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS)
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        this.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME)

method initApp*(this: AllBinaryGameCanvas, abeClientInformation: AbeClientInformationInterface) {.base.} =
        this.initConfigurable(abeClientInformation)
        this.processorInit()
        this.sensorGameUpdateProcessor.process(this.gameLayerManager)
        this.sensorGameUpdateProcessor.sendNotifications(this.gameLayerManager)
        this.initTouch()

method initTouch*(this: AllBinaryGameCanvas) {.base.} =
        let gameInitializedEvent: GameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
        this.touchButtonFactory.defaultList()
        this.updateTouch()
        this.postInitTouch()

method updateCurrentTouchInputFactory*(this: AllBinaryGameCanvas, nextTouchInput: BaseTouchInput) {.base.} =
        if nextTouchInput != this.currentTouchInputFactory:
            this.currentTouchInputFactory = nextTouchInput
            PreLogUtil.put(this.currentTouchInputFactory.toString(), this, this.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY)
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory.getList())

method updateTouch*(this: AllBinaryGameCanvas) {.base.} =
        this.gameBehavior.updateTouch(this)

method updateTouch2*(this: AllBinaryGameCanvas) {.base.} =
        let features: Features = Features.getInstance()
        if features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS):
            if this.gameLayerManager.getGameInfo().getCurrentLevel() -% this.getStartLevel() == 1:
                this.setTouchPaintableP(NullPaintable.getInstance())

method postInitTouch*(this: AllBinaryGameCanvas) {.base.} =
        this.setTouchButtonsPaintable(TouchButtonsPaintableFactory.getInstance(this.gameLayerManager.getForegroundBasicColor()))
        this.updateScreenButtonPaintable()

method initCommands*(this: AllBinaryGameCanvas, cmdListener: CommandListener) =
        this.removeAllCommands()
        this.addCommands()
        this.setCommandListener(cmdListener)

method addCommands*(this: AllBinaryGameCanvas) {.base.} =
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        let myCommandsFactory: MyCommandsFactory = MyCommandsFactory.getInstance()
        if DebugFactory.getInstance() != NoDebug.getInstance():
            this.addCommand(gameCommandsFactory.START_TRACE)
        this.addCommand(gameCommandsFactory.RESTART_COMMAND)
        this.addCommand(myCommandsFactory.PAUSE_COMMAND)
        this.addCommand(gameCommandsFactory.QUIT_COMMAND)
        let isOverScan: bool = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
        if J2MEUtil.isHTML():
            discard
        elif SWTUtil.isSWT:
            discard
        elif (not isOverScan):
            if TouchScreenFactory.getInstance().isTouch() and newInGameFeatures().isAny():
                this.addCommand(InGameOptionsForm.DISPLAY)
            this.addCommand(gameCommandsFactory.SAVE)
            this.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM)

method itemStateChanged*(this: AllBinaryGameCanvas, item: Item) =
        try:
            let itemLabel: string = item.getLabel()
            this.logUtil.putF(newStringMaker().append(this.commonLabels.ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged")
            if (item of ChoiceGroup):
                let gameFeatureUtil: GameFeatureUtil = GameFeatureUtil.getInstance()
                if gameFeatureUtil.isExclusive(itemLabel):
                    gameFeatureUtil.updateExclusiveForChoiceGroup(ChoiceGroup(JObject(item)))
                else:
                    gameFeatureUtil.updateMultiple(ChoiceGroup(JObject(item)))
            this.sensorGameUpdateProcessor.process(this.gameLayerManager)
            this.updateTouch()
            this.updateScreenButtonPaintable()
            this.sensorGameUpdateProcessor.sendNotifications(this.gameLayerManager)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "itemStateChanged", e)

method updateScreenButtonPaintable*(this: AllBinaryGameCanvas) {.base.} =
        this.gameBehavior.updateScreenButtonPaintable(this)

method updateScreenButtonPaintable2*(this: AllBinaryGameCanvas) {.base.} =
        let features: Features = Features.getInstance()
        if features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS):
            this.setTouchPaintableP(this.getTouchButtonsPaintable())
            this.setStartLevel(this.gameLayerManager.getGameInfo().getCurrentLevel())
        elif features.isFeature(this.touchFeatureFactory.SHOW_SCREEN_BUTTONS):
            this.setTouchPaintableP(this.getTouchButtonsPaintable())
        elif features.isFeature(this.touchFeatureFactory.HIDE_SCREEN_BUTTONS):
            this.setTouchPaintableP(NullPaintable.getInstance())
        else:
            this.setTouchPaintableP(NullPaintable.getInstance())

method getLayerManager*(this: AllBinaryGameCanvas): AllBinaryGameLayerManager {.discardable.} =
        return this.gameLayerManager

method setLayerManager*(this: AllBinaryGameCanvas, layerManager: AllBinaryGameLayerManager) {.base.} =
        this.gameLayerManager = layerManager

method isGameOver*(this: AllBinaryGameCanvas): bool {.discardable.} =
        return this.gameOver

method setGameOver*(this: AllBinaryGameCanvas, gameOver: bool) {.base.} =
        this.gameOver = gameOver

method processGameOver*(this: AllBinaryGameCanvas) =
        PreLogUtil.put(this.commonStrings.START, this, this.gameStrings.SET_GAME_OVER)
        this.setGameOver(true)
        this.removePauseCommand()
        this.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE)
        this.setEndGamePaintable(this.getEndGameStatePaintable())

method isHighScoreSubmitted*(this: AllBinaryGameCanvas): bool {.discardable.} =
        return this.highScoreSubmitted

method setHighScoreSubmitted*(this: AllBinaryGameCanvas, highScoreSubmitted: bool) =
        this.highScoreSubmitted = highScoreSubmitted
        if highScoreSubmitted:
            this.highScoresHelper.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
        this.logUtil.putF(newStringMaker().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).toString(), this, "setHighScoreSubmitted")

method getGameState*(this: AllBinaryGameCanvas): GameState {.discardable.} =
        return this.gameState

method setGameState*(this: AllBinaryGameCanvas, gameState: GameState) =
        this.logUtil.putF(newStringMaker().append(this.gameStrings.GAME_STATE).append(this.stringUtil.toString(gameState)).toString(), this, this.gameStrings.SET_GAME_STATE)
        this.gameState = gameState
        this.gameStateTimeHelper.setStartTimeTNT()
        this.updateEndGameProcessor()
        this.updateGameKeyEventProcessor()
        this.gameBehavior.setGameState(this)

method updateGameState*(this: AllBinaryGameCanvas) {.base.} =
        let gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
        gameAdState.processAdState(this.gameState, this.gameLayerManager.getGameInfo().getGameType())
        if this.gameState != this.gameStateFactory.PLAYING_GAME_STATE:
            gameAdState.processPageAdState()

method updateGameKeyEventProcessor*(this: AllBinaryGameCanvas) {.base.} =
        if this.getGameState() != this.gameStateFactory.PLAYING_GAME_STATE or this.isCheating:
            discard
        else:
            discard

method removeAllGameKeyInputListenersOnBuild*(this: AllBinaryGameCanvas) {.base.} =
        this.removeAllGameKeyInputListeners()

method removeAllGameKeyInputListeners*(this: AllBinaryGameCanvas) {.base.} =
        this.gameBehavior.removeAllGameKeyInputListeners(this)

method removeAllGameKeyInputListeners2*(this: AllBinaryGameCanvas) {.base.} =
        this.logUtil.putF("Remove PlayerInput Listeners", this, "removeAllGameKeyInputListeners")
        block:
            var index: int32 = this.localPlayerGameInputList.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                var playerGameInput: PlayerGameInput = PlayerGameInput(JObject(this.localPlayerGameInputList.get(index)))
                this.removeKeyInputListener(playerGameInput)
                playerGameInput.removeNonAIInputGameKeyEvents()

method removeKeyInputListener*(this: AllBinaryGameCanvas, playerGameInput: PlayerGameInput) {.base.} =
        this.gameKeyEventHandler.removeListener(playerGameInput)

method updateEndGameProcessor*(this: AllBinaryGameCanvas) {.base.} =
        this.gameBehavior.updateEndGameProcessor(this)

method updateEndGameProcessor2*(this: AllBinaryGameCanvas) {.base.} =
        if this.getGameState() == this.gameStateFactory.SHOW_END_RESULT_GAME_STATE or this.getGameState() == this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE:
            this.setEndGameProcessor(this.realEndGameProcessor)
        else:
            this.setEndGameProcessor(Processor.getInstance())

method buildGameInit*(this: AllBinaryGameCanvas, isPortion: bool) {.base.} =
        discard

method cleanupGame*(this: AllBinaryGameCanvas) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLEANUP)
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(10, "Cleaning Up")
        this.primaryPlayerQueue.clear()
        this.secondaryPlayerQueue.clear()
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear()

method loadResourceLoadingLevel*(this: AllBinaryGameCanvas, resourceLoadingLevel: ResourceLoadingLevel) {.base.} =
        let gameInitializedEvent: GameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)

method loadResources*(this: AllBinaryGameCanvas, level: int32) {.base.} =
        let gameInitializedEvent: GameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setLevel(level)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)

method updateColor*(this: AllBinaryGameCanvas) {.base.} =
        discard

method buildGame*(this: AllBinaryGameCanvas, portion: int32) {.base.} =
        this.screenCapture.endRecording()
        this.screenCapture.startRecording()
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        let features: Features = Features.getInstance()
        progressCanvas.addNormalPortion(portion, "Generic Build")
        this.removeAllGameKeyInputListenersOnBuild()
        this.updateTouch()
        progressCanvas.addNormalPortion(portion, "High Scores")
        this.highScoresFactoryInterface.fetchHighScores(this.gameLayerManager.getGameInfo(), this.highScoresHelper)
        this.setHighScoresPaintable(NullPaintable.getInstance())
        progressCanvas.addNormalPortion(portion, "Finishing.")
        this.getEndGameInfoP().update(this.getLayerManager().getGameInfo(), this)
        this.isSingleKeyRepeatableProcessing = features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        this.setGameOver(false)
        progressCanvas.addNormalPortion(portion, "Finishing..")
        this.updateColor()
        this.getStartIntermissionPaintable().update()
        if (not this.isRunningInAnotherThread()):
            return
        progressCanvas.addNormalPortion(portion, "Finishing...")
        if this.isMainCanvas() or (not this.isInitialized()):
            if features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND):
                if (not jIsNil(this.getCustomCommandListener())):
                    progressCanvas.`end`()
            else:
                progressCanvas.`end`()
            this.setInitialized(true)
        if this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENERStatic:
            this.logUtil.putF("Show Game Paintable in DemoCanvas Thread", this, this.BUILD_GAME)
            this.gameCanvasStartListener.showGamePaintable()
        else:
            this.logUtil.putF("No GameCanvasStartListener", this, this.BUILD_GAME)
        this.colorFillPaintable.setBasicColorP(this.gameLayerManager.getBackgroundBasicColor())
        this.gameBehavior.buildGame(this)

method buildGame2*(this: AllBinaryGameCanvas) {.base.} =
        PreLogUtil.put(newStringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(this.localPlayerGameInputList.size()).toString(), this, this.BUILD_GAME)
        var playerGameInput: PlayerGameInput = nil
        block:
            var index: int32 = this.localPlayerGameInputList.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                playerGameInput = PlayerGameInput(JObject(this.localPlayerGameInputList.get(index)))
                PreLogUtil.put(newStringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.toString()).toString(), this, this.BUILD_GAME)
                playerGameInput.removeNonAIInputGameKeyEvents()
                this.addKeyInputListener(playerGameInput)

method addKeyInputListener*(this: AllBinaryGameCanvas, playerGameInput: PlayerGameInput) {.base.} =
        GameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId())

method setGameCanvasStartListener*(this: AllBinaryGameCanvas, gameCanvasStartListener: DemoPaintableInterface) {.base.} =
        this.gameCanvasStartListener = gameCanvasStartListener

method loadState*(this: AllBinaryGameCanvas) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.LOAD)
        var hashtable: ABHashtable = this.getLoadStateHashtable()
        if (not jIsNil(hashtable)) and hashtable.size() > 0:
            let levelAsString: string = jstr(hashtable.get(JObject(JObject(GameInfo.LEVEL_NAME))))
            let level: int32 = jParseInt(levelAsString).intValue()
            let gameInfo: GameInfo = this.gameLayerManager.getGameInfo()
            gameInfo.setCurrentLevel(level)

method getLoadStateHashtable*(this: AllBinaryGameCanvas): ABHashtable {.discardable.} =
        this.logUtil.putF(newStringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString(this.hashtable)).toString(), this, "getLoadStateHashtable")
        return this.hashtable

method setLoadStateHashtable*(this: AllBinaryGameCanvas, hashtable: ABHashtable) =
        this.logUtil.putF(newStringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString(hashtable)).toString(), this, "setLoadStateHashtable")
        this.hashtable = hashtable

method getCurrentStateHashtable*(this: AllBinaryGameCanvas): ABHashtable {.discardable.} =
        let hashtable: ABHashtable = this.stdUtil.createHashtable()
        let level: int32 = this.gameLayerManager.getGameInfo().getCurrentLevel()
        hashtable.put(GameInfo.LEVEL_NAME.toString(), jstr(level))
        this.logUtil.putF(newStringMaker().append("End: ").append(this.stringUtil.toString(hashtable)).toString(), this, "getCurrentStateHashtable")
        return hashtable

method paintGameOver*(this: AllBinaryGameCanvas, graphics: Graphics) {.base.} =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

method draw*(this: AllBinaryGameCanvas, graphics: Graphics) =
        this.colorFillPaintable.paint(graphics)
        this.basicSetColorUtil.setBasicColorP(graphics, this.gameLayerManager.getForegroundBasicColor())
        this.gameSpecificPaintable.paint(graphics)

method clear*(this: AllBinaryGameCanvas, graphics: Graphics) {.base.} =
        this.colorFillPaintable.paint(graphics)

method paint*(this: AllBinaryGameCanvas, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        this.baseGameStatistics.nextRefresh()
        this.draw(graphics)
        this.menuPaintable.paint(graphics)
        this.progressPaintable.paint(graphics)

method paintThreed*(this: AllBinaryGameCanvas, graphics: Graphics) =
        discard

method processEndLevelIntermissionGameState*(this: AllBinaryGameCanvas) {.base.} =
        discard

method nonBotPaint*(this: AllBinaryGameCanvas, graphics: Graphics) {.base.} =
        this.endGamePaintable.paint(graphics)
        this.intermissionPaintable.paint(graphics)
        this.paintIntermission(graphics)
        this.touchPaintable.paint(graphics)

method paintIntermission*(this: AllBinaryGameCanvas, graphics: Graphics) {.base.} =
        discard

method keyPressed*(this: AllBinaryGameCanvas, keyCode: int32) =
        this.keyPressedByDevice(keyCode, 0)

method keyReleased*(this: AllBinaryGameCanvas, keyCode: int32) =
        this.keyReleasedByDevice(keyCode, 0)

method keyRepeated*(this: AllBinaryGameCanvas, keyCode: int32) =
        this.keyRepeatedByDevice(keyCode, 0)

method keyPressedByDevice*(this: AllBinaryGameCanvas, keyCode: int32, deviceId: int32) =
        this.inputProcessor.keyPressedByDevice(keyCode, deviceId)

method keyRepeatedByDevice*(this: AllBinaryGameCanvas, keyCode: int32, deviceId: int32) =
        if this.isSingleKeyRepeatableProcessing:
            this.inputProcessor.keyPressedByDevice(keyCode, deviceId)

method keyReleasedByDevice*(this: AllBinaryGameCanvas, keyCode: int32, deviceId: int32) =
        this.inputProcessor.keyReleasedByDevice(this, keyCode, deviceId)

method handleRawKey*(this: AllBinaryGameCanvas, keyCode: int32, deviceId: int32, repeated: bool) {.base.} =
        discard

method endProgress*(this: AllBinaryGameCanvas, isProgress: bool): int32 {.base, discardable.} =
        var portion: int32 = 30
        if isProgress and this.isMainCanvas():
            let myCommandsFactory: MyCommandsFactory = MyCommandsFactory.getInstance()
            let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.start()
            this.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
            portion = 4
        return portion

method processPlayingGame*(this: AllBinaryGameCanvas) {.base.} =
        this.cheatProcessor.update()
        this.sensorGameUpdateProcessor.getInputSensor().update()
        this.gameInputProcessor.process()
        this.gameLayerManager.process()
        this.startIntermissionProcessor.process()

method threadInit*(this: AllBinaryGameCanvas) {.base.} =
        discard

method processGame*(this: AllBinaryGameCanvas) {.base.} =
        procCall RunnableCanvas(this).process()
        if AllBinaryMediaManager.update():
            if (not this.primaryPlayerQueue.process()):
                this.secondaryPlayerQueue.process()
        this.mainStateProcessor.process()
        this.menuInputProcessor.processInputList()
        this.endGameProcessor.process()
        this.baseGameStatistics.nextFrame()

method notifyDonePainting*(this: AllBinaryGameCanvas) {.base.} =
        block:
            this.threadObjectUtil.notifyObject(this)

method shouldWait*(this: AllBinaryGameCanvas) {.base.} =
        let features: Features = Features.getInstance()
        if AndroidUtil.isAndroid():
            discard
        elif features.isFeature(this.openGLFeatureFactory.OPENGL_2D):
            discard
        else:
            if features.isDefault(this.openGLFeatureFactory.OPENGL):
                let openGLImageSpecificFactory: OpenGLImageSpecificFactory = OpenGLImageSpecificFactory.getInstance()
                while openGLImageSpecificFactory.updating:
                    JThread.sleep(this.YIELD_SLEEP)

method run*(this: AllBinaryGameCanvas) =
        try:
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Game Thread")
            this.setCurrentThread()
            this.setRunning(true)
            if this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENERStatic:
                JThread.sleep(this.YIELD_SLEEP)
            this.shouldWait()
            this.threadInit()
            if this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENERStatic:
                JThread.sleep(this.YIELD_SLEEP)
            this.open()
            let gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
            gameAdState.init()
            gameAdState.setGameIsReady(true)
            this.gameBehavior.run(this)
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)

method run2*(this: AllBinaryGameCanvas) {.base.} =
        let features: Features = Features.getInstance()
        if features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) or J2MEUtil.isHTML():
            if features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD):
                this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), this, this.commonStrings.RUN)
            if J2MEUtil.isHTML():
                this.logUtil.putF(GraphicsStrings.getInstance().HTML, this, this.commonStrings.RUN)
            let currentDisplayableFactory: CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(this.gameRunnable)
            currentDisplayableFactory.setDisplayable(this)
            OpenGLThreadUtil.getInstance().onResume()
        elif features.isDefault(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS):
            this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), this, this.commonStrings.RUN)
            OpenGLThreadUtil.getInstance().onResume()
            while this.isRunning():
                this.run3()
            this.`end`()
        else:
            this.logUtil.putF("this thread", this, this.commonStrings.RUN)
            while this.isRunning():
                this.run3()
            this.`end`()

method run3*(this: AllBinaryGameCanvas) {.base.} =
        this.loopTimeHelper.setStartTime(this.gameTickTimeDelayHelper.setStartTime())
        this.gameTickDisplayInfoSingleton.update()
        this.processGame()
        this.processLoopSleep()

method setRunning*(this: AllBinaryGameCanvas, running: bool) =
        procCall RunnableCanvas(this).setRunning(running)
        try:
            let features: Features = Features.getInstance()
            if running:
                discard
            else:
                if features.isDefault(this.openGLFeatureFactory.OPENGL) or SWTUtil.isSWT:
                    if this.gameLayerManager.getGameInfo().getGameType() != this.gameTypeFactory.BOT:
                        let currentDisplayableFactory: CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                        currentDisplayableFactory.clearRunnable()
                    this.`end`()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e)

method `end`*(this: AllBinaryGameCanvas) {.base.} =
        this.screenCapture.endRecording()
        this.baseGameStatistics.add(newStringMaker().append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString())
        this.baseGameStatistics.init()
        this.gameKeyEventHandler.removeListener(this.cheatProcessor)
        this.close()
        this.removeAllGameKeyInputListeners()
        this.endGameThread()

method endGameThread*(this: AllBinaryGameCanvas) {.base.} =
        DisplayChangeEventHandler.getInstance().removeListener(this)
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
        var gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
        gameAdState.notPlayingAdState()

method createHighScore*(this: AllBinaryGameCanvas, score: int64): HighScore {.base, discardable.} =
        let gameInfo: GameInfo = this.gameLayerManager.getGameInfo()
        return newHighScore(0, "NONE", newGameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score)

method setHighScore*(this: AllBinaryGameCanvas, abeClientInformation: AbeClientInformationInterface, name: string, score: int64, autoSubmit: bool, isLast: bool) {.base.} =
        this.gameBehavior.setHighScore(abeClientInformation, this, name, score, autoSubmit, isLast)

method setHighScore2*(this: AllBinaryGameCanvas, abeClientInformation: AbeClientInformationInterface, name: string, score: int64, autoSubmit: bool, isLast: bool) {.base.} =
        let highScore: HighScore = this.createHighScore(score)
        let textBox: HighScoreTextBox = newHighScoreTextBox(this.highScoresFactoryInterface, this.highScoresHelper, abeClientInformation, this.gameLayerManager.getGameInfo(), this.getCustomCommandListener(), name, highScore, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor())
        if isLast:
            this.getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox)
        if autoSubmit:
            SecondaryThreadPool.getInstance().runTask(newSaveHighScoreRunnable(isLast, textBox))

method getGameStateTimeHelper*(this: AllBinaryGameCanvas): TimeDelayHelper {.base, discardable.} =
        return this.gameStateTimeHelper

method setInitialized*(this: AllBinaryGameCanvas, initialized: bool) {.base.} =
        this.initialized = initialized

method isInitialized*(this: AllBinaryGameCanvas): bool {.discardable.} =
        return this.initialized

method getSourceId*(this: AllBinaryGameCanvas): int32 {.discardable.} =
        return AllBinaryGameCanvas.id

method setProgressPaintable*(this: AllBinaryGameCanvas, paintable: PaintableInterface) {.base.} =
        this.progressPaintable = paintable

method getStartIntermissionInterface*(this: AllBinaryGameCanvas): IntermissionInterface {.discardable.} =
        return this.startIntermissionInterface

method getEndLevelIntermissionInterface*(this: AllBinaryGameCanvas): IntermissionInterface {.discardable.} =
        return this.endLevelIntermissionInterface

method setTouchPaintableP*(this: AllBinaryGameCanvas, paintable: Paintable) {.base.} =
        this.touchPaintable = paintable

method getTouchPaintableP*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.touchPaintable

method setEndGamePaintable*(this: AllBinaryGameCanvas, endGamePaintable: Paintable) {.base.} =
        this.endGamePaintable = endGamePaintable

method getEndGamePaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.endGamePaintable

method setIntermissionPaintable*(this: AllBinaryGameCanvas, intermissionPaintable: Paintable) {.base.} =
        this.intermissionPaintable = intermissionPaintable

method getIntermissionPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.intermissionPaintable

method getEndGameInfoP*(this: AllBinaryGameCanvas): EndGameInfo {.base, discardable.} =
        return this.endGameInfo

method setHighScoresPaintable*(this: AllBinaryGameCanvas, highScoresPaintable: Paintable) {.base.} =
        this.highScoresPaintable = highScoresPaintable

method getHighScoresPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.highScoresPaintable

method getRealHighScoresPaintable*(this: AllBinaryGameCanvas): HighScoresPaintable {.base, discardable.} =
        return this.realHighScoresPaintable

method clearPlayerGameInputList*(this: AllBinaryGameCanvas) {.base.} =
        var playerGameInput: PlayerGameInput = nil
        block:
            var index: int32 = this.localPlayerGameInputList.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                playerGameInput = PlayerGameInput(JObject(this.localPlayerGameInputList.get(index)))
                this.gameKeyEventHandler.removeListener(playerGameInput)
        this.localPlayerGameInputList.clear()

method addPlayerGameInput*(this: AllBinaryGameCanvas, playerGameInput: PlayerGameInput) {.base.} =
        this.localPlayerGameInputList.add(playerGameInput)

method setMenuInputProcessor*(this: AllBinaryGameCanvas, menuInputProcessor: BasicMenuInputProcessor) {.base.} =
        this.menuInputProcessor = menuInputProcessor

method getMenuInputProcessor*(this: AllBinaryGameCanvas): BasicMenuInputProcessor {.base, discardable.} =
        return this.menuInputProcessor

method getMenuForm*(this: AllBinaryGameCanvas): ScrollSelectionForm {.base, discardable.} =
        return this.menuForm

method setMenuForm*(this: AllBinaryGameCanvas, menuForm: ScrollSelectionForm) {.base.} =
        this.menuForm = menuForm

method getStartLevel*(this: AllBinaryGameCanvas): int32 {.base, discardable.} =
        return this.startLevel

method setStartLevel*(this: AllBinaryGameCanvas, startLevel: int32) {.base.} =
        this.startLevel = startLevel

method setTouchButtonsPaintable*(this: AllBinaryGameCanvas, touchButtonsPaintable: Paintable) {.base.} =
        this.touchButtonsPaintable = touchButtonsPaintable

method getTouchButtonsPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.touchButtonsPaintable

method setGameInputProcessor*(this: AllBinaryGameCanvas, gameInputProcessor: Processor) {.base.} =
        this.gameInputProcessor = gameInputProcessor

method getGameInputProcessor*(this: AllBinaryGameCanvas): Processor {.base, discardable.} =
        return this.gameInputProcessor

method setEndGameProcessor*(this: AllBinaryGameCanvas, endGameProcessor: Processor) {.base.} =
        this.endGameProcessor = endGameProcessor

method getEndGameProcessor*(this: AllBinaryGameCanvas): Processor {.base, discardable.} =
        return this.endGameProcessor

method setEndGameStatePaintable*(this: AllBinaryGameCanvas, endGameStatePaintable: Paintable) {.base.} =
        this.endGameStatePaintable = endGameStatePaintable

method getEndGameStatePaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.endGameStatePaintable

method setNonBotPaintableP*(this: AllBinaryGameCanvas, nonBotPaintable: Paintable) {.base.} =
        this.nonBotPaintable = nonBotPaintable

method getNonBotPaintableP*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.nonBotPaintable

method setStartIntermissionPaintable*(this: AllBinaryGameCanvas, startIntermissionPaintable: InitUpdatePaintable) {.base.} =
        this.startIntermissionPaintable = startIntermissionPaintable

method getStartIntermissionPaintable*(this: AllBinaryGameCanvas): InitUpdatePaintable {.base, discardable.} =
        return this.startIntermissionPaintable

method setMainStateProcessor*(this: AllBinaryGameCanvas, mainStateProcessor: Processor) {.base.} =
        this.mainStateProcessor = mainStateProcessor

method getMainStateProcessor*(this: AllBinaryGameCanvas): Processor {.base, discardable.} =
        return this.mainStateProcessor

method setProcessGameProcessor*(this: AllBinaryGameCanvas, processGameProcessor: Processor) {.base.} =
        this.processGameProcessor = processGameProcessor

method getProcessGameProcessor*(this: AllBinaryGameCanvas): Processor {.base, discardable.} =
        return this.processGameProcessor

method setOpenMenuPaintable*(this: AllBinaryGameCanvas, openMenuPaintable: Paintable) {.base.} =
        this.openMenuPaintable = openMenuPaintable

method getOpenMenuPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.openMenuPaintable

method setPopupMenuInputProcessor*(this: AllBinaryGameCanvas, popupMenuInputProcessor: BasicMenuInputProcessor) {.base.} =
        this.popupMenuInputProcessor = popupMenuInputProcessor

method getPopupMenuInputProcessor*(this: AllBinaryGameCanvas): BasicMenuInputProcessor {.base, discardable.} =
        return this.popupMenuInputProcessor

method getSensorGameUpdateProcessor*(this: AllBinaryGameCanvas): SensorGameUpdateProcessor {.base, discardable.} =
        return this.sensorGameUpdateProcessor

method getRawGameInputProcessor*(this: AllBinaryGameCanvas): InputProcessor {.base, discardable.} =
        return this.rawGameInputProcessor

method getRawInputProcessor*(this: AllBinaryGameCanvas): InputProcessor {.base, discardable.} =
        return this.rawInputProcessor

method setInputProcessor*(this: AllBinaryGameCanvas, inputProcessor: InputProcessor) {.base.} =
        this.inputProcessor = inputProcessor

method getInputProcessor*(this: AllBinaryGameCanvas): InputProcessor {.base, discardable.} =
        return this.inputProcessor

method setMenuPaintable*(this: AllBinaryGameCanvas, menuPaintable: Paintable) {.base.} =
        this.menuPaintable = menuPaintable

method getMenuPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.menuPaintable

method setFormPaintable*(this: AllBinaryGameCanvas, formPaintable: Paintable) {.base.} =
        this.formPaintable = formPaintable

method getFormPaintable*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.formPaintable

method setGameSpecificPaintableP*(this: AllBinaryGameCanvas, gameSpecificPaintable: Paintable) {.base.} =
        this.gameSpecificPaintable = gameSpecificPaintable

method getGameSpecificPaintableP*(this: AllBinaryGameCanvas): Paintable {.base, discardable.} =
        return this.gameSpecificPaintable

method isSingleThread*(this: AllBinaryGameCanvas): bool {.discardable.} =
        return OpenGLFeatureUtil.getInstance().isAnyThreed() or SWTUtil.isSWT

method isRunningInAnotherThread*(this: AllBinaryGameCanvas): bool {.base, discardable.} =
        let features: Features = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD):
            return true
        else:
            return this.isRunning()

method getType*(this: AllBinaryGameCanvas): int32 {.discardable.} =
        return AllBinaryGameCanvas.TYPE

method getTitle*(this: AllBinaryGameCanvas): string {.discardable.} =
        return procCall RunnableCanvas(this).getTitle()

method isPaused*(this: AllBinaryGameCanvas): bool {.discardable.} =
        return procCall RunnableCanvas(this).isPaused()

when declared(newAllBinaryGameCanvasHook5):
    newAllBinaryGameCanvasHook5 = proc (commandListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool): RunnableCanvas = newAllBinaryGameCanvas(commandListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)

