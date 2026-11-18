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
# package org.allbinary.game.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import java/util/Enumeration as EnumerationModule
export EnumerationModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/business/advertisement/GameAdStateFactory as GameAdStateFactoryModule
export GameAdStateFactoryModule
import org/allbinary/canvas/FullScreenUtil as FullScreenUtilModule
export FullScreenUtilModule
import org/allbinary/debug/DebugInterface as DebugInterfaceModule
export DebugInterfaceModule
import org/allbinary/game/GameStrings as GameStringsModule
export GameStringsModule
import org/allbinary/game/configuration/LoadGameForm as LoadGameFormModule
export LoadGameFormModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface as GameCanvasRunnableInterfaceModule
export GameCanvasRunnableInterfaceModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/paint/help/HelpPaintable as HelpPaintableModule
export HelpPaintableModule
import org/allbinary/game/score/displayable/HighScoresCanvas as HighScoresCanvasModule
export HighScoresCanvasModule
import org/allbinary/game/state/GameStateFactory as GameStateFactoryModule
export GameStateFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/graphics/displayable/command/MyCommandsFactory as MyCommandsFactoryModule
export MyCommandsFactoryModule
import org/allbinary/graphics/displayable/screen/AboutCommandProcessor as AboutCommandProcessorModule
export AboutCommandProcessorModule
import org/allbinary/graphics/displayable/screen/CommandForm as CommandFormModule
export CommandFormModule
import org/allbinary/graphics/displayable/screen/WebCommandProcessor as WebCommandProcessorModule
export WebCommandProcessorModule
import org/allbinary/logic/system/security/licensing/ClientInformationFactory as ClientInformationFactoryModule
export ClientInformationFactoryModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/midlet/MidletStrings as MidletStringsModule
export MidletStringsModule
import org/allbinary/midlet/ProgressMidlet as ProgressMidletModule
export ProgressMidletModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/EnumerationUtil as EnumerationUtilModule
export EnumerationUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/midlet/GameMidletStateFactory as GameMidletStateFactoryModule
export GameMidletStateFactoryModule

type
    GameMidlet* = ref object of ProgressMidlet
        enumerationUtil*: EnumerationUtil
        basicColorFactory*: BasicColorFactory
        features*: Features
        midletStrings*: MidletStrings
        myCommandsFactory*: MyCommandsFactory
        gameStrings*: GameStrings
        gameAdStateFactory*: GameAdStateFactory
        gameStateFactory*: GameStateFactory
        tsUtil*: TsUtil
        DISPLAYABLE*: string
        COMMAND_NAME*: string
        NO_COMMAND*: string
        NO_DISPLAYABLE*: string
        COMMAND_ACTION*: string
        PAUSE_APP_BACKGROUND*: string
        UN_PAUSE_APP_BACKGROUND*: string
        aboutCommandProcessor*: AboutCommandProcessor
        webCommandProcessor*: WebCommandProcessor
        gameMidletStateFactory*: GameMidletStateFactory
        gameStartTimeHelper*: TimeDelayHelper
        fullScreenUtil*: FullScreenUtil
        debugInterface*: DebugInterface
        allbinaryGameCanvasRunnableInterface*: GameCanvasRunnableInterface
        thread*: JThread
        loadGameForm*: CommandForm
        isFullScreen*: bool
        resized*: bool
        startedBefore*: bool

