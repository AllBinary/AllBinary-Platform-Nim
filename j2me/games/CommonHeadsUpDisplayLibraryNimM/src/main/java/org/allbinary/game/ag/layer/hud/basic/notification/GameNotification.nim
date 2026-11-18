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
import org/allbinary/game/layer/hud/event/GameNotificationEvent as GameNotificationEventModule
export GameNotificationEventModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    GameNotification* = ref object of JObject
        stringList*: BasicArrayList
        timeList*: BasicArrayList
        colorList*: BasicArrayList

proc newGameNotification*(): GameNotification
method add*(this: GameNotification, string: string, seconds: int32, basicColor: BasicColor) {.base.}
method clear*(this: GameNotification) {.base.}
method getSize*(this: GameNotification): int32 {.base, discardable.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var GameNotification_NULL_GAME_NOTIFICATION_EVENTValue: GameNotificationEvent
var GameNotification_NULL_GAME_NOTIFICATION_EVENTSet = false
proc NULL_GAME_NOTIFICATION_EVENT*(t: typedesc[GameNotification]): GameNotificationEvent =
    if not GameNotification_NULL_GAME_NOTIFICATION_EVENTSet:
        GameNotification_NULL_GAME_NOTIFICATION_EVENTSet = true
        GameNotification_NULL_GAME_NOTIFICATION_EVENTValue = newGameNotificationEvent(NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, 0, BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE)
    GameNotification_NULL_GAME_NOTIFICATION_EVENTValue

# Java field initializers run after the base initializer
proc initFieldsGameNotification(this: GameNotification) =
    this.stringList = newBasicArrayListD()
    this.timeList = newBasicArrayListD()
    this.colorList = newBasicArrayListD()
    discard

proc initGameNotification*(this: GameNotification) =
    this.initFieldsGameNotification()

proc newGameNotification*(): GameNotification =
    result = GameNotification()
    initGameNotification(result)

method add*(this: GameNotification, string: string, seconds: int32, basicColor: BasicColor) {.base.} =
        if (not this.stringList.contains(string)):
            this.stringList.add(string)
            this.timeList.add(seconds)
            this.colorList.add(basicColor)

method clear*(this: GameNotification) {.base.} =
        this.stringList.clear()
        this.timeList.clear()
        this.colorList.clear()

method getSize*(this: GameNotification): int32 {.base, discardable.} =
        return this.stringList.size()

