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
# package org.allbinary.game.init

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import org/allbinary/game/configuration/event/GameInitializedEvent as GameInitializedEventModule
export GameInitializedEventModule
import org/allbinary/game/configuration/event/GameInitializedListenerInterface as GameInitializedListenerInterfaceModule
export GameInitializedListenerInterfaceModule
import org/allbinary/graphics/threed/SWTJOGLProcessor as SWTJOGLProcessorModule
export SWTJOGLProcessorModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    DefaultGameInitializationListener* = ref object of GameInitializedListenerInterface
        logUtil*: LogUtil
        swtJOGLProcessor*: SWTJOGLProcessor
        firstTime*: bool

proc newDefaultGameInitializationListener*(): DefaultGameInitializationListener
proc initDefaultGameInitializationListener*(this: DefaultGameInitializationListener)
method onEvent*(this: DefaultGameInitializationListener, eventObject: AllBinaryEventObject)
method onGameInitialized*(this: DefaultGameInitializationListener, gameInitializedEvent: GameInitializedEvent)
import org/allbinary/game/configuration/event/GameInitializedEventHandler as GameInitializedEventHandlerModule
export GameInitializedEventHandlerModule
import org/allbinary/game/resource/FeatureResourceInitializationUtil as FeatureResourceInitializationUtilModule
export FeatureResourceInitializationUtilModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsDefaultGameInitializationListener(this: DefaultGameInitializationListener) =
    this.logUtil = LogUtil.getInstance()
    this.swtJOGLProcessor = SWTJOGLProcessor.getInstance()
    this.firstTime = true
    discard

proc initDefaultGameInitializationListener*(this: DefaultGameInitializationListener) =
        this.initFieldsDefaultGameInitializationListener()
        var gameInitializedEventHandler: GameInitializedEventHandler = GameInitializedEventHandler.getInstance()
        gameInitializedEventHandler.removeAllListeners()
        gameInitializedEventHandler.addListenerInterface(GameInitializedListenerInterface(JObject(this)))

proc newDefaultGameInitializationListener*(): DefaultGameInitializationListener =
    result = DefaultGameInitializationListener()
    initDefaultGameInitializationListener(result)

method onEvent*(this: DefaultGameInitializationListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onGameInitialized*(this: DefaultGameInitializationListener, gameInitializedEvent: GameInitializedEvent) =
        let ON_GAME_INITIALIZED: string = "onGameInitialized"
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        try:
            this.logUtil.putF(commonStrings.START, this, ON_GAME_INITIALIZED)
            while (not this.swtJOGLProcessor.isHolderCreated()):
                this.logUtil.putF(commonStrings.UPDATE, this, ON_GAME_INITIALIZED)
                JThread.sleep(20)
            FeatureResourceInitializationUtil.getInstance().init(gameInitializedEvent.getLevel())
            if this.firstTime:
                this.firstTime = false
            else:
                this.swtJOGLProcessor.onSurfaceChanged()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(commonStrings.EXCEPTION, this, ON_GAME_INITIALIZED, e)

