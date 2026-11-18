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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    GameCanvasNonBotPaintable* = ref object of Paintable
        gameCanvas*: AllBinaryGameCanvas

proc newGameCanvasNonBotPaintable*(gameCanvas: AllBinaryGameCanvas): GameCanvasNonBotPaintable
proc initGameCanvasNonBotPaintable*(this: GameCanvasNonBotPaintable, gameCanvas: AllBinaryGameCanvas)
method paint*(this: GameCanvasNonBotPaintable, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsGameCanvasNonBotPaintable(this: GameCanvasNonBotPaintable) =
    
    discard

proc initGameCanvasNonBotPaintable*(this: GameCanvasNonBotPaintable, gameCanvas: AllBinaryGameCanvas) =
        initPaintable(this)
        this.initFieldsGameCanvasNonBotPaintable()
        this.gameCanvas = gameCanvas

proc newGameCanvasNonBotPaintable*(gameCanvas: AllBinaryGameCanvas): GameCanvasNonBotPaintable =
    result = GameCanvasNonBotPaintable()
    initGameCanvasNonBotPaintable(result, gameCanvas)

method paint*(this: GameCanvasNonBotPaintable, graphics: Graphics) =
        this.gameCanvas.nonBotPaint(graphics)

when declared(newGameCanvasNonBotPaintableHook1):
    newGameCanvasNonBotPaintableHook1 = proc (gameCanvas: AllBinaryGameCanvas): Paintable = newGameCanvasNonBotPaintable(gameCanvas)

