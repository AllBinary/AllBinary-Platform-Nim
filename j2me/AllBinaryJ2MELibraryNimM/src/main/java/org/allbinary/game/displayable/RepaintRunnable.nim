#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
]#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/thread/ARunnable as ARunnableModule
export ARunnableModule

type
    RepaintRunnable* = ref object of ARunnable
        canvas*: Canvas

proc newRepaintRunnable*(canvas: Canvas): RepaintRunnable
proc initRepaintRunnable*(this: RepaintRunnable, canvas: Canvas)
method run*(this: RepaintRunnable)
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsRepaintRunnable(this: RepaintRunnable) =
    
    discard

proc initRepaintRunnable*(this: RepaintRunnable, canvas: Canvas) =
        initARunnable(this)
        this.initFieldsRepaintRunnable()
        this.canvas = canvas

proc newRepaintRunnable*(canvas: Canvas): RepaintRunnable =
    result = RepaintRunnable()
    initRepaintRunnable(result, canvas)

method run*(this: RepaintRunnable) =
        try:
            this.canvas.repaint()
            DisplayInfoSingleton.getInstance().process()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            let logUtil: LogUtil = LogUtil.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)

when declared(newRepaintRunnableHook1):
    newRepaintRunnableHook1 = proc (canvas: Canvas): ARunnable = newRepaintRunnable(canvas)

