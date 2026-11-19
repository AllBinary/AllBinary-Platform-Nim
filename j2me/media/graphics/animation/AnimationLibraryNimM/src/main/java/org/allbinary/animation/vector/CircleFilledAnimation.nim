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
    CircleFilledAnimation* = ref object of Animation
        width*: int32
        height*: int32

converter jAsColorCompositeInterface*(value: CircleFilledAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
converter jAsBasicColorCompositeSetterInterface*(value: CircleFilledAnimation): BasicColorCompositeSetterInterface = cast[BasicColorCompositeSetterInterface](value)
proc newCircleFilledAnimation*(width: int32, height: int32, basicColor: BasicColor): CircleFilledAnimation
proc initCircleFilledAnimation*(this: CircleFilledAnimation, width: int32, height: int32, basicColor: BasicColor)
method nextFrame*(this: CircleFilledAnimation)
method paintXY*(this: CircleFilledAnimation, graphics: Graphics, x: int32, y: int32)
method getBasicColorP*(this: CircleFilledAnimation): BasicColor {.discardable.}
method setBasicColorP*(this: CircleFilledAnimation, basicColor: BasicColor)


# Java field initializers run after the base initializer
proc initFieldsCircleFilledAnimation(this: CircleFilledAnimation) =
    
    
    discard

proc initCircleFilledAnimation*(this: CircleFilledAnimation, width: int32, height: int32, basicColor: BasicColor) =
        initAnimation(this)
        this.initFieldsCircleFilledAnimation()
        this.width = width
        this.height = height
        this.setBasicColorP(basicColor)

proc newCircleFilledAnimation*(width: int32, height: int32, basicColor: BasicColor): CircleFilledAnimation =
    result = CircleFilledAnimation()
    initCircleFilledAnimation(result, width, height, basicColor)

method nextFrame*(this: CircleFilledAnimation) =
        discard

method paintXY*(this: CircleFilledAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.fillRect(x, y, this.width, this.height)

method getBasicColorP*(this: CircleFilledAnimation): BasicColor {.discardable.} =
        return procCall Animation(this).getBasicColorP()

method setBasicColorP*(this: CircleFilledAnimation, basicColor: BasicColor) =
        jSuperStatement(procCall Animation(this).setBasicColorP(basicColor))

when declared(newCircleFilledAnimationHook3):
    newCircleFilledAnimationHook3 = proc (width: int32, height: int32, basicColor: BasicColor): Animation = newCircleFilledAnimation(width, height, basicColor)

