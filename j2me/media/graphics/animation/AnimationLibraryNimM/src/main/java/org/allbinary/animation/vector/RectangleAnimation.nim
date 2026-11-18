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
# package org.allbinary.animation.vector

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/ColorCompositeInterface as ColorCompositeInterfaceModule
export ColorCompositeInterfaceModule

type
    RectangleAnimation* = ref object of Animation
        width*: int32
        height*: int32

converter jAsColorCompositeInterface*(value: RectangleAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
proc newRectangleAnimation*(width: int32, height: int32, basicColor: BasicColor): RectangleAnimation
proc initRectangleAnimation*(this: RectangleAnimation, width: int32, height: int32, basicColor: BasicColor)
method nextFrame*(this: RectangleAnimation)
method paintXY*(this: RectangleAnimation, graphics: Graphics, x: int32, y: int32)
method setWidth*(this: RectangleAnimation, width: int32) {.base.}
method setHeight*(this: RectangleAnimation, height: int32) {.base.}
method getBasicColorP*(this: RectangleAnimation): BasicColor {.discardable.}
method setBasicColorP*(this: RectangleAnimation, basicColor: BasicColor)


# Java field initializers run after the base initializer
proc initFieldsRectangleAnimation(this: RectangleAnimation) =
    
    
    discard

proc initRectangleAnimation*(this: RectangleAnimation, width: int32, height: int32, basicColor: BasicColor) =
        initAnimation(this)
        this.initFieldsRectangleAnimation()
        this.width = width
        this.height = height
        this.setBasicColorP(basicColor)

proc newRectangleAnimation*(width: int32, height: int32, basicColor: BasicColor): RectangleAnimation =
    result = RectangleAnimation()
    initRectangleAnimation(result, width, height, basicColor)

method nextFrame*(this: RectangleAnimation) =
        discard

method paintXY*(this: RectangleAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.drawRect(x, y, this.width, this.height)

method setWidth*(this: RectangleAnimation, width: int32) {.base.} =
        this.width = width

method setHeight*(this: RectangleAnimation, height: int32) {.base.} =
        this.height = height

method getBasicColorP*(this: RectangleAnimation): BasicColor {.discardable.} =
        return procCall Animation(this).getBasicColorP()

method setBasicColorP*(this: RectangleAnimation, basicColor: BasicColor) =
        procCall Animation(this).setBasicColorP(basicColor)

when declared(newRectangleAnimationHook3):
    newRectangleAnimationHook3 = proc (width: int32, height: int32, basicColor: BasicColor): Animation = newRectangleAnimation(width, height, basicColor)

