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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/score/displayable/HighScoresCanvas as HighScoresCanvasModule
export HighScoresCanvasModule
import org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface as HighScoresCanvasInputProcessorFactoryInterfaceModule
export HighScoresCanvasInputProcessorFactoryInterfaceModule
import org/allbinary/game/score/HighScoresCanvasInputProcessor as HighScoresCanvasInputProcessorModule
export HighScoresCanvasInputProcessorModule

type
    HighScoresCanvasChangeLevelInputProcessorFactory* = ref object of HighScoresCanvasInputProcessorFactoryInterface

proc newHighScoresCanvasChangeLevelInputProcessorFactory*(): HighScoresCanvasChangeLevelInputProcessorFactory
method getInstance*(this: HighScoresCanvasChangeLevelInputProcessorFactory, highScoresCanvas: HighScoresCanvas): HighScoresCanvasInputProcessor {.discardable.}
import org/allbinary/game/score/HighScoresCanvasLevelChangeInputProcessor as HighScoresCanvasLevelChangeInputProcessorModule
export HighScoresCanvasLevelChangeInputProcessorModule


proc initHighScoresCanvasChangeLevelInputProcessorFactory*(this: HighScoresCanvasChangeLevelInputProcessorFactory) =
    discard

proc newHighScoresCanvasChangeLevelInputProcessorFactory*(): HighScoresCanvasChangeLevelInputProcessorFactory =
    result = HighScoresCanvasChangeLevelInputProcessorFactory()
    initHighScoresCanvasChangeLevelInputProcessorFactory(result)

method getInstance*(this: HighScoresCanvasChangeLevelInputProcessorFactory, highScoresCanvas: HighScoresCanvas): HighScoresCanvasInputProcessor {.discardable.} =
        return newHighScoresCanvasLevelChangeInputProcessor(highScoresCanvas)

