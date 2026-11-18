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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/BasicColorSetUtil as BasicColorSetUtilModule
export BasicColorSetUtilModule
import org/allbinary/image/opengles/OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterfaceModule
export OpenGLSurfaceChangedInterfaceModule
import org/allbinary/animation/AnimationInterface as AnimationInterfaceModule
export AnimationInterfaceModule

type
    Animation* = ref object of AnimationInterface
        basicSetColorUtil*: BasicColorSetUtil
        basicColor*: BasicColor
        colorP*: int32
        changeBasicColorP*: BasicColor
        changeColorP*: int32
        alphaP*: int32

converter jAsOpenGLSurfaceChangedInterface*(value: Animation): OpenGLSurfaceChangedInterface = cast[OpenGLSurfaceChangedInterface](value)
proc newAnimation*(): Animation
proc initAnimation*(this: Animation)
method setAlpha*(this: Animation, alpha: int32) {.base.}
method nextFrame*(this: Animation)
method paintXY*(this: Animation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: Animation, graphics: Graphics, x: int32, y: int32, z: int32)
method isThreed*(this: Animation): bool {.base, discardable.}
method getBasicColorP*(this: Animation): BasicColor {.base, discardable.}
method setBasicColorP*(this: Animation, basicColor: BasicColor) {.base.}
method setBackgroundBasicColorP*(this: Animation, basicColor: BasicColor) {.base.}
method getChangeBasicColor*(this: Animation): BasicColor {.base, discardable.}
method changeBasicColor*(this: Animation, basicColor: BasicColor) {.base.}
method getChangeColor*(this: Animation): int32 {.base, discardable.}
method getColor*(this: Animation): int32 {.base, discardable.}
method setScale*(this: Animation, scaleX: float32, scaleY: float32) {.base.}
method setMaxScale*(this: Animation, maxScaleX: float32, maxScaleY: float32) {.base.}
method set*(this: Animation, gl: GL)
method setDx*(this: Animation, dx: int32) {.base.}
method getDx*(this: Animation): int32 {.base, discardable.}
method setDy*(this: Animation, dy: int32) {.base.}
method getDy*(this: Animation): int32 {.base, discardable.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


# Java field initializers run after the base initializer
proc initFieldsAnimation(this: Animation) =
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    this.basicColor = BasicColorFactory.getInstance().WHITE
    this.colorP = 0
    this.changeBasicColorP = BasicColorFactory.getInstance().NULL_COLOR
    this.changeColorP = 0
    this.alphaP = 0
    discard

proc initAnimation*(this: Animation) =
        this.initFieldsAnimation()
        discard

proc newAnimation*(): Animation =
    result = Animation()
    initAnimation(result)

method setAlpha*(this: Animation, alpha: int32) {.base.} =
        this.alphaP = alpha

method nextFrame*(this: Animation) =
        discard

method paintXY*(this: Animation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())

method paintThreedXYZ*(this: Animation, graphics: Graphics, x: int32, y: int32, z: int32) =
        discard

method isThreed*(this: Animation): bool {.base, discardable.} =
        return false

method getBasicColorP*(this: Animation): BasicColor {.base, discardable.} =
        return this.basicColor

method setBasicColorP*(this: Animation, basicColor: BasicColor) {.base.} =
        this.basicColor = basicColor
        this.colorP = this.basicColor.intValue()

method setBackgroundBasicColorP*(this: Animation, basicColor: BasicColor) {.base.} =
        discard

method getChangeBasicColor*(this: Animation): BasicColor {.base, discardable.} =
        return this.changeBasicColorP

method changeBasicColor*(this: Animation, basicColor: BasicColor) {.base.} =
        this.changeBasicColorP = basicColor
        this.changeColorP = this.changeBasicColorP.intValue()

method getChangeColor*(this: Animation): int32 {.base, discardable.} =
        return this.changeColorP

method getColor*(this: Animation): int32 {.base, discardable.} =
        return this.colorP

method setScale*(this: Animation, scaleX: float32, scaleY: float32) {.base.} =
        discard

method setMaxScale*(this: Animation, maxScaleX: float32, maxScaleY: float32) {.base.} =
        discard

method set*(this: Animation, gl: GL) =
        discard

method setDx*(this: Animation, dx: int32) {.base.} =
        discard

method getDx*(this: Animation): int32 {.base, discardable.} =
        return 0

method setDy*(this: Animation, dy: int32) {.base.} =
        discard

method getDy*(this: Animation): int32 {.base, discardable.} =
        return 0