converter jAsCommandListener*(value: GameMidlet): CommandListener = cast[CommandListener](value)
proc newGameMidlet*(clientInformationFactory: ClientInformationFactory): GameMidlet
proc initGameMidlet*(this: GameMidlet, clientInformationFactory: ClientInformationFactory)
method init*(this: GameMidlet) {.base.}
method setDemo*(this: GameMidlet) {.base.}
method createGame*(this: GameMidlet) {.base.}
method mediaShutdown*(this: GameMidlet) {.base.}
method stopAll*(this: GameMidlet) {.base.}
method pauseApp*(this: GameMidlet)
method pauseAppBackground*(this: GameMidlet, background: bool) {.base.}
method unPauseApp*(this: GameMidlet) {.base.}
method unPauseAppBackground*(this: GameMidlet, background: bool) {.base.}
method destroyAppInRunnable*(this: GameMidlet, unconditional: bool, isProgress: bool)
method destroyApp*(this: GameMidlet, unconditional: bool)
method startApp*(this: GameMidlet)
method commandAction*(this: GameMidlet, command: Command, displayable: Displayable)
method updateFullScreen*(this: GameMidlet) {.base.}
method onEvent*(this: GameMidlet, eventObject: AllBinaryEventObject) {.base.}
method getInputMappingInstructionsCanvas*(this: GameMidlet): MyCanvas {.base, discardable.}
method getInputMappingCanvas*(this: GameMidlet): MyCanvas {.base, discardable.}
method getAboutCanvas*(this: GameMidlet): MyCanvas {.base, discardable.}
method getHelpPaintable*(this: GameMidlet): HelpPaintable {.base, discardable.}
method createHighScoresCanvas*(this: GameMidlet): HighScoresCanvas {.base, discardable.}
method startGameCanvasRunnableInterface*(this: GameMidlet) {.base.}
method stopGameCanvasRunnableInterface*(this: GameMidlet) {.base.}
method getGameCanvasRunnableInterface*(this: GameMidlet): GameCanvasRunnableInterface {.base, discardable.}
method setGameCanvasRunnableInterface*(this: GameMidlet, gameCanvasRunnableInterface: GameCanvasRunnableInterface) {.base.}
method createGameLayerManager*(this: GameMidlet): AllBinaryGameLayerManager {.base, discardable.}
method getGameOptionsForm*(this: GameMidlet): CommandForm {.base, discardable.}
method save*(this: GameMidlet) {.base.}
method getCurrentStateHashtable*(this: GameMidlet): ABHashtable {.discardable.}
method setLoadGameForm*(this: GameMidlet, loadGameForm: LoadGameForm) {.base.}
method getLoadGameForm*(this: GameMidlet): CommandForm {.base, discardable.}
method setResized*(this: GameMidlet, resized: bool) {.base.}
method isResized*(this: GameMidlet): bool {.base, discardable.}
method isDemoLoading*(this: GameMidlet): bool {.base, discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule
import javax/microedition/midlet/MIDletStateChangeException as MIDletStateChangeExceptionModule
export MIDletStateChangeExceptionModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/canvas/GameStatisticsFactory as GameStatisticsFactoryModule
export GameStatisticsFactoryModule
import org/allbinary/debug/DebugFactory as DebugFactoryModule
export DebugFactoryModule
import org/allbinary/game/GameAdState as GameAdStateModule
export GameAdStateModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/game/GameMode as GameModeModule
export GameModeModule
import org/allbinary/game/GameTypeFactory as GameTypeFactoryModule
export GameTypeFactoryModule
import org/allbinary/game/PlayerTypesFactory as PlayerTypesFactoryModule
export PlayerTypesFactoryModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/GameOptionsForm as GameOptionsFormModule
export GameOptionsFormModule
import org/allbinary/game/configuration/GameOptionsFormFactory as GameOptionsFormFactoryModule
export GameOptionsFormFactoryModule
import org/allbinary/game/configuration/InGameFeatures as InGameFeaturesModule
export InGameFeaturesModule
import org/allbinary/game/configuration/InGameOptionsForm as InGameOptionsFormModule
export InGameOptionsFormModule
import org/allbinary/game/configuration/InGameOptionsFormFactory as InGameOptionsFormFactoryModule
export InGameOptionsFormFactoryModule
import org/allbinary/game/configuration/event/ChangedGameFeatureListener as ChangedGameFeatureListenerModule
export ChangedGameFeatureListenerModule
import org/allbinary/game/configuration/event/GameFeatureEventHandler as GameFeatureEventHandlerModule
export GameFeatureEventHandlerModule
import org/allbinary/game/configuration/feature/GameFeatureFormUtil as GameFeatureFormUtilModule
export GameFeatureFormUtilModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule
import org/allbinary/game/configuration/persistance/GamePersistanceSingleton as GamePersistanceSingletonModule
export GamePersistanceSingletonModule
import org/allbinary/game/configuration/persistance/KeyValuePersistance as KeyValuePersistanceModule
export KeyValuePersistanceModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule
import org/allbinary/game/displayable/canvas/BasicPaintablesCanvas as BasicPaintablesCanvasModule
export BasicPaintablesCanvasModule
import org/allbinary/game/displayable/canvas/DemoCanvas as DemoCanvasModule
export DemoCanvasModule
import org/allbinary/game/displayable/canvas/GameEventHandlerUtil as GameEventHandlerUtilModule
export GameEventHandlerUtilModule
import org/allbinary/game/displayable/canvas/GameInputMappingCanvas as GameInputMappingCanvasModule
export GameInputMappingCanvasModule
import org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas as GameInputMappingInstructionsCanvasModule
export GameInputMappingInstructionsCanvasModule
import org/allbinary/game/displayable/canvas/MenuListener as MenuListenerModule
export MenuListenerModule
import org/allbinary/game/displayable/canvas/NullGameCanvasRunnable as NullGameCanvasRunnableModule
export NullGameCanvasRunnableModule
import org/allbinary/game/input/TextNotificationUtil as TextNotificationUtilModule
export TextNotificationUtilModule
import org/allbinary/game/layer/hud/event/GameNotificationEventHandler as GameNotificationEventHandlerModule
export GameNotificationEventHandlerModule
import org/allbinary/game/score/HighScoreCommands as HighScoreCommandsModule
export HighScoreCommandsModule
import org/allbinary/game/score/HighScoreCommandsFactory as HighScoreCommandsFactoryModule
export HighScoreCommandsFactoryModule
import org/allbinary/game/score/displayable/HighScoreTextBox as HighScoreTextBoxModule
export HighScoreTextBoxModule
import org/allbinary/game/score/displayable/HighScoreUtil as HighScoreUtilModule
export HighScoreUtilModule
import org/allbinary/graphics/ResizableListenerHandler as ResizableListenerHandlerModule
export ResizableListenerHandlerModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/graphics/color/ColorChangeEventHandler as ColorChangeEventHandlerModule
export ColorChangeEventHandlerModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/displayable/screen/AboutPaintableFactory as AboutPaintableFactoryModule
export AboutPaintableFactoryModule
import org/allbinary/input/AllBinarySensorManager as AllBinarySensorManagerModule
export AllBinarySensorManagerModule
import org/allbinary/input/event/VirtualKeyboardEventHandler as VirtualKeyboardEventHandlerModule
export VirtualKeyboardEventHandlerModule
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
import org/allbinary/thread/NullThread as NullThreadModule
export NullThreadModule
import org/allbinary/thread/ThreadFactoryUtil as ThreadFactoryUtilModule
export ThreadFactoryUtilModule
import org/allbinary/thread/ThreadUtil as ThreadUtilModule
export ThreadUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/game/midlet/GameMidletEventHandler as GameMidletEventHandlerModule
export GameMidletEventHandlerModule
import org/allbinary/game/midlet/DemoGameMidletEvent as DemoGameMidletEventModule
export DemoGameMidletEventModule
import org/allbinary/game/midlet/DemoGameMidletStateFactory as DemoGameMidletStateFactoryModule
export DemoGameMidletStateFactoryModule


# Java field initializers run after the base initializer
proc initFieldsGameMidlet(this: GameMidlet) =
    this.enumerationUtil = EnumerationUtil.getInstance()
    this.basicColorFactory = BasicColorFactory.getInstance()
    this.features = Features.getInstance()
    this.midletStrings = MidletStrings.getInstance()
    this.myCommandsFactory = MyCommandsFactory.getInstance()
    this.gameStrings = GameStrings.getInstance()
    this.gameAdStateFactory = GameAdStateFactory.getInstance()
    this.gameStateFactory = GameStateFactory.getInstance()
    this.tsUtil = TsUtil.getInstance()
    this.DISPLAYABLE = " Displayable: "
    this.COMMAND_NAME = "command Name/Label: "
    this.NO_COMMAND = "No Command"
    this.NO_DISPLAYABLE = "No Displayable"
    this.COMMAND_ACTION = newStringMaker().append("GameMidlet::").append(this.midletStrings.COMMAND_ACTION).toString()
    this.PAUSE_APP_BACKGROUND = "pauseAppBackground"
    this.UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground"
    this.aboutCommandProcessor = AboutCommandProcessor.getInstance()
    this.webCommandProcessor = WebCommandProcessor.getInstance()
    this.gameMidletStateFactory = GameMidletStateFactory.getInstance()
    this.gameStartTimeHelper = newTimeDelayHelper(240)
    this.fullScreenUtil = FullScreenUtil.getInstance()
    
    this.allbinaryGameCanvasRunnableInterface = NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic
    this.thread = NullThread.NULL_THREADStatic
    
    this.isFullScreen = false
    this.resized = false
    this.startedBefore = false
    discard

proc initGameMidlet*(this: GameMidlet, clientInformationFactory: ClientInformationFactory) =
        initProgressMidlet(this, clientInformationFactory)
        this.initFieldsGameMidlet()
        SmallIntegerSingletonFactory.getInstance().initWithRange(0x291, 6)
        this.loadGameForm = CommandForm.getNullCommandForm()
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.init(this)
        GameFeatureEventHandler.getInstance().addListenerInterface(ChangedGameFeatureListener.getInstance())
        GamePersistanceSingleton.getInstance().clear()
        this.debugInterface = DebugFactory.getInstance()
        this.init()

proc newGameMidlet*(clientInformationFactory: ClientInformationFactory): GameMidlet =
    result = GameMidlet()
    initGameMidlet(result, clientInformationFactory)

method init*(this: GameMidlet) {.base.} =
        discard

method setDemo*(this: GameMidlet) {.base.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method createGame*(this: GameMidlet) {.base.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method mediaShutdown*(this: GameMidlet) {.base.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method stopAll*(this: GameMidlet) {.base.} =
        discard

method pauseApp*(this: GameMidlet) =
        this.pauseAppBackground(true)
        let gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().stopAll()

method pauseAppBackground*(this: GameMidlet, background: bool) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.PAUSE_APP_BACKGROUND)
        if this.allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic:
            this.allbinaryGameCanvasRunnableInterface.pause()
        else:
            this.logUtil.putF("<<<<<< Null", this, this.PAUSE_APP_BACKGROUND)
        AllBinarySensorManager.getInstance().shutdown()

method unPauseApp*(this: GameMidlet) {.base.} =
        this.unPauseAppBackground(true)
        let gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().startAll()

method unPauseAppBackground*(this: GameMidlet, background: bool) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.UN_PAUSE_APP_BACKGROUND)
        AllBinarySensorManager.getInstance().init()
        let gameCanvasRunnableInterface: GameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic:
            gameCanvasRunnableInterface.unPause()
        else:
            this.logUtil.putF("<<<<<< Null", this, this.UN_PAUSE_APP_BACKGROUND)

method destroyAppInRunnable*(this: GameMidlet, unconditional: bool, isProgress: bool) =
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        if isProgress:
            progressCanvas.start()
            this.commandAction(this.myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
        this.destroyApp(unconditional)
        if isProgress:
            progressCanvas.`end`()

method destroyApp*(this: GameMidlet, unconditional: bool) =
        let METHOD_NAME: string = "GameMidlet::destroyApp"
        try:
            PreLogUtil.put(GameStatisticsFactory.getInstance().toString(), this, METHOD_NAME)
            let gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().stopAll()
            if (not this.isDestroyed()):
                this.stopGameCanvasRunnableInterface()
                this.setGameCanvasRunnableInterface(NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic)
                this.mediaShutdown()
            else:
                this.logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", this, METHOD_NAME)
            procCall ProgressMidlet(this).destroyApp(true)
            PreLogUtil.put(this.commonStrings.END, this, METHOD_NAME)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e)
        this.logUtil.putF(this.commonStrings.END, this, METHOD_NAME)

method startApp*(this: GameMidlet) =
        try:
            let gameAdState: GameAdState = this.gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().startAll()
            let START_APP: string = "startApp"
            this.logUtil.putF(this.commonStrings.START, this, START_APP)
            let gameCanvasRunnableInterface: JObject = this.allbinaryGameCanvasRunnableInterface
            if gameCanvasRunnableInterface == NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic:
                this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE)
                this.setDemo()
            else:
                this.logUtil.putF("GameCanvasRunnableInterface is available", this, START_APP)
                if gameCanvasRunnableInterface == this.getCurrentDisplayable():
                    this.unPauseAppBackground(false)
                else:
                    this.logUtil.putF("GameCanvasRunnableInterface is not current displayable", this, START_APP)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "startApp", e)
            this.destroyApp(false)
            this.notifyDestroyed()

