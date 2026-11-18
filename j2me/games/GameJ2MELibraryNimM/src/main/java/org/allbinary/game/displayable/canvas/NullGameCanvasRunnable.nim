#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule
import org/allbinary/game/state/GameStateFactory as GameStateFactoryModule
export GameStateFactoryModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface as GameCanvasRunnableInterfaceModule
export GameCanvasRunnableInterfaceModule

type
    NullGameCanvasRunnable* = ref object of GameCanvasRunnableInterface
        gameStateFactory*: GameStateFactory

proc newNullGameCanvasRunnable*(): NullGameCanvasRunnable
method getTitle*(this: NullGameCanvasRunnable): string {.discardable.}
method isInitialized*(this: NullGameCanvasRunnable): bool {.discardable.}
method isPaused*(this: NullGameCanvasRunnable): bool {.discardable.}
method unPause*(this: NullGameCanvasRunnable)
method pause*(this: NullGameCanvasRunnable)
method isHighScoreSubmitted*(this: NullGameCanvasRunnable): bool {.discardable.}
method setHighScoreSubmitted*(this: NullGameCanvasRunnable, highScoreSubmitted: bool)
method processGameOver*(this: NullGameCanvasRunnable)
method isGameOver*(this: NullGameCanvasRunnable): bool {.discardable.}
method initCommands*(this: NullGameCanvasRunnable, cmdListener: CommandListener)
method getCurrentStateHashtable*(this: NullGameCanvasRunnable): ABHashtable {.discardable.}
method getLoadStateHashtable*(this: NullGameCanvasRunnable): ABHashtable {.discardable.}
method setLoadStateHashtable*(this: NullGameCanvasRunnable, hashtable: ABHashtable)
method getType*(this: NullGameCanvasRunnable): int32 {.discardable.}
method setGameState*(this: NullGameCanvasRunnable, gameState: GameState)
method getGameState*(this: NullGameCanvasRunnable): GameState {.discardable.}
method itemStateChanged*(this: NullGameCanvasRunnable, item: Item)
method paint*(this: NullGameCanvasRunnable, graphics: Graphics)
method paintThreed*(this: NullGameCanvasRunnable, graphics: Graphics)
method isRunning*(this: NullGameCanvasRunnable): bool {.discardable.}
method setRunning*(this: NullGameCanvasRunnable, isRunning: bool)
method setThread*(this: NullGameCanvasRunnable, thread: JThread)
method run*(this: NullGameCanvasRunnable)
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLEValue: NullGameCanvasRunnable
var NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLESet = false
proc NULL_GAME_CANVAS_RUNNABLEStatic*(t: typedesc[NullGameCanvasRunnable]): NullGameCanvasRunnable =
    if not NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLESet:
        NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLESet = true
        NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLEValue = newNullGameCanvasRunnable()
    NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLEValue

# Java field initializers run after the base initializer
proc initFieldsNullGameCanvasRunnable(this: NullGameCanvasRunnable) =
    this.gameStateFactory = GameStateFactory.getInstance()
    discard

proc initNullGameCanvasRunnable*(this: NullGameCanvasRunnable) =
    this.initFieldsNullGameCanvasRunnable()

proc newNullGameCanvasRunnable*(): NullGameCanvasRunnable =
    result = NullGameCanvasRunnable()
    initNullGameCanvasRunnable(result)

method getTitle*(this: NullGameCanvasRunnable): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method isInitialized*(this: NullGameCanvasRunnable): bool {.discardable.} =
        return false

method isPaused*(this: NullGameCanvasRunnable): bool {.discardable.} =
        return false

method unPause*(this: NullGameCanvasRunnable) =
        discard

method pause*(this: NullGameCanvasRunnable) =
        discard

method isHighScoreSubmitted*(this: NullGameCanvasRunnable): bool {.discardable.} =
        return false

method setHighScoreSubmitted*(this: NullGameCanvasRunnable, highScoreSubmitted: bool) =
        discard

method processGameOver*(this: NullGameCanvasRunnable) =
        discard

method isGameOver*(this: NullGameCanvasRunnable): bool {.discardable.} =
        return false

method initCommands*(this: NullGameCanvasRunnable, cmdListener: CommandListener) =
        discard

method getCurrentStateHashtable*(this: NullGameCanvasRunnable): ABHashtable {.discardable.} =
        return StdUtil.getInstance().NULL_TABLE

method getLoadStateHashtable*(this: NullGameCanvasRunnable): ABHashtable {.discardable.} =
        return StdUtil.getInstance().NULL_TABLE

method setLoadStateHashtable*(this: NullGameCanvasRunnable, hashtable: ABHashtable) =
        discard

method getType*(this: NullGameCanvasRunnable): int32 {.discardable.} =
        return -1

method setGameState*(this: NullGameCanvasRunnable, gameState: GameState) =
        discard

method getGameState*(this: NullGameCanvasRunnable): GameState {.discardable.} =
        return this.gameStateFactory.NO_GAME_STATE

method itemStateChanged*(this: NullGameCanvasRunnable, item: Item) =
        discard

method paint*(this: NullGameCanvasRunnable, graphics: Graphics) =
        discard

method paintThreed*(this: NullGameCanvasRunnable, graphics: Graphics) =
        discard

method isRunning*(this: NullGameCanvasRunnable): bool {.discardable.} =
        return false

method setRunning*(this: NullGameCanvasRunnable, isRunning: bool) =
        discard

method setThread*(this: NullGameCanvasRunnable, thread: JThread) =
        discard

method run*(this: NullGameCanvasRunnable) =
        discard

