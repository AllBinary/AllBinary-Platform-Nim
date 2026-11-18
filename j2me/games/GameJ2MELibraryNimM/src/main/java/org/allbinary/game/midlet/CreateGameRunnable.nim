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
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/midlet/DemoGameMidlet as DemoGameMidletModule
export DemoGameMidletModule
import org/allbinary/game/midlet/DemoGameMidletEvent as DemoGameMidletEventModule
export DemoGameMidletEventModule

type
    CreateGameRunnable* = ref object of Runnable
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        demoGameMidlet*: DemoGameMidlet
        hashtable*: ABHashtable
        startGameMidletEvent*: DemoGameMidletEvent

proc newCreateGameRunnable*(demoGameMidlet: DemoGameMidlet, hashtable: ABHashtable): CreateGameRunnable
proc initCreateGameRunnable*(this: CreateGameRunnable, demoGameMidlet: DemoGameMidlet, hashtable: ABHashtable)
method run*(this: CreateGameRunnable)
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/graphics/displayable/command/MyCommandsFactory as MyCommandsFactoryModule
export MyCommandsFactoryModule
import org/allbinary/game/midlet/DemoGameMidletStateFactory as DemoGameMidletStateFactoryModule
export DemoGameMidletStateFactoryModule
import org/allbinary/game/midlet/DemoGameMidletEventHandler as DemoGameMidletEventHandlerModule
export DemoGameMidletEventHandlerModule


# Java field initializers run after the base initializer
proc initFieldsCreateGameRunnable(this: CreateGameRunnable) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    
    discard

proc initCreateGameRunnable*(this: CreateGameRunnable, demoGameMidlet: DemoGameMidlet, hashtable: ABHashtable) =
        this.initFieldsCreateGameRunnable()
        this.demoGameMidlet = demoGameMidlet
        this.hashtable = hashtable
        this.startGameMidletEvent = newDemoGameMidletEvent(this, DemoGameMidletStateFactory.getInstance().START_GAME)

proc newCreateGameRunnable*(demoGameMidlet: DemoGameMidlet, hashtable: ABHashtable): CreateGameRunnable =
    result = CreateGameRunnable()
    initCreateGameRunnable(result, demoGameMidlet, hashtable)

method run*(this: CreateGameRunnable) =
        try:
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
            this.demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, progressCanvas)
            this.demoGameMidlet.stopGameCanvasRunnableInterface()
            this.demoGameMidlet.setGameCanvasRunnableInterface(this.demoGameMidlet.createGameCanvasRunnableInterface())
            this.demoGameMidlet.getGameCanvasRunnableInterface().setLoadStateHashtable(this.hashtable)
            this.demoGameMidlet.startGameCanvasRunnableInterface()
            DemoGameMidletEventHandler.getInstance().fireEvent(this.startGameMidletEvent)
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)

