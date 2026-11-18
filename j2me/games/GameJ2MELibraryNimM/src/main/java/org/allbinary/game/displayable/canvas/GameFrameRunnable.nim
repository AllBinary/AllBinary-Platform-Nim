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
    GameFrameRunnable* = ref object of GameRunnable
        logUtil*: LogUtil
        gameTickDisplayInfoSingleton*: GameTickDisplayInfoSingleton
        allBinaryGameCanvas*: AllBinaryGameCanvas
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper

proc newGameFrameRunnable*(allBinaryGameCanvas: AllBinaryGameCanvas): GameFrameRunnable
proc initGameFrameRunnable*(this: GameFrameRunnable, allBinaryGameCanvas: AllBinaryGameCanvas)
method run*(this: GameFrameRunnable)
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsGameFrameRunnable(this: GameFrameRunnable) =
    this.logUtil = LogUtil.getInstance()
    this.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    discard

proc initGameFrameRunnable*(this: GameFrameRunnable, allBinaryGameCanvas: AllBinaryGameCanvas) =
        initGameRunnable(this)
        this.initFieldsGameFrameRunnable()
        this.allBinaryGameCanvas = allBinaryGameCanvas

proc newGameFrameRunnable*(allBinaryGameCanvas: AllBinaryGameCanvas): GameFrameRunnable =
    result = GameFrameRunnable()
    initGameFrameRunnable(result, allBinaryGameCanvas)

method run*(this: GameFrameRunnable) =
        try:
            let allBinaryGameCanvas: AllBinaryGameCanvas = this.allBinaryGameCanvas
            allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper.setStartTime())
            this.gameTickDisplayInfoSingleton.update()
            allBinaryGameCanvas.processGame()
            if (not allBinaryGameCanvas.isRunning()) or allBinaryGameCanvas.isPaused():
                allBinaryGameCanvas.notifyDonePainting()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)

when declared(newGameFrameRunnableHook1):
    newGameFrameRunnableHook1 = proc (allBinaryGameCanvas: AllBinaryGameCanvas): GameRunnable = newGameFrameRunnable(allBinaryGameCanvas)

