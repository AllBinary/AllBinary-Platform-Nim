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
# package org.allbinary.game

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GameStrings* = ref object of JObject
        PROCESS_TICK*: string
        ON_GAME_INITIALIZED*: string
        UPDATESURFACE*: string
        ON_SET_DISPLAYABLE*: string
        UNPAUSE*: string
        TOGGLE_MENU*: string
        SET_GAME_OVER*: string
        GAME_STATE*: string
        SET_GAME_STATE*: string
        STOP_GAME_CANVAS_RUNNABLE_INTERFACE*: string

proc newGameStrings*(): GameStrings
proc getInstance*(t: typedesc[GameStrings]): GameStrings {.discardable.}

var GameStrings_instanceValue: GameStrings
var GameStrings_instanceSet = false
proc instance*(t: typedesc[GameStrings]): GameStrings =
    if not GameStrings_instanceSet:
        GameStrings_instanceSet = true
        GameStrings_instanceValue = newGameStrings()
    GameStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameStrings(this: GameStrings) =
    this.PROCESS_TICK = "processTick"
    this.ON_GAME_INITIALIZED = "onGameInitialized"
    this.UPDATESURFACE = "updateSurface"
    this.ON_SET_DISPLAYABLE = "onSetDisplayable"
    this.UNPAUSE = "unPause"
    this.TOGGLE_MENU = "toggleMenu"
    this.SET_GAME_OVER = "setGameOver"
    this.GAME_STATE = "Game State: "
    this.SET_GAME_STATE = "setGameState"
    this.STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface"
    discard

proc initGameStrings*(this: GameStrings) =
    this.initFieldsGameStrings()

proc newGameStrings*(): GameStrings =
    result = GameStrings()
    initGameStrings(result)

proc getInstance*(t: typedesc[GameStrings]): GameStrings {.discardable.} =
        return GameStrings.instance

