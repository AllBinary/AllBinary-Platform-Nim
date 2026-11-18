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
    RectangleFilledAnimation* = ref object of Animation
        widthP*: int32
        heightP*: int32

converter jAsColorCompositeInterface*(value: RectangleFilledAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
proc newRectangleFilledAnimation*(width: int32, height: int32, basicColor: BasicColor): RectangleFilledAnimation
proc initRectangleFilledAnimation*(this: RectangleFilledAnimation, width: int32, height: int32, basicColor: BasicColor)
method nextFrame*(this: RectangleFilledAnimation)
method paintXY*(this: RectangleFilledAnimation, graphics: Graphics, x: int32, y: int32)
method setWidth*(this: RectangleFilledAnimation, width: int32) {.base.}
method setHeight*(this: RectangleFilledAnimation, height: int32) {.base.}
method getBasicColorP*(this: RectangleFilledAnimation): BasicColor {.discardable.}
method setBasicColorP*(this: RectangleFilledAnimation, basicColor: BasicColor)


# Java field initializers run after the base initializer
proc initFieldsRectangleFilledAnimation(this: RectangleFilledAnimation) =
    
    
    discard

proc initRectangleFilledAnimation*(this: RectangleFilledAnimation, width: int32, height: int32, basicColor: BasicColor) =
        initAnimation(this)
        this.initFieldsRectangleFilledAnimation()
        this.widthP = width
        this.heightP = height
        this.setBasicColorP(basicColor)

proc newRectangleFilledAnimation*(width: int32, height: int32, basicColor: BasicColor): RectangleFilledAnimation =
    result = RectangleFilledAnimation()
    initRectangleFilledAnimation(result, width, height, basicColor)

method nextFrame*(this: RectangleFilledAnimation) =
        discard

method paintXY*(this: RectangleFilledAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.fillRect(x, y, this.widthP, this.heightP)

method setWidth*(this: RectangleFilledAnimation, width: int32) {.base.} =
        this.widthP = width

method setHeight*(this: RectangleFilledAnimation, height: int32) {.base.} =
        this.heightP = height

method getBasicColorP*(this: RectangleFilledAnimation): BasicColor {.discardable.} =
        return procCall Animation(this).getBasicColorP()

method setBasicColorP*(this: RectangleFilledAnimation, basicColor: BasicColor) =
        procCall Animation(this).setBasicColorP(basicColor)

when declared(newRectangleFilledAnimationHook3):
    newRectangleFilledAnimationHook3 = proc (width: int32, height: int32, basicColor: BasicColor): Animation = newRectangleFilledAnimation(width, height, basicColor)

