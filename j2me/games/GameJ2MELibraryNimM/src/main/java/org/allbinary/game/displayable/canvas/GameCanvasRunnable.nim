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
import org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton as GameTickDisplayInfoSingletonModule
export GameTickDisplayInfoSingletonModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/game/displayable/canvas/GameRunnable as GameRunnableModule
export GameRunnableModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    GameCanvasRunnable* = ref object of GameRunnable
        logUtil*: LogUtil
        gameTickDisplayInfoSingleton*: GameTickDisplayInfoSingleton
        allBinaryGameCanvas*: AllBinaryGameCanvas
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper

proc newGameCanvasRunnable*(allBinaryGameCanvas: AllBinaryGameCanvas): GameCanvasRunnable
proc initGameCanvasRunnable*(this: GameCanvasRunnable, allBinaryGameCanvas: AllBinaryGameCanvas)
method run*(this: GameCanvasRunnable)
method processLoopSleep*(this: GameCanvasRunnable)
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsGameCanvasRunnable(this: GameCanvasRunnable) =
    this.logUtil = LogUtil.getInstance()
    this.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    discard

proc initGameCanvasRunnable*(this: GameCanvasRunnable, allBinaryGameCanvas: AllBinaryGameCanvas) =
        initGameRunnable(this)
        this.initFieldsGameCanvasRunnable()
        this.allBinaryGameCanvas = allBinaryGameCanvas

proc newGameCanvasRunnable*(allBinaryGameCanvas: AllBinaryGameCanvas): GameCanvasRunnable =
    result = GameCanvasRunnable()
    initGameCanvasRunnable(result, allBinaryGameCanvas)

method run*(this: GameCanvasRunnable) =
        try:
            this.allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper.setStartTime())
            this.gameTickDisplayInfoSingleton.update()
            this.allBinaryGameCanvas.processGame()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)

method processLoopSleep*(this: GameCanvasRunnable) =
        this.allBinaryGameCanvas.processLoopSleep()

when declared(newGameCanvasRunnableHook1):
    newGameCanvasRunnableHook1 = proc (allBinaryGameCanvas: AllBinaryGameCanvas): GameRunnable = newGameCanvasRunnable(allBinaryGameCanvas)

