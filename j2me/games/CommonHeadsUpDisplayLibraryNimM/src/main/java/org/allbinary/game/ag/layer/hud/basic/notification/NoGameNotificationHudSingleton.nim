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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud as GameNotificationHudModule
export GameNotificationHudModule

type
    NoGameNotificationHudSingleton* = ref object of JObject
        logUtil*: LogUtil
        gameNotificationHud*: GameNotificationHud

proc newNoGameNotificationHudSingleton*(): NoGameNotificationHudSingleton
proc initNoGameNotificationHudSingleton*(this: NoGameNotificationHudSingleton)
proc getInstance*(t: typedesc[NoGameNotificationHudSingleton]): NoGameNotificationHudSingleton {.discardable.}
method getGameNotificationHud*(this: NoGameNotificationHudSingleton): GameNotificationHud {.base, discardable.}
import org/allbinary/game/graphics/hud/BasicHudFactory as BasicHudFactoryModule
export BasicHudFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/ag/layer/hud/basic/notification/NoGameGameNotificationHud as NoGameGameNotificationHudModule
export NoGameGameNotificationHudModule

var NoGameNotificationHudSingleton_instanceValue: NoGameNotificationHudSingleton
var NoGameNotificationHudSingleton_instanceSet = false
proc instance*(t: typedesc[NoGameNotificationHudSingleton]): NoGameNotificationHudSingleton =
    if not NoGameNotificationHudSingleton_instanceSet:
        NoGameNotificationHudSingleton_instanceSet = true
        NoGameNotificationHudSingleton_instanceValue = newNoGameNotificationHudSingleton()
    NoGameNotificationHudSingleton_instanceValue

# Java field initializers run after the base initializer
proc initFieldsNoGameNotificationHudSingleton(this: NoGameNotificationHudSingleton) =
    this.logUtil = LogUtil.getInstance()
    this.gameNotificationHud = GameNotificationHud.NULL_GAME_NOTIFICATION
    discard

proc getInstance*(t: typedesc[NoGameNotificationHudSingleton]): NoGameNotificationHudSingleton {.discardable.} =
        return NoGameNotificationHudSingleton.instance

proc initNoGameNotificationHudSingleton*(this: NoGameNotificationHudSingleton) =
        this.initFieldsNoGameNotificationHudSingleton()
        try:
            let basicHudFactory: BasicHudFactory = BasicHudFactory.getInstance()
            this.gameNotificationHud = newNoGameGameNotificationHud()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)

proc newNoGameNotificationHudSingleton*(): NoGameNotificationHudSingleton =
    result = NoGameNotificationHudSingleton()
    initNoGameNotificationHudSingleton(result)

method getGameNotificationHud*(this: NoGameNotificationHudSingleton): GameNotificationHud {.base, discardable.} =
        return this.gameNotificationHud

