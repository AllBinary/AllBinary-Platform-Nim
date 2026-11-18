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
import org/allbinary/graphics/paint/ProcessPaintable as ProcessPaintableModule
export ProcessPaintableModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    GameCanvasPaintHelper* = ref object of ProcessPaintable
        gameCanvas*: AllBinaryGameCanvas

proc newGameCanvasPaintHelper*(gameCanvas: AllBinaryGameCanvas): GameCanvasPaintHelper
proc initGameCanvasPaintHelper*(this: GameCanvasPaintHelper, gameCanvas: AllBinaryGameCanvas)
method process*(this: GameCanvasPaintHelper)
method paint*(this: GameCanvasPaintHelper, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsGameCanvasPaintHelper(this: GameCanvasPaintHelper) =
    
    discard

proc initGameCanvasPaintHelper*(this: GameCanvasPaintHelper, gameCanvas: AllBinaryGameCanvas) =
        initProcessPaintable(this)
        this.initFieldsGameCanvasPaintHelper()
        this.gameCanvas = gameCanvas

proc newGameCanvasPaintHelper*(gameCanvas: AllBinaryGameCanvas): GameCanvasPaintHelper =
    result = GameCanvasPaintHelper()
    initGameCanvasPaintHelper(result, gameCanvas)

method process*(this: GameCanvasPaintHelper) =
        discard

method paint*(this: GameCanvasPaintHelper, graphics: Graphics) =
        this.gameCanvas.draw(graphics)

when declared(newGameCanvasPaintHelperHook1):
    newGameCanvasPaintHelperHook1 = proc (gameCanvas: AllBinaryGameCanvas): ProcessPaintable = newGameCanvasPaintHelper(gameCanvas)

