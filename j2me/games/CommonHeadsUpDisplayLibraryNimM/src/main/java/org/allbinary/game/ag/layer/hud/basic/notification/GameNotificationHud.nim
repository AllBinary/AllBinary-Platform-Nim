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
# package org.allbinary.game.ag.layer.hud.basic.notification

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Boolean as BooleanModule
export BooleanModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/graphics/hud/BasicHud as BasicHudModule
export BasicHudModule
import org/allbinary/game/layer/hud/event/GameNotificationEvent as GameNotificationEventModule
export GameNotificationEventModule
import org/allbinary/game/layer/hud/event/GameNotificationListenerInterface as GameNotificationListenerInterfaceModule
export GameNotificationListenerInterfaceModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    GameNotificationHud* = ref object of BasicHud
        METHOD_NAME*: string
        lastGameNotificationEvent*: GameNotificationEvent

converter jAsGameNotificationListenerInterface*(value: GameNotificationHud): GameNotificationListenerInterface = cast[GameNotificationListenerInterface](value)
proc newGameNotificationHud*(location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): GameNotificationHud
proc initGameNotificationHud*(this: GameNotificationHud, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor)
method onEvent*(this: GameNotificationHud, eventObject: AllBinaryEventObject)
method onGameNotificationEvent*(this: GameNotificationHud, gameNotificationEvent: GameNotificationEvent)
method add*(this: GameNotificationHud, string: string, seconds: int32, basicColor: BasicColor, permanent: bool) {.base.}
method processTick*(this: GameNotificationHud) {.base.}
method paint*(this: GameNotificationHud, graphics: Graphics) {.base.}
method clear*(this: GameNotificationHud) {.base.}
import org/allbinary/game/graphics/hud/BasicHudFactory as BasicHudFactoryModule
export BasicHudFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/game/ag/layer/hud/basic/notification/GameNotification as GameNotificationModule
export GameNotificationModule

var GameNotificationHud_NULL_GAME_NOTIFICATIONValue: GameNotificationHud
var GameNotificationHud_NULL_GAME_NOTIFICATIONSet = false
proc NULL_GAME_NOTIFICATION*(t: typedesc[GameNotificationHud]): GameNotificationHud =
    if not GameNotificationHud_NULL_GAME_NOTIFICATIONSet:
        GameNotificationHud_NULL_GAME_NOTIFICATIONSet = true
        GameNotificationHud_NULL_GAME_NOTIFICATIONValue = newGameNotificationHud(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 0, BasicColorFactory.getInstance().RED)
    GameNotificationHud_NULL_GAME_NOTIFICATIONValue

# Java field initializers run after the base initializer
proc initFieldsGameNotificationHud(this: GameNotificationHud) =
    this.METHOD_NAME = "onGameNotificationEvent"
    this.lastGameNotificationEvent = GameNotification.NULL_GAME_NOTIFICATION_EVENT
    discard

proc initGameNotificationHud*(this: GameNotificationHud, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor) =
        initBasicHud(this, location, direction, bufferZone, basicColor)
        this.initFieldsGameNotificationHud()

proc newGameNotificationHud*(location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): GameNotificationHud =
    result = GameNotificationHud()
    initGameNotificationHud(result, location, direction, bufferZone, basicColor)

method onEvent*(this: GameNotificationHud, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onGameNotificationEvent*(this: GameNotificationHud, gameNotificationEvent: GameNotificationEvent) =
        if this.lastGameNotificationEvent != gameNotificationEvent:
            this.lastGameNotificationEvent = gameNotificationEvent
            this.logUtil.putF(gameNotificationEvent.getString(), this, this.METHOD_NAME)
        this.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent())

method add*(this: GameNotificationHud, string: string, seconds: int32, basicColor: BasicColor, permanent: bool) {.base.} =
        discard

method processTick*(this: GameNotificationHud) {.base.} =
        discard

method paint*(this: GameNotificationHud, graphics: Graphics) {.base.} =
        discard

method clear*(this: GameNotificationHud) {.base.} =
        discard

when declared(newGameNotificationHudHook4):
    newGameNotificationHudHook4 = proc (location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): BasicHud = newGameNotificationHud(location, direction, bufferZone, basicColor)

