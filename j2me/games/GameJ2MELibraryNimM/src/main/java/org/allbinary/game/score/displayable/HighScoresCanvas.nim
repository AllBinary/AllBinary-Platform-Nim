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
# package org.allbinary.game.score.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/game/displayable/canvas/GameCommandCanvas as GameCommandCanvasModule
export GameCommandCanvasModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/paint/ColorFillBasePaintable as ColorFillBasePaintableModule
export ColorFillBasePaintableModule
import org/allbinary/game/score/HighScoreCommandsFactory as HighScoreCommandsFactoryModule
export HighScoreCommandsFactoryModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule
import org/allbinary/game/score/HighScoresCanvasInputProcessor as HighScoresCanvasInputProcessorModule
export HighScoresCanvasInputProcessorModule
import org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface as HighScoresCanvasInputProcessorFactoryInterfaceModule
export HighScoresCanvasInputProcessorFactoryInterfaceModule
import org/allbinary/game/score/HighScoresFactoryInterface as HighScoresFactoryInterfaceModule
export HighScoresFactoryInterfaceModule
import org/allbinary/game/score/HighScoresHelperBase as HighScoresHelperBaseModule
export HighScoresHelperBaseModule
import org/allbinary/game/score/HighScoresPaintable as HighScoresPaintableModule
export HighScoresPaintableModule
import org/allbinary/game/score/HighScoresResultsListener as HighScoresResultsListenerModule
export HighScoresResultsListenerModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/graphics/paint/SimpleTextPaintable as SimpleTextPaintableModule
export SimpleTextPaintableModule

type
    HighScoresCanvas* = ref object of GameCommandCanvas
        paintable*: Paintable
        highScoreCommandsFactory*: HighScoreCommandsFactory
        waitPaintable*: SimpleTextPaintable
        highScoresPaintable*: HighScoresPaintable
        highScoresFactoryInterface*: HighScoresFactoryInterface
        colorFillPaintable*: ColorFillBasePaintable
        highScoresHelper*: HighScoresHelperBase
        gameInfo*: GameInfo
        highScoresCanvasInputProcessor*: HighScoresCanvasInputProcessor
        currentCommand*: Command
        hasPainted*: bool

converter jAsHighScoresResultsListener*(value: HighScoresCanvas): HighScoresResultsListener = cast[HighScoresResultsListener](value)
proc newHighScoresCanvas*(commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, gameInfo: GameInfo, paintable: HighScoresPaintable, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface: HighScoresCanvasInputProcessorFactoryInterface): HighScoresCanvas
proc initHighScoresCanvas*(this: HighScoresCanvas, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, gameInfo: GameInfo, paintable: HighScoresPaintable, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface: HighScoresCanvasInputProcessorFactoryInterface)
method initCommands*(this: HighScoresCanvas, cmdListener: CommandListener)
method open*(this: HighScoresCanvas)
method close*(this: HighScoresCanvas)
method paint*(this: HighScoresCanvas, graphics: Graphics)
method executeUpdate*(this: HighScoresCanvas) {.base.}
method getHighScoresPaintable*(this: HighScoresCanvas): HighScoresPaintable {.base, discardable.}
method setHighScoresArray*(this: HighScoresCanvas, highScoresArray: JArray[HighScores])
method updateCommand*(this: HighScoresCanvas, command: Command) {.base.}
method getGameInfo*(this: HighScoresCanvas): GameInfo {.base, discardable.}
method setPaintable*(this: HighScoresCanvas, paintable: Paintable) {.base.}
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/paint/ColorFillPaintableFactory as ColorFillPaintableFactoryModule
export ColorFillPaintableFactoryModule
import org/allbinary/game/score/NoHighScoresFactory as NoHighScoresFactoryModule
export NoHighScoresFactoryModule
import org/allbinary/game/score/NullHighScoresSingletonFactory as NullHighScoresSingletonFactoryModule
export NullHighScoresSingletonFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/thread/SecondaryThreadPool as SecondaryThreadPoolModule
export SecondaryThreadPoolModule
import org/allbinary/game/score/displayable/HighScoreRunnable as HighScoreRunnableModule
export HighScoreRunnableModule

var HighScoresCanvas_NAMEValue: string
var HighScoresCanvas_NAMESet = false
proc NAME*(t: typedesc[HighScoresCanvas]): string =
    if not HighScoresCanvas_NAMESet:
        HighScoresCanvas_NAMESet = true
        HighScoresCanvas_NAMEValue = "HighScoresCanvas"
    HighScoresCanvas_NAMEValue

# Java field initializers run after the base initializer
proc initFieldsHighScoresCanvas(this: HighScoresCanvas) =
    this.paintable = NullPaintable.getInstance()
    this.highScoreCommandsFactory = HighScoreCommandsFactory.getInstance()
    this.waitPaintable = newSimpleTextPaintable(this.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().WHITE)
    
    
    
    this.highScoresHelper = newHighScoresHelperBase()
    
    
    this.currentCommand = this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0]
    this.hasPainted = false
    discard

