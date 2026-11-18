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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/ItemStateListener as ItemStateListenerModule
export ItemStateListenerModule
import org/allbinary/game/state/GameStateCompositeInterface as GameStateCompositeInterfaceModule
export GameStateCompositeInterfaceModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/thread/RunnableInterface as RunnableInterfaceModule
export RunnableInterfaceModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    GameCanvasRunnableInterface* = ref object of RunnableInterface


method getTitle*(this: GameCanvasRunnableInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getTitle")

method isInitialized*(this: GameCanvasRunnableInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isInitialized")

method isPaused*(this: GameCanvasRunnableInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isPaused")

method unPause*(this: GameCanvasRunnableInterface) {.base.} =
        raise newJException("AbstractMethodError", "unPause")

method pause*(this: GameCanvasRunnableInterface) {.base.} =
        raise newJException("AbstractMethodError", "pause")

method isHighScoreSubmitted*(this: GameCanvasRunnableInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isHighScoreSubmitted")

method setHighScoreSubmitted*(this: GameCanvasRunnableInterface, highScoreSubmitted: bool) {.base.} =
        raise newJException("AbstractMethodError", "setHighScoreSubmitted")

method processGameOver*(this: GameCanvasRunnableInterface) {.base.} =
        raise newJException("AbstractMethodError", "processGameOver")

method isGameOver*(this: GameCanvasRunnableInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isGameOver")

method initCommands*(this: GameCanvasRunnableInterface, cmdListener: CommandListener) {.base.} =
        raise newJException("AbstractMethodError", "initCommands")

method getCurrentStateHashtable*(this: GameCanvasRunnableInterface): ABHashtable {.base, discardable.} =
        raise newJException("AbstractMethodError", "getCurrentStateHashtable")

method getLoadStateHashtable*(this: GameCanvasRunnableInterface): ABHashtable {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLoadStateHashtable")

method setLoadStateHashtable*(this: GameCanvasRunnableInterface, hashtable: ABHashtable) {.base.} =
        raise newJException("AbstractMethodError", "setLoadStateHashtable")

method getType*(this: GameCanvasRunnableInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getType")

