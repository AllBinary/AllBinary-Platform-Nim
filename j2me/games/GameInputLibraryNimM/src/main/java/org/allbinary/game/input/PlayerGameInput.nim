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
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/GameKeyEventListenerInterface as GameKeyEventListenerInterfaceModule
export GameKeyEventListenerInterfaceModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/game/input/GameInputStrings as GameInputStringsModule
export GameInputStringsModule

type
    PlayerGameInput* = ref object of GameInput
        gameInputStrings*: GameInputStrings
        playerInputId*: int32

converter jAsGameKeyEventListenerInterface*(value: PlayerGameInput): GameKeyEventListenerInterface = cast[GameKeyEventListenerInterface](value)
proc newPlayerGameInput*(gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList, playerInputId: int32): PlayerGameInput
proc initPlayerGameInput*(this: PlayerGameInput, gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList, playerInputId: int32)
method onPressGameKeyEvent*(this: PlayerGameInput, gameKeyEvent: GameKeyEvent)
method onDownGameKeyEvent*(this: PlayerGameInput, gameKeyEvent: GameKeyEvent)
method onDownKeyEvent*(this: PlayerGameInput, gameKeyEvent: GameKeyEvent) {.base.}
method onDownKey*(this: PlayerGameInput, gameKeyEvent: int32) {.base.}
method onUpGameKeyEvent*(this: PlayerGameInput, gameKeyEvent: GameKeyEvent)
method onUpKeyEvent*(this: PlayerGameInput, gameKeyEvent: int32) {.base.}
method onEvent*(this: PlayerGameInput, eventObject: AllBinaryEventObject)
method getPlayerInputId*(this: PlayerGameInput): int32 {.base, discardable.}
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule


# Java field initializers run after the base initializer
proc initFieldsPlayerGameInput(this: PlayerGameInput) =
    this.gameInputStrings = GameInputStrings.getInstance()
    
    discard

proc initPlayerGameInput*(this: PlayerGameInput, gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList, playerInputId: int32) =
        initGameInput(this, gameKeyEventList, removalGameKeyEventList)
        this.initFieldsPlayerGameInput()
        this.playerInputId = playerInputId

proc newPlayerGameInput*(gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList, playerInputId: int32): PlayerGameInput =
    result = PlayerGameInput()
    initPlayerGameInput(result, gameKeyEventList, removalGameKeyEventList, playerInputId)

method onPressGameKeyEvent*(this: PlayerGameInput, gameKeyEvent: GameKeyEvent) =
        this.add(gameKeyEvent)
        this.addForRemoval(gameKeyEvent)

method onDownGameKeyEvent*(this: PlayerGameInput, gameKeyEvent: GameKeyEvent) =
        this.add(gameKeyEvent)

method onDownKeyEvent*(this: PlayerGameInput, gameKeyEvent: GameKeyEvent) {.base.} =
        this.add(gameKeyEvent)
        this.addForRemoval(gameKeyEvent)

method onDownKey*(this: PlayerGameInput, gameKeyEvent: int32) {.base.} =
        PreLogUtil.put(newStringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameKeyEvent.toString()).toString(), this, this.gameInputStrings.ON_DOWN_GAME_KEY)

method onUpGameKeyEvent*(this: PlayerGameInput, gameKeyEvent: GameKeyEvent) =
        this.addForRemoval(gameKeyEvent)

method onUpKeyEvent*(this: PlayerGameInput, gameKeyEvent: int32) {.base.} =
        discard

method onEvent*(this: PlayerGameInput, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method getPlayerInputId*(this: PlayerGameInput): int32 {.base, discardable.} =
        return this.playerInputId

when declared(newPlayerGameInputHook3):
    newPlayerGameInputHook3 = proc (gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList, playerInputId: int32): GameInput = newPlayerGameInput(gameKeyEventList, removalGameKeyEventList, playerInputId)

