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
import org/allbinary/thread/ABRunnable as ABRunnableModule
export ABRunnableModule
import org/allbinary/game/displayable/canvas/DemoCanvas as DemoCanvasModule
export DemoCanvasModule

type
    DemoGameStartupRunnable* = ref object of ABRunnable
        logUtil*: LogUtil
        demoCanvas*: DemoCanvas

proc newDemoGameStartupRunnable*(demoCanvas: DemoCanvas): DemoGameStartupRunnable
proc initDemoGameStartupRunnable*(this: DemoGameStartupRunnable, demoCanvas: DemoCanvas)
method run*(this: DemoGameStartupRunnable)
method getType*(this: DemoGameStartupRunnable): int32 {.discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var DemoGameStartupRunnable_TYPEValue: int32
var DemoGameStartupRunnable_TYPESet = false
proc TYPE*(t: typedesc[DemoGameStartupRunnable]): int32 =
    if not DemoGameStartupRunnable_TYPESet:
        DemoGameStartupRunnable_TYPESet = true
        DemoGameStartupRunnable_TYPEValue = 4
    DemoGameStartupRunnable_TYPEValue

# Java field initializers run after the base initializer
proc initFieldsDemoGameStartupRunnable(this: DemoGameStartupRunnable) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initDemoGameStartupRunnable*(this: DemoGameStartupRunnable, demoCanvas: DemoCanvas) =
        initABRunnable(this)
        this.initFieldsDemoGameStartupRunnable()
        this.demoCanvas = demoCanvas

proc newDemoGameStartupRunnable*(demoCanvas: DemoCanvas): DemoGameStartupRunnable =
    result = DemoGameStartupRunnable()
    initDemoGameStartupRunnable(result, demoCanvas)

method run*(this: DemoGameStartupRunnable) =
        try:
            this.setRunning(true)
            this.demoCanvas.stopGameDemo()
            this.demoCanvas.create()
            this.demoCanvas.start()
            this.setRunning(false)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.setRunning(false)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)

method getType*(this: DemoGameStartupRunnable): int32 {.discardable.} =
        return DemoGameStartupRunnable.TYPE

when declared(newDemoGameStartupRunnableHook1):
    newDemoGameStartupRunnableHook1 = proc (demoCanvas: DemoCanvas): ABRunnable = newDemoGameStartupRunnable(demoCanvas)

