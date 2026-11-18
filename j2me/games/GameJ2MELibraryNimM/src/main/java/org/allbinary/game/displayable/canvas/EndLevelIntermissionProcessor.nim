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
    EndLevelIntermissionProcessor* = ref object of Processor
        gameCanvas*: AllBinaryGameCanvas

proc newEndLevelIntermissionProcessor*(gameCanvas: AllBinaryGameCanvas): EndLevelIntermissionProcessor
proc initEndLevelIntermissionProcessor*(this: EndLevelIntermissionProcessor, gameCanvas: AllBinaryGameCanvas)
method process*(this: EndLevelIntermissionProcessor)


# Java field initializers run after the base initializer
proc initFieldsEndLevelIntermissionProcessor(this: EndLevelIntermissionProcessor) =
    
    discard

proc initEndLevelIntermissionProcessor*(this: EndLevelIntermissionProcessor, gameCanvas: AllBinaryGameCanvas) =
        initProcessor(this)
        this.initFieldsEndLevelIntermissionProcessor()
        this.gameCanvas = gameCanvas

proc newEndLevelIntermissionProcessor*(gameCanvas: AllBinaryGameCanvas): EndLevelIntermissionProcessor =
    result = EndLevelIntermissionProcessor()
    initEndLevelIntermissionProcessor(result, gameCanvas)

method process*(this: EndLevelIntermissionProcessor) =
        this.gameCanvas.processEndLevelIntermissionGameState()

when declared(newEndLevelIntermissionProcessorHook1):
    newEndLevelIntermissionProcessorHook1 = proc (gameCanvas: AllBinaryGameCanvas): Processor = newEndLevelIntermissionProcessor(gameCanvas)

