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

type
    GameInputStrings* = ref object of JObject
        PROCESS_INPUT*: string
        KEY_PRESSED*: string
        KEY_RELEASED*: string
        KEY_REPEATED*: string
        ON_PRESS_GAME_KEY*: string
        ON_DOWN_GAME_KEY*: string
        ON_UP_GAME_KEY*: string
        NO_KEY*: string
        ADD_KEY_EVENT*: string
        REMOVE_KEY_EVENT*: string
        STRAFE_LEFT*: string
        STRAFE_RIGHT*: string
        PROCESS_MOTION_INPUT*: string
        UDPATE_CURRENT_TOUCH_INPUT_FACTORY*: string
        ENABLE_PLAYER_GAME_INPUTS*: string
        ENABLE_PLAYER_GAME_INPUT*: string

proc newGameInputStrings*(): GameInputStrings
proc getInstance*(t: typedesc[GameInputStrings]): GameInputStrings {.discardable.}

var GameInputStrings_instanceValue: GameInputStrings
var GameInputStrings_instanceSet = false
proc instance*(t: typedesc[GameInputStrings]): GameInputStrings =
    if not GameInputStrings_instanceSet:
        GameInputStrings_instanceSet = true
        GameInputStrings_instanceValue = newGameInputStrings()
    GameInputStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameInputStrings(this: GameInputStrings) =
    this.PROCESS_INPUT = "processInput"
    this.KEY_PRESSED = "keyPressed"
    this.KEY_RELEASED = "keyReleased"
    this.KEY_REPEATED = "keyRepeated"
    this.ON_PRESS_GAME_KEY = "onPressGameKeyEvent"
    this.ON_DOWN_GAME_KEY = "onDownGameKeyEvent"
    this.ON_UP_GAME_KEY = "onUpGameKeyEvent"
    this.NO_KEY = "Key Code Not Mapped For Game: "
    this.ADD_KEY_EVENT = "addGameKeyEvent"
    this.REMOVE_KEY_EVENT = "removeGameKeyEvent"
    this.STRAFE_LEFT = "strafeLeft"
    this.STRAFE_RIGHT = "strafeRight"
    this.PROCESS_MOTION_INPUT = "processMotionInput"
    this.UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory"
    this.ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: "
    this.ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: "
    discard

proc initGameInputStrings*(this: GameInputStrings) =
    this.initFieldsGameInputStrings()

proc newGameInputStrings*(): GameInputStrings =
    result = GameInputStrings()
    initGameInputStrings(result)

proc getInstance*(t: typedesc[GameInputStrings]): GameInputStrings {.discardable.} =
        return GameInputStrings.instance

