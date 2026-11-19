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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/score/displayable/HighScoresCanvas as HighScoresCanvasModule
export HighScoresCanvasModule

type
    HighScoresCanvasInputProcessor* = ref object of PlayerGameInput
        highScoresCanvas*: HighScoresCanvas

proc newHighScoresCanvasInputProcessor*(highScoresCanvas: HighScoresCanvas): HighScoresCanvasInputProcessor
proc initHighScoresCanvasInputProcessor*(this: HighScoresCanvasInputProcessor, highScoresCanvas: HighScoresCanvas)
method open*(this: HighScoresCanvasInputProcessor) {.base.}
method close*(this: HighScoresCanvasInputProcessor) {.base.}
method onPressGameKeyEvent*(this: HighScoresCanvasInputProcessor, gameKeyEvent: GameKeyEvent)
method onDownGameKeyEvent*(this: HighScoresCanvasInputProcessor, gameKeyEvent: GameKeyEvent)
method onUpGameKeyEvent*(this: HighScoresCanvasInputProcessor, gameKeyEvent: GameKeyEvent)
method paint*(this: HighScoresCanvasInputProcessor, graphics: Graphics) {.base.}
method getHighScoresCanvas*(this: HighScoresCanvasInputProcessor): HighScoresCanvas {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsHighScoresCanvasInputProcessor(this: HighScoresCanvasInputProcessor) =
    
    discard

proc initHighScoresCanvasInputProcessor*(this: HighScoresCanvasInputProcessor, highScoresCanvas: HighScoresCanvas) =
        initPlayerGameInput(this, newBasicArrayListD(), newBasicArrayListD(), -1)
        this.initFieldsHighScoresCanvasInputProcessor()
        this.highScoresCanvas = highScoresCanvas

proc newHighScoresCanvasInputProcessor*(highScoresCanvas: HighScoresCanvas): HighScoresCanvasInputProcessor =
    result = HighScoresCanvasInputProcessor()
    initHighScoresCanvasInputProcessor(result, highScoresCanvas)

method open*(this: HighScoresCanvasInputProcessor) {.base.} =
        discard

method close*(this: HighScoresCanvasInputProcessor) {.base.} =
        discard

method onPressGameKeyEvent*(this: HighScoresCanvasInputProcessor, gameKeyEvent: GameKeyEvent) =
        jSuperStatement(procCall PlayerGameInput(this).onPressGameKeyEvent(gameKeyEvent))
        this.update()

method onDownGameKeyEvent*(this: HighScoresCanvasInputProcessor, gameKeyEvent: GameKeyEvent) =
        jSuperStatement(procCall PlayerGameInput(this).onDownGameKeyEvent(gameKeyEvent))
        this.update()

method onUpGameKeyEvent*(this: HighScoresCanvasInputProcessor, gameKeyEvent: GameKeyEvent) =
        jSuperStatement(procCall PlayerGameInput(this).onUpGameKeyEvent(gameKeyEvent))
        this.update()

method paint*(this: HighScoresCanvasInputProcessor, graphics: Graphics) {.base.} =
        discard

method getHighScoresCanvas*(this: HighScoresCanvasInputProcessor): HighScoresCanvas {.base, discardable.} =
        return this.highScoresCanvas

when declared(newHighScoresCanvasInputProcessorHook1):
    newHighScoresCanvasInputProcessorHook1 = proc (highScoresCanvas: HighScoresCanvas): PlayerGameInput = newHighScoresCanvasInputProcessor(highScoresCanvas)

