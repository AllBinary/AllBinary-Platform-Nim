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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/GameKeyEventSourceInterface as GameKeyEventSourceInterfaceModule
export GameKeyEventSourceInterfaceModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    TouchButtonInput* = ref object of Input
        logUtil*: LogUtil
        gameKeyEventFactory*: GameKeyEventFactory
        TOUCH_BUTTON_SOURCE_ID*: int32
        gameKeyEvent*: GameKeyEvent

converter jAsGameKeyEventSourceInterface*(value: TouchButtonInput): GameKeyEventSourceInterface = cast[GameKeyEventSourceInterface](value)
proc newTouchButtonInput*(id: int32, name: string): TouchButtonInput
proc initTouchButtonInput*(this: TouchButtonInput, id: int32, name: string)
method update*(this: TouchButtonInput, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
method getSourceId*(this: TouchButtonInput): int32 {.discardable.}
method getGameKeyEvent*(this: TouchButtonInput): GameKeyEvent {.base, discardable.}
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsTouchButtonInput(this: TouchButtonInput) =
    this.logUtil = LogUtil.getInstance()
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    this.TOUCH_BUTTON_SOURCE_ID = this.gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID
    this.gameKeyEvent = GameKeyEvent.NONE
    discard

proc initTouchButtonInput*(this: TouchButtonInput, id: int32, name: string) =
        initInput(this, id, name)
        this.initFieldsTouchButtonInput()
        let inputFactory: InputFactory = InputFactory.getInstance()
        inputFactory.add(this.getId(), this)

proc newTouchButtonInput*(id: int32, name: string): TouchButtonInput =
    result = TouchButtonInput()
    initTouchButtonInput(result, id, name)

method update*(this: TouchButtonInput, inputToGameKeyMapping: InputToGameKeyMapping) {.base.} =
        try:
            var gameKey: GameKey = inputToGameKeyMapping.getInstance(this.getId())
            this.gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)

method getSourceId*(this: TouchButtonInput): int32 {.discardable.} =
        return this.TOUCH_BUTTON_SOURCE_ID

method getGameKeyEvent*(this: TouchButtonInput): GameKeyEvent {.base, discardable.} =
        return this.gameKeyEvent

when declared(newTouchButtonInputHook2):
    newTouchButtonInputHook2 = proc (id: int32, name: string): Input = newTouchButtonInput(id, name)

