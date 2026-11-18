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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Boolean as BooleanModule
export BooleanModule
import org/allbinary/game/layer/hud/event/GameNotificationEventHandler as GameNotificationEventHandlerModule
export GameNotificationEventHandlerModule

type
    TextNotificationUtil* = ref object of JObject
        TWO*: int32
        FALSE*: bool
        gameNotificationEventHandler*: GameNotificationEventHandler

proc newTextNotificationUtil*(): TextNotificationUtil
proc getInstance*(t: typedesc[TextNotificationUtil]): TextNotificationUtil {.discardable.}
method fireError*(this: TextNotificationUtil, message: string) {.base.}
method fireNew*(this: TextNotificationUtil, message: string) {.base.}
method fireSuccess*(this: TextNotificationUtil, message: string) {.base.}
method fire*(this: TextNotificationUtil, message: string) {.base.}
import org/allbinary/game/layer/hud/event/GameNotificationEvent as GameNotificationEventModule
export GameNotificationEventModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/media/audio/ErrorSound as ErrorSoundModule
export ErrorSoundModule
import org/allbinary/media/audio/PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactoryModule
export PrimaryPlayerQueueFactoryModule
import org/allbinary/media/audio/SelectSound as SelectSoundModule
export SelectSoundModule

var TextNotificationUtil_instanceValue: TextNotificationUtil
var TextNotificationUtil_instanceSet = false
proc instance*(t: typedesc[TextNotificationUtil]): TextNotificationUtil =
    if not TextNotificationUtil_instanceSet:
        TextNotificationUtil_instanceSet = true
        TextNotificationUtil_instanceValue = newTextNotificationUtil()
    TextNotificationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsTextNotificationUtil(this: TextNotificationUtil) =
    this.TWO = SmallIntegerSingletonFactory.getInstance().getAt(2)
    this.FALSE = BooleanFactory.getInstance().FALSE
    this.gameNotificationEventHandler = GameNotificationEventHandler.getInstance()
    discard

proc initTextNotificationUtil*(this: TextNotificationUtil) =
    this.initFieldsTextNotificationUtil()

proc newTextNotificationUtil*(): TextNotificationUtil =
    result = TextNotificationUtil()
    initTextNotificationUtil(result)

proc getInstance*(t: typedesc[TextNotificationUtil]): TextNotificationUtil {.discardable.} =
        return TextNotificationUtil.instance

method fireError*(this: TextNotificationUtil, message: string) {.base.} =
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        this.fire(message)

method fireNew*(this: TextNotificationUtil, message: string) {.base.} =
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
        this.fire(message)

method fireSuccess*(this: TextNotificationUtil, message: string) {.base.} =
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
        this.fire(message)

method fire*(this: TextNotificationUtil, message: string) {.base.} =
        var gameNotificationEvent: GameNotificationEvent = newGameNotificationEvent(this, message, this.TWO, BasicColorFactory.getInstance().RED, this.FALSE)
        this.gameNotificationEventHandler.fireEvent(gameNotificationEvent)

