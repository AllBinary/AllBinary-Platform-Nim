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
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/game/paint/ColorFillBasePaintable as ColorFillBasePaintableModule
export ColorFillBasePaintableModule

type
    ColorFillPaintable* = ref object of ColorFillBasePaintable
        displayInfoSingleton*: DisplayInfoSingleton

proc newColorFillPaintable*(basicColor: BasicColor): ColorFillPaintable
proc initColorFillPaintable*(this: ColorFillPaintable, basicColor: BasicColor)
method paint*(this: ColorFillPaintable, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsColorFillPaintable(this: ColorFillPaintable) =
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    discard

proc initColorFillPaintable*(this: ColorFillPaintable, basicColor: BasicColor) =
        initColorFillBasePaintable(this, basicColor)
        this.initFieldsColorFillPaintable()

proc newColorFillPaintable*(basicColor: BasicColor): ColorFillPaintable =
    result = ColorFillPaintable()
    initColorFillPaintable(result, basicColor)

method paint*(this: ColorFillPaintable, graphics: Graphics) =
        graphics.setColor(this.colorP)
        graphics.fillRect(0, 0, this.displayInfoSingleton.getLastWidth(), this.displayInfoSingleton.getLastHeight())

when declared(newColorFillPaintableHook1):
    newColorFillPaintableHook1 = proc (basicColor: BasicColor): ColorFillBasePaintable = newColorFillPaintable(basicColor)