method commandAction*(this: GameMidlet, command: Command, displayable: Displayable) =
        try:
            var displayableAsString: string = this.NO_DISPLAYABLE
            if (not jIsNil(displayable)):
                displayableAsString = displayable.toString()
            var label: string = this.NO_COMMAND
            if (not jIsNil(command)):
                label = command.getLabel()
            PreLogUtil.put(newStringMaker().append(this.COMMAND_NAME).append(label).append(this.DISPLAYABLE).append(displayableAsString).toString(), this, this.COMMAND_ACTION)
            let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
            let allbinaryGameCanvasRunnableInterface: GameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface
            let gameCanvasRunnableInterface: JObject = allbinaryGameCanvasRunnableInterface
            if command == gameCommandsFactory.SHOW_GAME_CANVAS:
                if this.getDisplay().getCurrent() != gameCanvasRunnableInterface and allbinaryGameCanvasRunnableInterface.getType() != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic.getType():
                    this.setDisplay(Displayable(JObject(gameCanvasRunnableInterface)))
                this.unPauseAppBackground(false)
            elif command == gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS:
                let menuListener: MenuListener = MenuListener(JObject(displayable))
                menuListener.close()
                this.setDisplay(Displayable(JObject(gameCanvasRunnableInterface)))
                this.unPauseAppBackground(false)
            elif command == gameCommandsFactory.EXIT_COMMAND:
                if GameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size() == 0:
                    this.exitProgress(true)
                GameMidletEventHandler.getInstance().fireEvent(newDemoGameMidletEvent(this, DemoGameMidletStateFactory.getInstance().NONE))
            elif command == gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND:
                this.exitProgress(false)
            elif command == gameCommandsFactory.START_COMMAND or command == gameCommandsFactory.RESTART_COMMAND or command == gameCommandsFactory.CONTINUE_COMMAND:
                if this.gameMidletStateFactory.getCurrentGameState() != this.gameStateFactory.PLAYING_GAME_STATE or command == gameCommandsFactory.RESTART_COMMAND:
                    if this.gameStartTimeHelper.isTimeTNT():
                        if command == gameCommandsFactory.START_COMMAND and this.isDemoLoading():
                            this.logUtil.putF("Trying to Start Game Before Loading Complete", this, this.midletStrings.COMMAND_ACTION)
                        else:
                            this.startedBefore = true
                            this.createGame()
                            this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.PLAYING_GAME_STATE)
                    else:
                        this.logUtil.putF("Starting Game Too Often", this, this.midletStrings.COMMAND_ACTION)
                else:
                    this.logUtil.putF("Already in playing state", this, this.COMMAND_ACTION)
            elif command == gameCommandsFactory.BUY_COMMAND:
                var inApplicationPurchaseFactory: InApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance()
                let list: BasicArrayList = LockableFeatureFactory.getInstance().getList()
                let lockableFeature: LockableFeature = LockableFeature(JObject(list.get(0)))
                if list.size() > 0 and (not inApplicationPurchaseFactory.isPurchased(lockableFeature)):
                    inApplicationPurchaseFactory.purchase(lockableFeature)
                else:
                    TextNotificationUtil.getInstance().fireSuccess("Already Purchased")
            elif command == gameCommandsFactory.QUIT_COMMAND:
                if this.gameStartTimeHelper.isTimeTNT():
                    if (displayable of HighScoreTextBox):
                        let menuListener: MenuListener = MenuListener(JObject(displayable))
                        menuListener.close()
                    this.stopGameCanvasRunnableInterface()
                    this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE)
                    this.setDemo()
            elif command == this.myCommandsFactory.RESUME_COMMAND:
                this.unPauseAppBackground(false)
            elif command == this.myCommandsFactory.PAUSE_COMMAND:
                this.pauseAppBackground(false)
            elif command == this.myCommandsFactory.SET_DISPLAYABLE:
                this.pauseAppBackground(false)
                this.setDisplay(displayable)
            elif command == gameCommandsFactory.SET_MENU_DISPLAYABLE:
                this.pauseAppBackground(false)
                let menuListener: MenuListener = MenuListener(JObject(displayable))
                menuListener.open()
                this.setDisplay(displayable)
            elif command == gameCommandsFactory.START_TRACE:
                this.debugInterface.start()
                let gameCanvas: AllBinaryGameCanvas = AllBinaryGameCanvas(JObject(allbinaryGameCanvasRunnableInterface))
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE)
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE)
            elif command == gameCommandsFactory.STOP_TRACE:
                this.pauseAppBackground(false)
                this.debugInterface.stop()
                this.unPauseAppBackground(false)
                let gameCanvas: AllBinaryGameCanvas = AllBinaryGameCanvas(JObject(allbinaryGameCanvasRunnableInterface))
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE)
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE)
            elif command == gameCommandsFactory.DEFAULT_OPTIONS:
                let tempDisplayable: Displayable = displayable
                if (tempDisplayable of GameOptionsForm):
                    GameFeatureFormUtil.getInstance().setDefault(CommandForm(JObject(tempDisplayable)))
            elif command == GameInputMappingInstructionsCanvas.DISPLAY:
                let tempDisplayable: Displayable = displayable
                if (tempDisplayable of GameInputMappingCanvas):
                    var gameInputMappingCanvas: GameInputMappingCanvas = GameInputMappingCanvas(JObject(tempDisplayable))
                    gameInputMappingCanvas.update()
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingInstructionsCanvas())
            elif HighScoreCommandsFactory.getInstance().isHighScoreCommand(command):
                let tempDisplayable: Displayable = displayable
                if (tempDisplayable of HighScoresCanvas):
                    let highScoresCanvas: HighScoresCanvas = HighScoresCanvas(JObject(tempDisplayable))
                    highScoresCanvas.updateCommand(command)
            elif command == HighScoreCommands.getInstance().DISPLAY:
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.createHighScoresCanvas())
            elif command == GameInputMappingInstructionsCanvas.CLOSE:
                let menuListener: MenuListener = MenuListener(JObject(displayable))
                menuListener.close()
                this.commandAction(GameInputMappingCanvas.DISPLAY, NullCanvas.NULL_CANVASStatic)
            elif command == GameInputMappingCanvas.DISPLAY:
                if J2MEUtil.isHTML():
                    this.pauseAppBackground(false)
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingCanvas())
            elif command == GameInputMappingCanvas.DEFAULT:
                let tempDisplayable: Displayable = displayable
                if (tempDisplayable of GameInputMappingCanvas):
                    var gameInputMappingCanvas: GameInputMappingCanvas = GameInputMappingCanvas(JObject(tempDisplayable))
                    gameInputMappingCanvas.setDefault()
            elif command == InGameOptionsForm.DISPLAY:
                this.pauseAppBackground(false)
                let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
                progressCanvas.addNormalPortion(50, "In Game Options")
                let layerManager: AllBinaryGameLayerManager = this.createGameLayerManager()
                let inGameOptionsFormFactory: InGameOptionsFormFactory = InGameOptionsFormFactory.getInstance()
                inGameOptionsFormFactory.init(this, newInGameFeatures(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
                let inGameOptionsForm: CommandForm = inGameOptionsFormFactory.get()
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface)
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm)
            elif command == InGameOptionsForm.DEFAULT:
                let inGameOptionsForm: InGameOptionsForm = InGameOptionsForm(JObject(InGameOptionsFormFactory.getInstance().get()))
                GameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm)
            elif command == gameCommandsFactory.DISPLAY_OPTIONS:
                AllBinaryMediaManager.setMuted(true)
                this.stopAll()
                let mainFeatureFactory: MainFeatureFactory = MainFeatureFactory.getInstance()
                this.isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN)
                ResizableListenerHandler.getInstance().fireEvent(true)
                this.setResized(false)
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getGameOptionsForm())
            elif command == gameCommandsFactory.CLOSE_OPTIONS:
                ResizableListenerHandler.getInstance().fireEvent(false)
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
                let stringBuffer: StringMaker = newStringMaker()
                stringBuffer.append("Close isFullScreen/change: ")
                stringBuffer.appendboolean(this.isFullScreen)
                stringBuffer.appendboolean(this.fullScreenUtil.isScreenChange(this.isFullScreen))
                stringBuffer.append(" isResized: ")
                stringBuffer.appendboolean(this.isResized())
                PreLogUtil.put(stringBuffer.toString(), this, this.COMMAND_ACTION)
                if this.isResized() or this.fullScreenUtil.isScreenChange(this.isFullScreen):
                    this.updateFullScreen()
                AllBinaryMediaManager.setMuted(false)
            elif command == gameCommandsFactory.DISPLAY_LOAD_FORM:
                this.pauseAppBackground(false)
                let keyValuePersistance: KeyValuePersistance = GamePersistanceSingleton.getInstance()
                keyValuePersistance.clear()
                keyValuePersistance.loadAll(this.abeClientInformation)
                if this.getLoadGameForm() == CommandForm.getNullCommandForm():
                    let layerManager: AllBinaryGameLayerManager = this.createGameLayerManager()
                    this.setLoadGameForm(newLoadGameForm(this, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()))
                else:
                    this.getLoadGameForm().update()
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getLoadGameForm())
            elif command == gameCommandsFactory.LOAD_FILE:
                let loadGameForm: LoadGameForm = LoadGameForm(JObject(this.getLoadGameForm()))
                let index: int32 = loadGameForm.getSelectedId()
                if index != -1:
                    let keyValuePersistance: KeyValuePersistance = GamePersistanceSingleton.getInstance()
                    this.setStartStateHashtable(keyValuePersistance.get(index))
                    let menuListener: MenuListener = this.getLoadGameForm()
                    menuListener.close()
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, this.COMMAND_ACTION)
                    this.commandAction(gameCommandsFactory.START_COMMAND, NullCanvas.NULL_CANVASStatic)
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, this.COMMAND_ACTION)
            elif command == gameCommandsFactory.DELETE_FILE:
                let loadGameForm: LoadGameForm = LoadGameForm(JObject(this.getLoadGameForm()))
                let index: int32 = loadGameForm.getSelectedText()
                if index != -1:
                    let keyValuePersistance: KeyValuePersistance = GamePersistanceSingleton.getInstance()
                    keyValuePersistance.delete(this.abeClientInformation, index)
                    keyValuePersistance.clear()
                    keyValuePersistance.loadAllSize(this.abeClientInformation, 1)
                    this.getLoadGameForm().update()
            elif command == gameCommandsFactory.SAVE:
                let keyValuePersistance: KeyValuePersistance = GamePersistanceSingleton.getInstance()
                this.pauseAppBackground(false)
                keyValuePersistance.save(this.abeClientInformation, this.getCurrentStateHashtable())
                this.unPauseAppBackground(false)
            elif command == HighScoreUtil.SUBMIT_TEXTBOX_COMMAND:
                this.logUtil.putF("Submitted Score", this, this.COMMAND_ACTION)
                if (displayable of HighScoreTextBox):
                    let highScoreTextBox: HighScoreTextBox = HighScoreTextBox(JObject(displayable))
                    highScoreTextBox.submitted = true
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true)
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
            elif command == gameCommandsFactory.DISPLAY_ABOUT:
                this.aboutCommandProcessor.process(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getAboutCanvas())
            elif command == gameCommandsFactory.OPEN_WEB_URL:
                this.webCommandProcessor.process(this, gameCommandsFactory.OPEN_WEB_URL, NullCanvas.NULL_CANVASStatic)
            elif command == gameCommandsFactory.TOGGLE_KEYBOARD:
                let virtualKeyboardEventHandler: VirtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT)
            elif this.tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0:
                let mainFeatureFactory: MainFeatureFactory = MainFeatureFactory.getInstance()
                let isFullScreen: bool = this.features.isFeature(mainFeatureFactory.FULL_SCREEN)
                if isFullScreen:
                    this.features.removeDefault(mainFeatureFactory.FULL_SCREEN)
                else:
                    this.features.addDefault(mainFeatureFactory.FULL_SCREEN)
                this.updateFullScreen()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(newStringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(command.getLabel()).toString(), this, this.midletStrings.COMMAND_ACTION, e)
            if command != GameCommandsFactory.getInstance().EXIT_COMMAND:
                this.exitProgress(false)

