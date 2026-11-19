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
import org/allbinary/layer/PositionInterface as PositionInterfaceModule
export PositionInterfaceModule

type
    LineAnimation* = ref object of Animation
        newLine*: JArray[JArray[int32]]
        tempLine*: JArray[JArray[int32]]
        line*: JArray[JArray[int32]]

converter jAsColorCompositeInterface*(value: LineAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
converter jAsBasicColorCompositeSetterInterface*(value: LineAnimation): BasicColorCompositeSetterInterface = cast[BasicColorCompositeSetterInterface](value)
converter jAsPositionInterface*(value: LineAnimation): PositionInterface = cast[PositionInterface](value)
proc newLineAnimation*(basicColor: BasicColor): LineAnimation
proc initLineAnimation*(this: LineAnimation, basicColor: BasicColor)
method init*(this: LineAnimation, x: int32, y: int32) {.base.}
method setPosition*(this: LineAnimation, x: int32, y: int32, z: int32)
method paintXY*(this: LineAnimation, graphics: Graphics, x: int32, y: int32)
method nextFrame*(this: LineAnimation)
method getBasicColorP*(this: LineAnimation): BasicColor {.discardable.}
method setBasicColorP*(this: LineAnimation, basicColor: BasicColor)
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule


# Java field initializers run after the base initializer
proc initFieldsLineAnimation(this: LineAnimation) =
    this.newLine = newJArrayOf[JArray[int32]](2, proc (): JArray[int32] = newJArray[int32](2, default(int32)))
    this.tempLine = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
    this.line = newJArrayOf[JArray[int32]](2, proc (): JArray[int32] = newJArray[int32](2, default(int32)))
    discard

proc initLineAnimation*(this: LineAnimation, basicColor: BasicColor) =
        initAnimation(this)
        this.initFieldsLineAnimation()
        this.setBasicColorP(basicColor)

proc newLineAnimation*(basicColor: BasicColor): LineAnimation =
    result = LineAnimation()
    initLineAnimation(result, basicColor)

method init*(this: LineAnimation, x: int32, y: int32) {.base.} =
        this.newLine[0][0] = x
        this.newLine[0][1] = y
        this.newLine[1][0] = x
        this.newLine[1][1] = y
        this.tempLine = this.line
        this.line = this.newLine
        this.newLine = this.tempLine

method setPosition*(this: LineAnimation, x: int32, y: int32, z: int32) =
        this.newLine[0][0] = this.line[1][0]
        this.newLine[0][1] = this.line[1][1]
        this.newLine[1][0] = x
        this.newLine[1][1] = y
        this.tempLine = this.line
        this.line = this.newLine
        this.newLine = this.tempLine

method paintXY*(this: LineAnimation, graphics: Graphics, x: int32, y: int32) =
        let currentLine: JArray[JArray[int32]] = this.line
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.drawLine(currentLine[0][0], currentLine[0][1], currentLine[1][0], currentLine[1][1])

method nextFrame*(this: LineAnimation) =
        discard

method getBasicColorP*(this: LineAnimation): BasicColor {.discardable.} =
        return procCall Animation(this).getBasicColorP()

method setBasicColorP*(this: LineAnimation, basicColor: BasicColor) =
        jSuperStatement(procCall Animation(this).setBasicColorP(basicColor))

when declared(newLineAnimationHook1):
    newLineAnimationHook1 = proc (basicColor: BasicColor): Animation = newLineAnimation(basicColor)

