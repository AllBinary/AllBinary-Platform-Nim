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
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/BasicColorSetUtil as BasicColorSetUtilModule
export BasicColorSetUtilModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    SWTBlackPaintable* = ref object of Paintable
        basicSetColorUtil*: BasicColorSetUtil
        BLACK*: BasicColor

proc newSWTBlackPaintable*(): SWTBlackPaintable
method paint*(this: SWTBlackPaintable, graphics: Graphics)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


# Java field initializers run after the base initializer
proc initFieldsSWTBlackPaintable(this: SWTBlackPaintable) =
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    this.BLACK = BasicColorFactory.getInstance().BLACK
    discard

proc initSWTBlackPaintable*(this: SWTBlackPaintable) =
    initPaintable(this)
    this.initFieldsSWTBlackPaintable()

proc newSWTBlackPaintable*(): SWTBlackPaintable =
    result = SWTBlackPaintable()
    initSWTBlackPaintable(result)

method paint*(this: SWTBlackPaintable, graphics: Graphics) =
        this.basicSetColorUtil.setBasicColorP(graphics, this.BLACK)

when declared(newSWTBlackPaintableHook0):
    newSWTBlackPaintableHook0 = proc (): Paintable = newSWTBlackPaintable()

