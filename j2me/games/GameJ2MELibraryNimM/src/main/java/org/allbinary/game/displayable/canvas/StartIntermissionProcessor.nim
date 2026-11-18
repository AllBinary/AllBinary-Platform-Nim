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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    StartIntermissionProcessor* = ref object of Processor
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        gameCanvas*: AllBinaryGameCanvas
        WAIT*: int64

proc newStartIntermissionProcessor*(gameCanvas: AllBinaryGameCanvas): StartIntermissionProcessor
proc initStartIntermissionProcessor*(this: StartIntermissionProcessor, gameCanvas: AllBinaryGameCanvas)
method process*(this: StartIntermissionProcessor)


# Java field initializers run after the base initializer
proc initFieldsStartIntermissionProcessor(this: StartIntermissionProcessor) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    this.WAIT = 5000'i64
    discard

proc initStartIntermissionProcessor*(this: StartIntermissionProcessor, gameCanvas: AllBinaryGameCanvas) =
        initProcessor(this)
        this.initFieldsStartIntermissionProcessor()
        this.gameCanvas = gameCanvas

proc newStartIntermissionProcessor*(gameCanvas: AllBinaryGameCanvas): StartIntermissionProcessor =
    result = StartIntermissionProcessor()
    initStartIntermissionProcessor(result, gameCanvas)

method process*(this: StartIntermissionProcessor) =
        if this.gameCanvas.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(this.WAIT):
            this.logUtil.putF("Intermission End", this, this.commonStrings.PROCESS)
            this.gameCanvas.getStartIntermissionInterface().setEnabled(false)

when declared(newStartIntermissionProcessorHook1):
    newStartIntermissionProcessorHook1 = proc (gameCanvas: AllBinaryGameCanvas): Processor = newStartIntermissionProcessor(gameCanvas)