method updateFullScreen*(this: GameMidlet) {.base.} =
        let mainFeatureFactory: MainFeatureFactory = MainFeatureFactory.getInstance()
        let isFullScreen: bool = this.features.isFeature(mainFeatureFactory.FULL_SCREEN)
        let displayable: Displayable = this.getDisplay().getCurrent()
        if (displayable of Canvas):
            let canvas: Canvas = Canvas(JObject(displayable))
            canvas.setFullScreenMode(isFullScreen)

method onEvent*(this: GameMidlet, eventObject: AllBinaryEventObject) {.base.} =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method getInputMappingInstructionsCanvas*(this: GameMidlet): MyCanvas {.base, discardable.} =
        return newGameInputMappingInstructionsCanvas(this, this.createGameLayerManager())

method getInputMappingCanvas*(this: GameMidlet): MyCanvas {.base, discardable.} =
        return newGameInputMappingCanvas(this.abeClientInformation, this, this.createGameLayerManager(), this.getHelpPaintable())

method getAboutCanvas*(this: GameMidlet): MyCanvas {.base, discardable.} =
        return newBasicPaintablesCanvas(this, CanvasStrings.getInstance().ABOUT, this.createGameLayerManager(), AboutPaintableFactory.getInstance().paintableArray)

method getHelpPaintable*(this: GameMidlet): HelpPaintable {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method createHighScoresCanvas*(this: GameMidlet): HighScoresCanvas {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method startGameCanvasRunnableInterface*(this: GameMidlet) {.base.} =
        let threadFactoryUtil: ThreadFactoryUtil = ThreadFactoryUtil.getInstance()
        this.thread = threadFactoryUtil.getInstanceGameCanvasRunnable(this.allbinaryGameCanvasRunnableInterface)
        this.logUtil.putF(newStringMaker().append("Thread Priority: ").appendint(this.thread.getPriority()).toString(), this, "startGameCanvasRunnableInterface")
        this.allbinaryGameCanvasRunnableInterface.setThread(this.thread)
        threadFactoryUtil.start(this.thread)

method stopGameCanvasRunnableInterface*(this: GameMidlet) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        GameNotificationEventHandler.getInstance().removeAllListeners()
        ColorChangeEventHandler.getInstance().removeAllListeners()
        GameEventHandlerUtil.removeAllListeners()
        let gameCanvasRunnableInterface: GameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic:
            this.logUtil.putF(newStringMaker().append("Set Running False: ").append(gameCanvasRunnableInterface.toString()).toString(), this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
            gameCanvasRunnableInterface.setRunning(false)
        else:
            this.logUtil.putF("StopGame - Could Not Stop", this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        ThreadUtil.getInstance().join(this.thread)
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        if this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ALL):
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable")
        else:
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable")
        this.logUtil.putF(this.commonStrings.END, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)

method getGameCanvasRunnableInterface*(this: GameMidlet): GameCanvasRunnableInterface {.base, discardable.} =
        return this.allbinaryGameCanvasRunnableInterface

method setGameCanvasRunnableInterface*(this: GameMidlet, gameCanvasRunnableInterface: GameCanvasRunnableInterface) {.base.} =
        this.allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface

method createGameLayerManager*(this: GameMidlet): AllBinaryGameLayerManager {.base, discardable.} =
        let gameInfo: GameInfo = newGameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1)
        return newAllBinaryGameLayerManager(this.basicColorFactory.BLACK, this.basicColorFactory.WHITE, gameInfo)

method getGameOptionsForm*(this: GameMidlet): CommandForm {.base, discardable.} =
        let layerManager: AllBinaryGameLayerManager = this.createGameLayerManager()
        return GameOptionsFormFactory.getInstance().init(this, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())

method save*(this: GameMidlet) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.SAVE)
        let hashtable: ABHashtable = this.getCurrentStateHashtable()
        GamePersistanceSingleton.getInstance().save(this.abeClientInformation, hashtable)

method getCurrentStateHashtable*(this: GameMidlet): ABHashtable {.discardable.} =
        this.logUtil.putF(this.commonStrings.START, this, "getCurrentStateHashtable")
        let hashtable: ABHashtable = StdUtil.getInstance().createHashtable()
        if this.allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic:
            let currentHashtable: ABHashtable = this.allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable()
            let enumeration: Enumeration = currentHashtable.keys()
            var key: JObject = nil
            while this.enumerationUtil.hasMoreElements(enumeration):
                key = this.enumerationUtil.nextElement(enumeration)
                hashtable.put(key, currentHashtable.get(key))
        return hashtable

method setLoadGameForm*(this: GameMidlet, loadGameForm: LoadGameForm) {.base.} =
        this.loadGameForm = loadGameForm

method getLoadGameForm*(this: GameMidlet): CommandForm {.base, discardable.} =
        return this.loadGameForm

method setResized*(this: GameMidlet, resized: bool) {.base.} =
        this.resized = resized

method isResized*(this: GameMidlet): bool {.base, discardable.} =
        return this.resized

method isDemoLoading*(this: GameMidlet): bool {.base, discardable.} =
        if this.startedBefore:
            return false
        let displayable: Displayable = this.getDisplay().getCurrent()
        if (displayable of DemoCanvas):
            let demoCanvas: DemoCanvas = DemoCanvas(JObject(displayable))
            if demoCanvas.isDemoLoading():
                return true
        return false

when declared(newGameMidletHook1):
    newGameMidletHook1 = proc (clientInformationFactory: ClientInformationFactory): ProgressMidlet = newGameMidlet(clientInformationFactory)

