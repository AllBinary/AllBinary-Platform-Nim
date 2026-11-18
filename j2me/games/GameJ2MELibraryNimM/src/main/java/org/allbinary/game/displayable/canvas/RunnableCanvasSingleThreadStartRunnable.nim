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
import org/allbinary/canvas/RunnableCanvas as RunnableCanvasModule
export RunnableCanvasModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/game/displayable/canvas/GameRunnable as GameRunnableModule
export GameRunnableModule

type
    RunnableCanvasSingleThreadStartRunnable* = ref object of GameRunnable
        logUtil*: LogUtil
        runnableCanvas*: RunnableCanvas

proc newRunnableCanvasSingleThreadStartRunnable*(demoCanvas: RunnableCanvas): RunnableCanvasSingleThreadStartRunnable
proc initRunnableCanvasSingleThreadStartRunnable*(this: RunnableCanvasSingleThreadStartRunnable, demoCanvas: RunnableCanvas)
method run*(this: RunnableCanvasSingleThreadStartRunnable)
method processLoopSleep*(this: RunnableCanvasSingleThreadStartRunnable)
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsRunnableCanvasSingleThreadStartRunnable(this: RunnableCanvasSingleThreadStartRunnable) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initRunnableCanvasSingleThreadStartRunnable*(this: RunnableCanvasSingleThreadStartRunnable, demoCanvas: RunnableCanvas) =
        initGameRunnable(this)
        this.initFieldsRunnableCanvasSingleThreadStartRunnable()
        this.runnableCanvas = demoCanvas

proc newRunnableCanvasSingleThreadStartRunnable*(demoCanvas: RunnableCanvas): RunnableCanvasSingleThreadStartRunnable =
    result = RunnableCanvasSingleThreadStartRunnable()
    initRunnableCanvasSingleThreadStartRunnable(result, demoCanvas)

method run*(this: RunnableCanvasSingleThreadStartRunnable) =
        try:
            this.runnableCanvas.run()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)

method processLoopSleep*(this: RunnableCanvasSingleThreadStartRunnable) =
        this.runnableCanvas.processLoopSleep()

when declared(newRunnableCanvasSingleThreadStartRunnableHook1):
    newRunnableCanvasSingleThreadStartRunnableHook1 = proc (demoCanvas: RunnableCanvas): GameRunnable = newRunnableCanvasSingleThreadStartRunnable(demoCanvas)

