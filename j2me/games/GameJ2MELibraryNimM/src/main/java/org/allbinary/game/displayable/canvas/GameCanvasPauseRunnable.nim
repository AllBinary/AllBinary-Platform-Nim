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
import org/allbinary/game/displayable/canvas/GameRunnable as GameRunnableModule
export GameRunnableModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    GameCanvasPauseRunnable* = ref object of GameRunnable
        logUtil*: LogUtil
        allBinaryGameCanvas*: AllBinaryGameCanvas

proc newGameCanvasPauseRunnable*(allBinaryGameCanvas: AllBinaryGameCanvas): GameCanvasPauseRunnable
proc initGameCanvasPauseRunnable*(this: GameCanvasPauseRunnable, allBinaryGameCanvas: AllBinaryGameCanvas)
method run*(this: GameCanvasPauseRunnable)
method processLoopSleep*(this: GameCanvasPauseRunnable)
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsGameCanvasPauseRunnable(this: GameCanvasPauseRunnable) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initGameCanvasPauseRunnable*(this: GameCanvasPauseRunnable, allBinaryGameCanvas: AllBinaryGameCanvas) =
        initGameRunnable(this)
        this.initFieldsGameCanvasPauseRunnable()
        this.allBinaryGameCanvas = allBinaryGameCanvas

proc newGameCanvasPauseRunnable*(allBinaryGameCanvas: AllBinaryGameCanvas): GameCanvasPauseRunnable =
    result = GameCanvasPauseRunnable()
    initGameCanvasPauseRunnable(result, allBinaryGameCanvas)

method run*(this: GameCanvasPauseRunnable) =
        discard

method processLoopSleep*(this: GameCanvasPauseRunnable) =
        try:
            let features: Features = Features.getInstance()
            let isOpenGL: bool = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            if isOpenGL:
                this.allBinaryGameCanvas.processSleep()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)

when declared(newGameCanvasPauseRunnableHook1):
    newGameCanvasPauseRunnableHook1 = proc (allBinaryGameCanvas: AllBinaryGameCanvas): GameRunnable = newGameCanvasPauseRunnable(allBinaryGameCanvas)

