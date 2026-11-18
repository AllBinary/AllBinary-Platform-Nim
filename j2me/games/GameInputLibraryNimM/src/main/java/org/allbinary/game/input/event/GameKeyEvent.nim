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
# package org.allbinary.game.input.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    GameKeyEvent* = ref object of AllBinaryEventObject
        sourceId*: int32
        repeated*: bool
        key*: int32
        gameActionKey*: int32
        originalKey*: int32

proc newGameKeyEvent*(anyType: JObject, sourceId: int32, originalKey: int32, gameActionKey: int32, key: int32, repeated: bool): GameKeyEvent
proc initGameKeyEvent*(this: GameKeyEvent, anyType: JObject, sourceId: int32, originalKey: int32, gameActionKey: int32, key: int32, repeated: bool)
proc createEvent*(t: typedesc[GameKeyEvent], anyType: JObject, sourceId: int32, key: int32): GameKeyEvent {.discardable.}
method init*(this: GameKeyEvent, anyType: JObject) {.base.}
method setRepeatEvents*(this: GameKeyEvent, repeated: bool) {.base.}
method hasRepeatEvents*(this: GameKeyEvent): bool {.base, discardable.}
method getKey*(this: GameKeyEvent): int32 {.base, discardable.}
method toString*(this: GameKeyEvent): string {.discardable.}
method getOriginalKey*(this: GameKeyEvent): int32 {.base, discardable.}
method setOriginalKey*(this: GameKeyEvent, originalKey: int32) {.base.}
method getGameActionKey*(this: GameKeyEvent): int32 {.base, discardable.}
method setGameActionKey*(this: GameKeyEvent, gameActionKey: int32) {.base.}
method getSourceId*(this: GameKeyEvent): int32 {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var GameKeyEvent_NONEValue: GameKeyEvent
var GameKeyEvent_NONESet = false
proc NONE*(t: typedesc[GameKeyEvent]): GameKeyEvent =
    if not GameKeyEvent_NONESet:
        GameKeyEvent_NONESet = true
        GameKeyEvent_NONEValue = newGameKeyEvent(NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false)
    GameKeyEvent_NONEValue

# Java field initializers run after the base initializer
proc initFieldsGameKeyEvent(this: GameKeyEvent) =
    
    this.repeated = false
    
    this.gameActionKey = 0
    this.originalKey = 0
    discard

proc createEvent*(t: typedesc[GameKeyEvent], anyType: JObject, sourceId: int32, key: int32): GameKeyEvent {.discardable.} =
        return newGameKeyEvent(anyType, sourceId, 0, 0, key, false)

proc initGameKeyEvent*(this: GameKeyEvent, anyType: JObject, sourceId: int32, originalKey: int32, gameActionKey: int32, key: int32, repeated: bool) =
        initAllBinaryEventObject(this, anyType)
        this.initFieldsGameKeyEvent()
        this.sourceId = sourceId
        this.setOriginalKey(originalKey)
        this.key = key
        this.setGameActionKey(gameActionKey)
        this.setRepeatEvents(repeated)

proc newGameKeyEvent*(anyType: JObject, sourceId: int32, originalKey: int32, gameActionKey: int32, key: int32, repeated: bool): GameKeyEvent =
    result = GameKeyEvent()
    initGameKeyEvent(result, anyType, sourceId, originalKey, gameActionKey, key, repeated)

method init*(this: GameKeyEvent, anyType: JObject) {.base.} =
        this.setSource(anyType)

method setRepeatEvents*(this: GameKeyEvent, repeated: bool) {.base.} =
        this.repeated = repeated

method hasRepeatEvents*(this: GameKeyEvent): bool {.base, discardable.} =
        return this.repeated

method getKey*(this: GameKeyEvent): int32 {.base, discardable.} =
        return this.key

method toString*(this: GameKeyEvent): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("\nKey: ")
        stringBuffer.appendint(this.getKey())
        return stringBuffer.toString()

method getOriginalKey*(this: GameKeyEvent): int32 {.base, discardable.} =
        return this.originalKey

method setOriginalKey*(this: GameKeyEvent, originalKey: int32) {.base.} =
        this.originalKey = originalKey

method getGameActionKey*(this: GameKeyEvent): int32 {.base, discardable.} =
        return this.gameActionKey

method setGameActionKey*(this: GameKeyEvent, gameActionKey: int32) {.base.} =
        this.gameActionKey = gameActionKey

method getSourceId*(this: GameKeyEvent): int32 {.base, discardable.} =
        return this.sourceId

when declared(newGameKeyEventHook6):
    newGameKeyEventHook6 = proc (anyType: JObject, sourceId: int32, originalKey: int32, gameActionKey: int32, key: int32, repeated: bool): AllBinaryEventObject = newGameKeyEvent(anyType, sourceId, originalKey, gameActionKey, key, repeated)