proc initHighScoresCanvas*(this: HighScoresCanvas, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, gameInfo: GameInfo, paintable: HighScoresPaintable, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface: HighScoresCanvasInputProcessorFactoryInterface) =
        initGameCommandCanvas(this, commandListener, HighScoresCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        this.initFieldsHighScoresCanvas()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.highScoresPaintable = paintable
        this.highScoresFactoryInterface = highScoresFactoryInterface
        this.highScoresCanvasInputProcessor = highScoresCanvasInputProcessorFactoryInterface.getInstance(this)
        this.gameInfo = gameInfo
        this.waitPaintable.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        this.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
        if this.highScoresHelper.getHighScoresArray().length == NoHighScoresFactory.getInstance().NO_HIGH_SCORES.length:
            this.setPaintable(this.waitPaintable)
        else:
            this.logUtil.putF("Show HighScores that are already loaded", this, this.commonStrings.CONSTRUCTOR)
            this.updateCommand(this.currentCommand)
            this.setPaintable(this.getHighScoresPaintable())
        SecondaryThreadPool.getInstance().runTask(newHighScoreRunnable(this))

proc newHighScoresCanvas*(commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, gameInfo: GameInfo, paintable: HighScoresPaintable, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface: HighScoresCanvasInputProcessorFactoryInterface): HighScoresCanvas =
    result = HighScoresCanvas()
    initHighScoresCanvas(result, commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface)

method initCommands*(this: HighScoresCanvas, cmdListener: CommandListener) =
        this.removeAllCommands()
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)

method open*(this: HighScoresCanvas) =
        procCall GameCommandCanvas(this).open()
        this.highScoresCanvasInputProcessor.open()

method close*(this: HighScoresCanvas) =
        procCall GameCommandCanvas(this).close()
        this.highScoresCanvasInputProcessor.close()

method paint*(this: HighScoresCanvas, graphics: Graphics) =
        this.colorFillPaintable.paint(graphics)
        this.paintable.paint(graphics)
        if (not jSame(this.waitPaintable, this.paintable)):
            this.highScoresCanvasInputProcessor.paint(graphics)
        procCall GameCommandCanvas(this).paint(graphics)
        this.hasPainted = true

method executeUpdate*(this: HighScoresCanvas) {.base.} =
        try:
            this.highScoresFactoryInterface.fetchHighScores(this.getGameInfo(), this)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)

method getHighScoresPaintable*(this: HighScoresCanvas): HighScoresPaintable {.base, discardable.} =
        return this.highScoresPaintable

method setHighScoresArray*(this: HighScoresCanvas, highScoresArray: JArray[HighScores]) =
        try:
            if (not jIsNil(highScoresArray)):
                this.logUtil.putF(newStringMaker().append(this.commonStrings.START).appendint(highScoresArray.length).toString(), this, "setHighScoresArray")
            else:
                this.logUtil.putF(this.commonStrings.START, this, "setHighScoresArray")
            this.highScoresHelper.setHighScoresArray(highScoresArray)
            this.updateCommand(this.currentCommand)
            this.setPaintable(this.getHighScoresPaintable())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)

method updateCommand*(this: HighScoresCanvas, command: Command) {.base.} =
        this.logUtil.putF(newStringMaker().append(this.commonStrings.START).append(this.stringUtil.toString(command)).toString(), this, this.commonStrings.UPDATE)
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        if this.highScoreCommandsFactory.isHighScoreCommand(command):
            let index: int32 = this.highScoreCommandsFactory.getIndex(command)
            var nextIndex: int32 = index +% 1
            let highScoresArray: JArray[HighScores] = this.highScoresHelper.getHighScoresArray()
            if nextIndex >= highScoresArray.length:
                nextIndex = 0
            if highScoresArray.length > 0:
                this.getHighScoresPaintable().setHighScores(highScoresArray[index])
            else:
                this.getHighScoresPaintable().setHighScores(NullHighScoresSingletonFactory.getInstance())
            if index != nextIndex:
                this.removeAllCommands()
                this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
                this.addCommand(this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex])
        this.currentCommand = command
        this.close()
        procCall GameCommandCanvas(this).initMenu()
        this.open()
        this.repaintBehavior.onChangeRepaint(this)

method getGameInfo*(this: HighScoresCanvas): GameInfo {.base, discardable.} =
        return this.gameInfo

method setPaintable*(this: HighScoresCanvas, paintable: Paintable) {.base.} =
        this.paintable = paintable
        this.repaintBehavior.onChangeRepaint(this)

when declared(newHighScoresCanvasHook6):
    newHighScoresCanvasHook6 = proc (commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, gameInfo: GameInfo, paintable: HighScoresPaintable, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface: HighScoresCanvasInputProcessorFactoryInterface): GameCommandCanvas = newHighScoresCanvas(commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface)

