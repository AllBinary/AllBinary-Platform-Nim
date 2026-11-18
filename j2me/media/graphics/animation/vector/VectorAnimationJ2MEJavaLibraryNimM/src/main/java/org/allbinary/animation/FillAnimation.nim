# Generated Code Do Not Modify
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    FillAnimation* = ref object of IndexedAnimation
        pixelBuffer*: JArray[int32]
        width*: int32
        height*: int32

proc newFillAnimation*(pixelBuffer: JArray[int32], width: int32, height: int32, animationBehavior: AnimationBehavior): FillAnimation
proc initFillAnimation*(this: FillAnimation, pixelBuffer: JArray[int32], width: int32, height: int32, animationBehavior: AnimationBehavior)
method setBasicColorP*(this: FillAnimation, basicColor: BasicColor)
method changeBasicColor*(this: FillAnimation, basicColor: BasicColor)
method setAlpha*(this: FillAnimation, alpha: int32)
method setScale*(this: FillAnimation, scaleX: float32, scaleY: float32)
method setMaxScale*(this: FillAnimation, maxScaleX: float32, maxScaleY: float32)
method updateModifiers*(this: FillAnimation) {.base.}
method paint*(this: FillAnimation, g: Graphics) {.base.}


# Java field initializers run after the base initializer
proc initFieldsFillAnimation(this: FillAnimation) =
    
    
    
    discard

proc initFillAnimation*(this: FillAnimation, pixelBuffer: JArray[int32], width: int32, height: int32, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsFillAnimation()
        this.width = 100
        this.height = 100
        this.pixelBuffer = pixelBuffer

proc newFillAnimation*(pixelBuffer: JArray[int32], width: int32, height: int32, animationBehavior: AnimationBehavior): FillAnimation =
    result = FillAnimation()
    initFillAnimation(result, pixelBuffer, width, height, animationBehavior)

method setBasicColorP*(this: FillAnimation, basicColor: BasicColor) =
        var changed: bool = false
        if (jIsNil(this.getBasicColorP())) or this.getBasicColorP().intValue() != basicColor.intValue():
            changed = true
        procCall IndexedAnimation(this).setBasicColorP(basicColor)
        if changed:
            this.updateModifiers()

method changeBasicColor*(this: FillAnimation, basicColor: BasicColor) =
        var changed: bool = false
        if (jIsNil(this.getChangeBasicColor())) or this.getChangeBasicColor().intValue() != basicColor.intValue():
            changed = true
        procCall IndexedAnimation(this).changeBasicColor(basicColor)
        if changed:
            this.updateModifiers()

method setAlpha*(this: FillAnimation, alpha: int32) =
        var changed: bool = false
        if this.alphaP != alpha:
            changed = true
        procCall IndexedAnimation(this).setAlpha(alpha)
        if changed:
            this.updateModifiers()

method setScale*(this: FillAnimation, scaleX: float32, scaleY: float32) =
        discard

method setMaxScale*(this: FillAnimation, maxScaleX: float32, maxScaleY: float32) =
        discard

method updateModifiers*(this: FillAnimation) {.base.} =
        discard

method paint*(this: FillAnimation, g: Graphics) {.base.} =
        g.drawRGB(this.pixelBuffer, 0, this.width, 0, 0, this.width, this.height, true)

when declared(newFillAnimationHook4):
    newFillAnimationHook4 = proc (pixelBuffer: JArray[int32], width: int32, height: int32, animationBehavior: AnimationBehavior): IndexedAnimation = newFillAnimation(pixelBuffer, width, height, animationBehavior)

