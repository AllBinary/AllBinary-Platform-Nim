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
# package org.allbinary.game.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/midlet/DemoGameMidlet as DemoGameMidletModule
export DemoGameMidletModule
import org/allbinary/game/midlet/DemoGameMidletEvent as DemoGameMidletEventModule
export DemoGameMidletEventModule

type
    DemoRunnable* = ref object of Runnable
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        demoGameMidlet*: DemoGameMidlet
        startDemoGameMidletEvent*: DemoGameMidletEvent

proc newDemoRunnable*(demoGameMidlet: DemoGameMidlet): DemoRunnable
proc initDemoRunnable*(this: DemoRunnable, demoGameMidlet: DemoGameMidlet)
method run*(this: DemoRunnable)
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/graphics/displayable/command/MyCommandsFactory as MyCommandsFactoryModule
export MyCommandsFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/game/midlet/DemoGameMidletStateFactory as DemoGameMidletStateFactoryModule
export DemoGameMidletStateFactoryModule
import org/allbinary/game/midlet/DemoGameMidletEventHandler as DemoGameMidletEventHandlerModule
export DemoGameMidletEventHandlerModule


# Java field initializers run after the base initializer
proc initFieldsDemoRunnable(this: DemoRunnable) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    discard

proc initDemoRunnable*(this: DemoRunnable, demoGameMidlet: DemoGameMidlet) =
        this.initFieldsDemoRunnable()
        this.demoGameMidlet = demoGameMidlet
        this.startDemoGameMidletEvent = newDemoGameMidletEvent(this.demoGameMidlet, DemoGameMidletStateFactory.getInstance().START_DEMO)

proc newDemoRunnable*(demoGameMidlet: DemoGameMidlet): DemoRunnable =
    result = DemoRunnable()
    initDemoRunnable(result, demoGameMidlet)

method run*(this: DemoRunnable) =
        try:
            this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).append("GameCanvasRunnableInterface").toString(), this, this.commonStrings.RUN)
            this.demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, ProgressCanvasFactory.getInstance())
            this.demoGameMidlet.setGameCanvasRunnableInterface(this.demoGameMidlet.createDemoGameCanvasRunnableInterface())
            this.demoGameMidlet.demoSetup()
            DemoGameMidletEventHandler.getInstance().fireEvent(this.startDemoGameMidletEvent)
            this.demoGameMidlet.startGameCanvasRunnableInterface()
            this.demoGameMidlet.postDemoSetup()
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)

