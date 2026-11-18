#[
 
  AllBinary Open License Version 1
  Copyright (c) 2026 AllBinary
  
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
    InitGameProcessor* = ref object of Processor
        gameCanvas*: AllBinaryGameCanvas

proc newInitGameProcessor*(gameCanvas: AllBinaryGameCanvas): InitGameProcessor
proc initInitGameProcessor*(this: InitGameProcessor, gameCanvas: AllBinaryGameCanvas)
method process*(this: InitGameProcessor)
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule


# Java field initializers run after the base initializer
proc initFieldsInitGameProcessor(this: InitGameProcessor) =
    
    discard

proc initInitGameProcessor*(this: InitGameProcessor, gameCanvas: AllBinaryGameCanvas) =
        initProcessor(this)
        this.initFieldsInitGameProcessor()
        this.gameCanvas = gameCanvas

proc newInitGameProcessor*(gameCanvas: AllBinaryGameCanvas): InitGameProcessor =
    result = InitGameProcessor()
    initInitGameProcessor(result, gameCanvas)

method process*(this: InitGameProcessor) =
        if ProgressCanvasFactory.getInstance().isInGame():
            this.gameCanvas.setProcessGameProcessorInit()

when declared(newInitGameProcessorHook1):
    newInitGameProcessorHook1 = proc (gameCanvas: AllBinaryGameCanvas): Processor = newInitGameProcessor(gameCanvas)

