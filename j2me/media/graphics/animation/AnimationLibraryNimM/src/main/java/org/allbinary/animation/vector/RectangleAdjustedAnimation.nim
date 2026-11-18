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
    RectangleAdjustedAnimation* = ref object of Animation
        width*: int32
        height*: int32
        offsetX*: int32
        offsetY*: int32

converter jAsColorCompositeInterface*(value: RectangleAdjustedAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
proc newRectangleAdjustedAnimation*(width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor): RectangleAdjustedAnimation
proc initRectangleAdjustedAnimation*(this: RectangleAdjustedAnimation, width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor)
method nextFrame*(this: RectangleAdjustedAnimation)
method paintXY*(this: RectangleAdjustedAnimation, graphics: Graphics, x: int32, y: int32)
method setWidth*(this: RectangleAdjustedAnimation, width: int32) {.base.}
method setHeight*(this: RectangleAdjustedAnimation, height: int32) {.base.}
method setOffsetX*(this: RectangleAdjustedAnimation, offsetX: int32) {.base.}
method setOffsetY*(this: RectangleAdjustedAnimation, offsetY: int32) {.base.}
method getBasicColorP*(this: RectangleAdjustedAnimation): BasicColor {.discardable.}
method setBasicColorP*(this: RectangleAdjustedAnimation, basicColor: BasicColor)


# Java field initializers run after the base initializer
proc initFieldsRectangleAdjustedAnimation(this: RectangleAdjustedAnimation) =
    
    
    
    
    discard

proc initRectangleAdjustedAnimation*(this: RectangleAdjustedAnimation, width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor) =
        initAnimation(this)
        this.initFieldsRectangleAdjustedAnimation()
        this.width = width
        this.height = height
        this.offsetX = offsetX
        this.offsetY = offsetY
        this.setBasicColorP(basicColor)

proc newRectangleAdjustedAnimation*(width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor): RectangleAdjustedAnimation =
    result = RectangleAdjustedAnimation()
    initRectangleAdjustedAnimation(result, width, height, offsetX, offsetY, basicColor)

method nextFrame*(this: RectangleAdjustedAnimation) =
        discard

method paintXY*(this: RectangleAdjustedAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.drawRect(x +% this.offsetX, y +% this.offsetY, this.width, this.height)

method setWidth*(this: RectangleAdjustedAnimation, width: int32) {.base.} =
        this.width = width

method setHeight*(this: RectangleAdjustedAnimation, height: int32) {.base.} =
        this.height = height

method setOffsetX*(this: RectangleAdjustedAnimation, offsetX: int32) {.base.} =
        this.offsetX = offsetX

method setOffsetY*(this: RectangleAdjustedAnimation, offsetY: int32) {.base.} =
        this.offsetY = offsetY

method getBasicColorP*(this: RectangleAdjustedAnimation): BasicColor {.discardable.} =
        return procCall Animation(this).getBasicColorP()

method setBasicColorP*(this: RectangleAdjustedAnimation, basicColor: BasicColor) =
        procCall Animation(this).setBasicColorP(basicColor)

when declared(newRectangleAdjustedAnimationHook5):
    newRectangleAdjustedAnimationHook5 = proc (width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor): Animation = newRectangleAdjustedAnimation(width, height, offsetX, offsetY, basicColor)

