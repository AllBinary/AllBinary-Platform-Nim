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
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/game/state/GameStateFactory as GameStateFactoryModule
export GameStateFactoryModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    EndGameProcessor* = ref object of Processor
        gameStateFactory*: GameStateFactory
        gameCanvas*: AllBinaryGameCanvas
        WAIT*: int64

proc newEndGameProcessor*(gameCanvas: AllBinaryGameCanvas): EndGameProcessor
proc initEndGameProcessor*(this: EndGameProcessor, gameCanvas: AllBinaryGameCanvas)
method process*(this: EndGameProcessor)
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule
import org/allbinary/game/score/HighScoresHelperBase as HighScoresHelperBaseModule
export HighScoresHelperBaseModule
import org/allbinary/game/score/NullHighScoresSingletonFactory as NullHighScoresSingletonFactoryModule
export NullHighScoresSingletonFactoryModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule


# Java field initializers run after the base initializer
proc initFieldsEndGameProcessor(this: EndGameProcessor) =
    this.gameStateFactory = GameStateFactory.getInstance()
    
    this.WAIT = 5000'i64
    discard

proc initEndGameProcessor*(this: EndGameProcessor, gameCanvas: AllBinaryGameCanvas) =
        initProcessor(this)
        this.initFieldsEndGameProcessor()
        this.gameCanvas = gameCanvas

proc newEndGameProcessor*(gameCanvas: AllBinaryGameCanvas): EndGameProcessor =
    result = EndGameProcessor()
    initEndGameProcessor(result, gameCanvas)

method process*(this: EndGameProcessor) =
        if this.gameCanvas.isHighScoreSubmitted():
            if this.gameCanvas.getGameStateTimeHelper().isElapsedTNT(this.WAIT):
                if this.gameCanvas.getGameState() == this.gameStateFactory.SHOW_END_RESULT_GAME_STATE:
                    let highScoresBase: HighScoresHelperBase = HighScoresHelperBase(JObject(this.gameCanvas.highScoresHelper))
                    let highScores: HighScores = highScoresBase.getSelectedHighScores()
                    if (not jSame(highScores, NullHighScoresSingletonFactory.getInstance())):
                        highScoresBase.selectHighScores()
                        this.gameCanvas.getRealHighScoresPaintable().setHighScores(highScores)
                        this.gameCanvas.setGameState(this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)
                        this.gameCanvas.setHighScoresPaintable(this.gameCanvas.getRealHighScoresPaintable())
                elif this.gameCanvas.getGameState() == this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE:
                    this.gameCanvas.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE)
                    this.gameCanvas.setHighScoresPaintable(NullPaintable.getInstance())

when declared(newEndGameProcessorHook1):
    newEndGameProcessorHook1 = proc (gameCanvas: AllBinaryGameCanvas): Processor = newEndGameProcessor(gameCanvas)

