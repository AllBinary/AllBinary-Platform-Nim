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
    CircleAnimation* = ref object of Animation
        TOTAL_ANGLE*: int32
        width*: int32
        height*: int32

converter jAsColorCompositeInterface*(value: CircleAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
proc newCircleAnimation*(width: int32, height: int32, basicColor: BasicColor): CircleAnimation
proc initCircleAnimation*(this: CircleAnimation, width: int32, height: int32, basicColor: BasicColor)
method nextFrame*(this: CircleAnimation)
method paintXY*(this: CircleAnimation, graphics: Graphics, x: int32, y: int32)
method getBasicColorP*(this: CircleAnimation): BasicColor {.discardable.}
method setBasicColorP*(this: CircleAnimation, basicColor: BasicColor)
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule


# Java field initializers run after the base initializer
proc initFieldsCircleAnimation(this: CircleAnimation) =
    this.TOTAL_ANGLE = int32(AngleFactory.getInstance().TOTAL_ANGLE)
    
    
    discard

proc initCircleAnimation*(this: CircleAnimation, width: int32, height: int32, basicColor: BasicColor) =
        initAnimation(this)
        this.initFieldsCircleAnimation()
        this.width = width
        this.height = height
        this.setBasicColorP(basicColor)

proc newCircleAnimation*(width: int32, height: int32, basicColor: BasicColor): CircleAnimation =
    result = CircleAnimation()
    initCircleAnimation(result, width, height, basicColor)

method nextFrame*(this: CircleAnimation) =
        discard

method paintXY*(this: CircleAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.drawArc(x, y, this.width, this.height, 0, this.TOTAL_ANGLE)

method getBasicColorP*(this: CircleAnimation): BasicColor {.discardable.} =
        return procCall Animation(this).getBasicColorP()

method setBasicColorP*(this: CircleAnimation, basicColor: BasicColor) =
        procCall Animation(this).setBasicColorP(basicColor)

when declared(newCircleAnimationHook3):
    newCircleAnimationHook3 = proc (width: int32, height: int32, basicColor: BasicColor): Animation = newCircleAnimation(width, height, basicColor)

