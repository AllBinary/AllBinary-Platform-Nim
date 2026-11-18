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
# package org.allbinary.game.layer.hud.event

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Boolean as BooleanModule
export BooleanModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    GameNotificationEvent* = ref object of AllBinaryEventObject
        string*: string
        seconds*: int32
        basicColor*: BasicColor
        removeable*: bool

proc newGameNotificationEvent*(anyType: JObject, string: string, seconds: int32, basicColor: BasicColor, permanent: bool): GameNotificationEvent
proc initGameNotificationEvent*(this: GameNotificationEvent, anyType: JObject, string: string, seconds: int32, basicColor: BasicColor, permanent: bool)
method getString*(this: GameNotificationEvent): string {.base, discardable.}
method getSeconds*(this: GameNotificationEvent): int32 {.base, discardable.}
method getBasicColorP*(this: GameNotificationEvent): BasicColor {.base, discardable.}
method getPermanent*(this: GameNotificationEvent): bool {.base, discardable.}
method setString*(this: GameNotificationEvent, string: string) {.base.}
method setBasicColorP*(this: GameNotificationEvent, basicColor: BasicColor) {.base.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsGameNotificationEvent(this: GameNotificationEvent) =
    this.string = StringUtil.getInstance().EMPTY_STRING
    
    this.basicColor = BasicColorFactory.getInstance().BLACK
    
    discard

proc initGameNotificationEvent*(this: GameNotificationEvent, anyType: JObject, string: string, seconds: int32, basicColor: BasicColor, permanent: bool) =
        initAllBinaryEventObject(this, anyType)
        this.initFieldsGameNotificationEvent()
        this.setString(string)
        this.seconds = seconds
        this.setBasicColorP(basicColor)
        this.removeable = permanent

proc newGameNotificationEvent*(anyType: JObject, string: string, seconds: int32, basicColor: BasicColor, permanent: bool): GameNotificationEvent =
    result = GameNotificationEvent()
    initGameNotificationEvent(result, anyType, string, seconds, basicColor, permanent)

method getString*(this: GameNotificationEvent): string {.base, discardable.} =
        return this.string

method getSeconds*(this: GameNotificationEvent): int32 {.base, discardable.} =
        return this.seconds

method getBasicColorP*(this: GameNotificationEvent): BasicColor {.base, discardable.} =
        return this.basicColor

method getPermanent*(this: GameNotificationEvent): bool {.base, discardable.} =
        return this.removeable

method setString*(this: GameNotificationEvent, string: string) {.base.} =
        this.string = string

method setBasicColorP*(this: GameNotificationEvent, basicColor: BasicColor) {.base.} =
        this.basicColor = basicColor

when declared(newGameNotificationEventHook5):
    newGameNotificationEventHook5 = proc (anyType: JObject, string: string, seconds: int32, basicColor: BasicColor, permanent: bool): AllBinaryEventObject = newGameNotificationEvent(anyType, string, seconds, basicColor, permanent)

