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
# package org.allbinary.game.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/game/paint/ColorFillPaintable as ColorFillPaintableModule
export ColorFillPaintableModule

type
    OverScanColorFillPaintable* = ref object of ColorFillPaintable

proc newOverScanColorFillPaintable*(basicColor: BasicColor): OverScanColorFillPaintable
proc initOverScanColorFillPaintable*(this: OverScanColorFillPaintable, basicColor: BasicColor)
method paint*(this: OverScanColorFillPaintable, graphics: Graphics)


proc initOverScanColorFillPaintable*(this: OverScanColorFillPaintable, basicColor: BasicColor) =
        initColorFillPaintable(this, basicColor)

proc newOverScanColorFillPaintable*(basicColor: BasicColor): OverScanColorFillPaintable =
    result = OverScanColorFillPaintable()
    initOverScanColorFillPaintable(result, basicColor)

method paint*(this: OverScanColorFillPaintable, graphics: Graphics) =
        graphics.setColor(this.colorP)
        graphics.fillRect(-graphics.getClipX(), -graphics.getClipY(), this.displayInfoSingleton.getLastWidth() +% (graphics.getClipX() *% 2), this.displayInfoSingleton.getLastHeight() +% (graphics.getClipY() *% 2))

when declared(newOverScanColorFillPaintableHook1):
    newOverScanColorFillPaintableHook1 = proc (basicColor: BasicColor): ColorFillPaintable = newOverScanColorFillPaintable(basicColor)

