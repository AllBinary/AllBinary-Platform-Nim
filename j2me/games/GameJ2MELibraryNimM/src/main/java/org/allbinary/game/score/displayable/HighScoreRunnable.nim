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
# package org.allbinary.game.score.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/thread/ARunnable as ARunnableModule
export ARunnableModule
import org/allbinary/game/score/displayable/HighScoresCanvas as HighScoresCanvasModule
export HighScoresCanvasModule

type
    HighScoreRunnable* = ref object of ARunnable
        highScoresCanvas*: HighScoresCanvas

proc newHighScoreRunnable*(highScoresCanvas: HighScoresCanvas): HighScoreRunnable
proc initHighScoreRunnable*(this: HighScoreRunnable, highScoresCanvas: HighScoresCanvas)
method run*(this: HighScoreRunnable)
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/logic/ABSystemWrapper as ABSystemWrapperModule
export ABSystemWrapperModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsHighScoreRunnable(this: HighScoreRunnable) =
    
    discard

proc initHighScoreRunnable*(this: HighScoreRunnable, highScoresCanvas: HighScoresCanvas) =
        initARunnable(this)
        this.initFieldsHighScoreRunnable()
        this.highScoresCanvas = highScoresCanvas

proc newHighScoreRunnable*(highScoresCanvas: HighScoresCanvas): HighScoreRunnable =
    result = HighScoreRunnable()
    initHighScoreRunnable(result, highScoresCanvas)

method run*(this: HighScoreRunnable) =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        let logUtil: LogUtil = LogUtil.getInstance()
        let highScoresCanvas: HighScoresCanvas = this.highScoresCanvas
        try:
            let isHTML: bool = J2MEUtil.isHTML()
            if (not isHTML):
                while (not highScoresCanvas.hasPainted):
                    discard
                highScoresCanvas.hasPainted = false
            let stringMaker: StringMaker = newStringMaker()
            let systemWrapper: ABSystemWrapper = ABSystemWrapper.getInstance()
            let currentTimeMillis: int64 = systemWrapper.currentTimeMillis()
            logUtil.putF(stringMaker.append("HighScoresCanvas - Request repaint to be sure: ").appendlong(currentTimeMillis).toString(), this, commonStrings.RUN)
            highScoresCanvas.repaintBehavior.onChangeRepaint(highScoresCanvas)
            if (not isHTML):
                while (not highScoresCanvas.hasPainted):
                    discard
            stringMaker.delete(0, stringMaker.length())
            logUtil.putF(stringMaker.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ").appendlong(currentTimeMillis).toString(), this, commonStrings.RUN)
            highScoresCanvas.executeUpdate()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)

when declared(newHighScoreRunnableHook1):
    newHighScoreRunnableHook1 = proc (highScoresCanvas: HighScoresCanvas): ARunnable = newHighScoreRunnable(highScoresCanvas)

