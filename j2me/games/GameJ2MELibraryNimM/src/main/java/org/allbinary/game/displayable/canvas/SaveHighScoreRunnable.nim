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
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/game/score/displayable/HighScoreTextBox as HighScoreTextBoxModule
export HighScoreTextBoxModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule

type
    SaveHighScoreRunnable* = ref object of Runnable
        progressCanvas*: ProgressCanvas
        isLast*: bool
        textBox*: HighScoreTextBox

proc newSaveHighScoreRunnable*(isLast: bool, textBox: HighScoreTextBox): SaveHighScoreRunnable
proc initSaveHighScoreRunnable*(this: SaveHighScoreRunnable, isLast: bool, textBox: HighScoreTextBox)
method run*(this: SaveHighScoreRunnable)
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsSaveHighScoreRunnable(this: SaveHighScoreRunnable) =
    this.progressCanvas = ProgressCanvasFactory.getInstance()
    
    
    discard

proc initSaveHighScoreRunnable*(this: SaveHighScoreRunnable, isLast: bool, textBox: HighScoreTextBox) =
        this.initFieldsSaveHighScoreRunnable()
        this.isLast = isLast
        this.textBox = textBox

proc newSaveHighScoreRunnable*(isLast: bool, textBox: HighScoreTextBox): SaveHighScoreRunnable =
    result = SaveHighScoreRunnable()
    initSaveHighScoreRunnable(result, isLast, textBox)

method run*(this: SaveHighScoreRunnable) =
        let logUtil: LogUtil = LogUtil.getInstance()
        try:
            if this.isLast:
                this.textBox.submit()
            else:
                this.textBox.saveHighScore()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, "run", e)
            this.progressCanvas.`end`()

