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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/ColorCompositeInterface as ColorCompositeInterfaceModule
export ColorCompositeInterfaceModule
import org/allbinary/animation/vector/RectangleFilledAnimation as RectangleFilledAnimationModule
export RectangleFilledAnimationModule

type
    RectangleFilledAdjustedAnimation* = ref object of RectangleFilledAnimation
        offsetX*: int32
        offsetY*: int32

converter jAsColorCompositeInterface*(value: RectangleFilledAdjustedAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
proc newRectangleFilledAdjustedAnimation*(width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor): RectangleFilledAdjustedAnimation
proc initRectangleFilledAdjustedAnimation*(this: RectangleFilledAdjustedAnimation, width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor)
method nextFrame*(this: RectangleFilledAdjustedAnimation)
method paintXY*(this: RectangleFilledAdjustedAnimation, graphics: Graphics, x: int32, y: int32)
method setOffsetX*(this: RectangleFilledAdjustedAnimation, offsetX: int32) {.base.}
method setOffsetY*(this: RectangleFilledAdjustedAnimation, offsetY: int32) {.base.}
method getBasicColorP*(this: RectangleFilledAdjustedAnimation): BasicColor {.discardable.}
method setBasicColorP*(this: RectangleFilledAdjustedAnimation, basicColor: BasicColor)


# Java field initializers run after the base initializer
proc initFieldsRectangleFilledAdjustedAnimation(this: RectangleFilledAdjustedAnimation) =
    
    
    discard

proc initRectangleFilledAdjustedAnimation*(this: RectangleFilledAdjustedAnimation, width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor) =
        initRectangleFilledAnimation(this, width, height, basicColor)
        this.initFieldsRectangleFilledAdjustedAnimation()
        this.offsetX = offsetX
        this.offsetY = offsetY
        this.setBasicColorP(basicColor)

proc newRectangleFilledAdjustedAnimation*(width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor): RectangleFilledAdjustedAnimation =
    result = RectangleFilledAdjustedAnimation()
    initRectangleFilledAdjustedAnimation(result, width, height, offsetX, offsetY, basicColor)

method nextFrame*(this: RectangleFilledAdjustedAnimation) =
        discard

method paintXY*(this: RectangleFilledAdjustedAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        procCall RectangleFilledAnimation(this).paintXY(graphics, x +% this.offsetX, y +% this.offsetY)

method setOffsetX*(this: RectangleFilledAdjustedAnimation, offsetX: int32) {.base.} =
        this.offsetX = offsetX

method setOffsetY*(this: RectangleFilledAdjustedAnimation, offsetY: int32) {.base.} =
        this.offsetY = offsetY

method getBasicColorP*(this: RectangleFilledAdjustedAnimation): BasicColor {.discardable.} =
        return procCall RectangleFilledAnimation(this).getBasicColorP()

method setBasicColorP*(this: RectangleFilledAdjustedAnimation, basicColor: BasicColor) =
        procCall RectangleFilledAnimation(this).setBasicColorP(basicColor)

when declared(newRectangleFilledAdjustedAnimationHook5):
    newRectangleFilledAdjustedAnimationHook5 = proc (width: int32, height: int32, offsetX: int32, offsetY: int32, basicColor: BasicColor): RectangleFilledAnimation = newRectangleFilledAdjustedAnimation(width, height, offsetX, offsetY, basicColor)

