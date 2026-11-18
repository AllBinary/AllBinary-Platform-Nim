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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/game/displayable/canvas/GameRunnable as GameRunnableModule
export GameRunnableModule
import org/allbinary/game/displayable/canvas/DemoCanvas as DemoCanvasModule
export DemoCanvasModule

type
    DemoGameRunnable* = ref object of GameRunnable
        logUtil*: LogUtil
        demoCanvas*: DemoCanvas
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper

proc newDemoGameRunnable*(demoCanvas: DemoCanvas): DemoGameRunnable
proc initDemoGameRunnable*(this: DemoGameRunnable, demoCanvas: DemoCanvas)
method run*(this: DemoGameRunnable)
method processLoopSleep*(this: DemoGameRunnable)
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsDemoGameRunnable(this: DemoGameRunnable) =
    this.logUtil = LogUtil.getInstance()
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    discard

proc initDemoGameRunnable*(this: DemoGameRunnable, demoCanvas: DemoCanvas) =
        initGameRunnable(this)
        this.initFieldsDemoGameRunnable()
        this.demoCanvas = demoCanvas

proc newDemoGameRunnable*(demoCanvas: DemoCanvas): DemoGameRunnable =
    result = DemoGameRunnable()
    initDemoGameRunnable(result, demoCanvas)

method run*(this: DemoGameRunnable) =
        try:
            this.demoCanvas.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper.setStartTime())
            this.demoCanvas.processGame()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)

method processLoopSleep*(this: DemoGameRunnable) =
        this.demoCanvas.processLoopSleep()

when declared(newDemoGameRunnableHook1):
    newDemoGameRunnableHook1 = proc (demoCanvas: DemoCanvas): GameRunnable = newDemoGameRunnable(demoCanvas)

