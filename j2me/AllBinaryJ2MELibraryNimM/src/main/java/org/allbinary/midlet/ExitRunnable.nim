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
# package org.allbinary.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/midlet/AllBinaryMidlet as AllBinaryMidletModule
export AllBinaryMidletModule

type
    ExitRunnable* = ref object of Runnable
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        midlet*: AllBinaryMidlet
        processor*: Processor
        isProgress*: bool

proc newExitRunnable*(midlet: AllBinaryMidlet, processor: Processor, isProgress: bool): ExitRunnable
proc initExitRunnable*(this: ExitRunnable, midlet: AllBinaryMidlet, processor: Processor, isProgress: bool)
method run*(this: ExitRunnable)
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule


# Java field initializers run after the base initializer
proc initFieldsExitRunnable(this: ExitRunnable) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    
    discard

proc initExitRunnable*(this: ExitRunnable, midlet: AllBinaryMidlet, processor: Processor, isProgress: bool) =
        this.initFieldsExitRunnable()
        this.midlet = midlet
        this.isProgress = isProgress
        this.processor = processor

proc newExitRunnable*(midlet: AllBinaryMidlet, processor: Processor, isProgress: bool): ExitRunnable =
    result = ExitRunnable()
    initExitRunnable(result, midlet, processor, isProgress)

method run*(this: ExitRunnable) =
        try:
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            this.midlet.destroyAppInRunnable(false, this.isProgress)
            this.midlet.setDisplay(NullCanvas.NULL_CANVASStatic)
            this.midlet.notifyDestroyed()
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
            this.processor.process()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
            try:
                this.processor.process()
            except CatchableError as jcaught:
                let e2 = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)

