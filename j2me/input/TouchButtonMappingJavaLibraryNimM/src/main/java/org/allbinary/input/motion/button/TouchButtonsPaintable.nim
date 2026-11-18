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
# package org.allbinary.input.motion.button

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
import org/allbinary/input/motion/button/TouchButtonFactory as TouchButtonFactoryModule
export TouchButtonFactoryModule

type
    TouchButtonsPaintable* = ref object of Paintable
        foregroundBasicColor*: BasicColor
        foregroundColor*: int32
        basicSetColorUtil*: BasicColorSetUtil
        touchButtonFactory*: TouchButtonFactory

proc newTouchButtonsPaintable*(basicColor: BasicColor): TouchButtonsPaintable
proc initTouchButtonsPaintable*(this: TouchButtonsPaintable, basicColor: BasicColor)
method paint*(this: TouchButtonsPaintable, graphics: Graphics)
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/input/motion/button/TouchButton as TouchButtonModule
export TouchButtonModule


# Java field initializers run after the base initializer
proc initFieldsTouchButtonsPaintable(this: TouchButtonsPaintable) =
    
    
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    this.touchButtonFactory = TouchButtonFactory.getInstance()
    discard

proc initTouchButtonsPaintable*(this: TouchButtonsPaintable, basicColor: BasicColor) =
        initPaintable(this)
        this.initFieldsTouchButtonsPaintable()
        this.foregroundBasicColor = basicColor
        this.foregroundColor = basicColor.intValue()

proc newTouchButtonsPaintable*(basicColor: BasicColor): TouchButtonsPaintable =
    result = TouchButtonsPaintable()
    initTouchButtonsPaintable(result, basicColor)

method paint*(this: TouchButtonsPaintable, graphics: Graphics) =
        let list: BasicArrayList = this.touchButtonFactory.getList()
        this.basicSetColorUtil.setBasicColorP3(graphics, this.foregroundBasicColor, this.foregroundColor)
        var touchButton: TouchButton = nil
        block:
            var index: int32 = list.size()
            while jPreDecrement(index) >= 0:
                touchButton = TouchButton(JObject(list.objectArray[index]))
                touchButton.paint(graphics)
        block:
            var index: int32 = list.size()
            while jPreDecrement(index) >= 0:
                touchButton = TouchButton(JObject(list.objectArray[index]))
                touchButton.paintHint(graphics)

when declared(newTouchButtonsPaintableHook1):
    newTouchButtonsPaintableHook1 = proc (basicColor: BasicColor): Paintable = newTouchButtonsPaintable(basicColor)

