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
# package org.allbinary.game.input.motion.action

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/CompleteMotionGestureInputEvent as CompleteMotionGestureInputEventModule
export CompleteMotionGestureInputEventModule
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/GameKeyEventSourceInterface as GameKeyEventSourceInterfaceModule
export GameKeyEventSourceInterfaceModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule

type
    GameKeyCompleteMotionGestureInputEvent* = ref object of CompleteMotionGestureInputEvent
        gameKeyEventFactory*: GameKeyEventFactory
        SOURCE_ID*: int32
        gameKey*: GameKey
        gameKeyEvent*: GameKeyEvent
        inputToGameKeyMapping*: InputToGameKeyMapping

converter jAsGameKeyEventSourceInterface*(value: GameKeyCompleteMotionGestureInputEvent): GameKeyEventSourceInterface = cast[GameKeyEventSourceInterface](value)
proc newGameKeyCompleteMotionGestureInputEvent*(name: string, motionGestureInput: MotionGestureInput, inputToGameKeyMapping: InputToGameKeyMapping): GameKeyCompleteMotionGestureInputEvent
proc initGameKeyCompleteMotionGestureInputEvent*(this: GameKeyCompleteMotionGestureInputEvent, name: string, motionGestureInput: MotionGestureInput, inputToGameKeyMapping: InputToGameKeyMapping)
method getSourceId*(this: GameKeyCompleteMotionGestureInputEvent): int32 {.discardable.}
method update*(this: GameKeyCompleteMotionGestureInputEvent) {.base.}
method setGameKeyEvent*(this: GameKeyCompleteMotionGestureInputEvent, gameKeyEvent: GameKeyEvent) {.base.}
method getGameKeyEvent*(this: GameKeyCompleteMotionGestureInputEvent): GameKeyEvent {.base, discardable.}
method setGameKey*(this: GameKeyCompleteMotionGestureInputEvent, gameKey: GameKey) {.base.}
method getGameKey*(this: GameKeyCompleteMotionGestureInputEvent): GameKey {.base, discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory as GameKeyCompleteMotionGestureInputEventFactoryModule
export GameKeyCompleteMotionGestureInputEventFactoryModule


# Java field initializers run after the base initializer
proc initFieldsGameKeyCompleteMotionGestureInputEvent(this: GameKeyCompleteMotionGestureInputEvent) =
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    this.SOURCE_ID = this.gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID
    this.gameKey = GameKey.NULL_GAME_KEY
    this.gameKeyEvent = GameKeyEvent.NONE
    
    discard

proc initGameKeyCompleteMotionGestureInputEvent*(this: GameKeyCompleteMotionGestureInputEvent, name: string, motionGestureInput: MotionGestureInput, inputToGameKeyMapping: InputToGameKeyMapping) =
        initCompleteMotionGestureInputEvent(this, name, motionGestureInput)
        this.initFieldsGameKeyCompleteMotionGestureInputEvent()
        this.inputToGameKeyMapping = inputToGameKeyMapping
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().add(this)
        this.update()

proc newGameKeyCompleteMotionGestureInputEvent*(name: string, motionGestureInput: MotionGestureInput, inputToGameKeyMapping: InputToGameKeyMapping): GameKeyCompleteMotionGestureInputEvent =
    result = GameKeyCompleteMotionGestureInputEvent()
    initGameKeyCompleteMotionGestureInputEvent(result, name, motionGestureInput, inputToGameKeyMapping)

method getSourceId*(this: GameKeyCompleteMotionGestureInputEvent): int32 {.discardable.} =
        return this.SOURCE_ID

method update*(this: GameKeyCompleteMotionGestureInputEvent) {.base.} =
        try:
            this.setGameKey(this.inputToGameKeyMapping.getInstance(this.getMotionGestureInput().getId()))
            this.setGameKeyEvent(this.gameKeyEventFactory.getInstanceForInput(this, this.getGameKey()))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)

method setGameKeyEvent*(this: GameKeyCompleteMotionGestureInputEvent, gameKeyEvent: GameKeyEvent) {.base.} =
        this.gameKeyEvent = gameKeyEvent

method getGameKeyEvent*(this: GameKeyCompleteMotionGestureInputEvent): GameKeyEvent {.base, discardable.} =
        return this.gameKeyEvent

method setGameKey*(this: GameKeyCompleteMotionGestureInputEvent, gameKey: GameKey) {.base.} =
        this.gameKey = gameKey

method getGameKey*(this: GameKeyCompleteMotionGestureInputEvent): GameKey {.base, discardable.} =
        return this.gameKey

when declared(newGameKeyCompleteMotionGestureInputEventHook3):
    newGameKeyCompleteMotionGestureInputEventHook3 = proc (name: string, motionGestureInput: MotionGestureInput, inputToGameKeyMapping: InputToGameKeyMapping): CompleteMotionGestureInputEvent = newGameKeyCompleteMotionGestureInputEvent(name, motionGestureInput, inputToGameKeyMapping)

