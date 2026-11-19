# Generated Code Do Not Modify
# package org.allbinary.animation.vector

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/vector/RectangleFilledAnimation as RectangleFilledAnimationModule
export RectangleFilledAnimationModule

type
    ARectangleFilledAnimation* = ref object of RectangleFilledAnimation
        x*: int32
        y*: int32

proc newARectangleFilledAnimation*(): ARectangleFilledAnimation
proc initARectangleFilledAnimation*(this: ARectangleFilledAnimation)
method nextFrame*(this: ARectangleFilledAnimation)
method paintXY*(this: ARectangleFilledAnimation, graphics: Graphics, unusedX: int32, unusedY: int32)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


# Java field initializers run after the base initializer
proc initFieldsARectangleFilledAnimation(this: ARectangleFilledAnimation) =
    this.x = 0
    this.y = 0
    discard

proc initARectangleFilledAnimation*(this: ARectangleFilledAnimation) =
        initRectangleFilledAnimation(this, 0, 0, BasicColorFactory.getInstance().BLACK)
        this.initFieldsARectangleFilledAnimation()

proc newARectangleFilledAnimation*(): ARectangleFilledAnimation =
    result = ARectangleFilledAnimation()
    initARectangleFilledAnimation(result)

method nextFrame*(this: ARectangleFilledAnimation) =
        discard

method paintXY*(this: ARectangleFilledAnimation, graphics: Graphics, unusedX: int32, unusedY: int32) =
        jSuperStatement(procCall RectangleFilledAnimation(this).paintXY(graphics, this.x, this.y))

when declared(newARectangleFilledAnimationHook0):
    newARectangleFilledAnimationHook0 = proc (): RectangleFilledAnimation = newARectangleFilledAnimation()

