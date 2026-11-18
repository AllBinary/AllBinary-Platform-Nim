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
    EndGamePaintable* = ref object of Paintable
        gameCanvas*: AllBinaryGameCanvas

proc newEndGamePaintable*(gameCanvas: AllBinaryGameCanvas): EndGamePaintable
proc initEndGamePaintable*(this: EndGamePaintable, gameCanvas: AllBinaryGameCanvas)
method paint*(this: EndGamePaintable, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsEndGamePaintable(this: EndGamePaintable) =
    
    discard

proc initEndGamePaintable*(this: EndGamePaintable, gameCanvas: AllBinaryGameCanvas) =
        initPaintable(this)
        this.initFieldsEndGamePaintable()
        this.gameCanvas = gameCanvas

proc newEndGamePaintable*(gameCanvas: AllBinaryGameCanvas): EndGamePaintable =
    result = EndGamePaintable()
    initEndGamePaintable(result, gameCanvas)

method paint*(this: EndGamePaintable, graphics: Graphics) =
        this.gameCanvas.paintGameOver(graphics)

when declared(newEndGamePaintableHook1):
    newEndGamePaintableHook1 = proc (gameCanvas: AllBinaryGameCanvas): Paintable = newEndGamePaintable(gameCanvas)

