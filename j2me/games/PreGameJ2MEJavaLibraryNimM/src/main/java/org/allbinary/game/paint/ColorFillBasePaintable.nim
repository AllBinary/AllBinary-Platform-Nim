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
import org/allbinary/graphics/color/ColorCompositeInterface as ColorCompositeInterfaceModule
export ColorCompositeInterfaceModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    ColorFillBasePaintable* = ref object of Paintable
        basicColor*: BasicColor
        colorP*: int32

converter jAsColorCompositeInterface*(value: ColorFillBasePaintable): ColorCompositeInterface = cast[ColorCompositeInterface](value)
proc newColorFillBasePaintable*(basicColor: BasicColor): ColorFillBasePaintable
proc initColorFillBasePaintable*(this: ColorFillBasePaintable, basicColor: BasicColor)
method setBasicColorP*(this: ColorFillBasePaintable, basicColor: BasicColor)
method getBasicColorP*(this: ColorFillBasePaintable): BasicColor {.discardable.}
method getColor*(this: ColorFillBasePaintable): int32 {.base, discardable.}
method setColor*(this: ColorFillBasePaintable, color: int32) {.base.}
method paint*(this: ColorFillBasePaintable, graphics: Graphics)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


# Java field initializers run after the base initializer
proc initFieldsColorFillBasePaintable(this: ColorFillBasePaintable) =
    this.basicColor = BasicColorFactory.getInstance().WHITE
    this.colorP = 0
    discard

proc initColorFillBasePaintable*(this: ColorFillBasePaintable, basicColor: BasicColor) =
        initPaintable(this)
        this.initFieldsColorFillBasePaintable()
        this.setBasicColorP(basicColor)

proc newColorFillBasePaintable*(basicColor: BasicColor): ColorFillBasePaintable =
    result = ColorFillBasePaintable()
    initColorFillBasePaintable(result, basicColor)

method setBasicColorP*(this: ColorFillBasePaintable, basicColor: BasicColor) =
        this.basicColor = basicColor
        this.setColor(this.getBasicColorP().intValue())

method getBasicColorP*(this: ColorFillBasePaintable): BasicColor {.discardable.} =
        return this.basicColor

method getColor*(this: ColorFillBasePaintable): int32 {.base, discardable.} =
        return this.colorP

method setColor*(this: ColorFillBasePaintable, color: int32) {.base.} =
        this.colorP = color

method paint*(this: ColorFillBasePaintable, graphics: Graphics) =
        discard

when declared(newColorFillBasePaintableHook1):
    newColorFillBasePaintableHook1 = proc (basicColor: BasicColor): Paintable = newColorFillBasePaintable(basicColor)

