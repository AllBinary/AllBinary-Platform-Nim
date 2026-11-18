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
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    GameProcessor* = ref object of Processor
        gameCanvas*: AllBinaryGameCanvas

proc newGameProcessor*(gameCanvas: AllBinaryGameCanvas): GameProcessor
proc initGameProcessor*(this: GameProcessor, gameCanvas: AllBinaryGameCanvas)
method process*(this: GameProcessor)


# Java field initializers run after the base initializer
proc initFieldsGameProcessor(this: GameProcessor) =
    
    discard

proc initGameProcessor*(this: GameProcessor, gameCanvas: AllBinaryGameCanvas) =
        initProcessor(this)
        this.initFieldsGameProcessor()
        this.gameCanvas = gameCanvas

proc newGameProcessor*(gameCanvas: AllBinaryGameCanvas): GameProcessor =
    result = GameProcessor()
    initGameProcessor(result, gameCanvas)

method process*(this: GameProcessor) =
        this.gameCanvas.processPlayingGame()

when declared(newGameProcessorHook1):
    newGameProcessorHook1 = proc (gameCanvas: AllBinaryGameCanvas): Processor = newGameProcessor(gameCanvas)

