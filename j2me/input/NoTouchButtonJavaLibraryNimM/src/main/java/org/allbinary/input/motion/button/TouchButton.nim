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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationInterface as AnimationInterfaceModule
export AnimationInterfaceModule
import org/allbinary/graphics/CellPosition as CellPositionModule
export CellPositionModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule

type
    TouchButton* = ref object of Paintable
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        touchButtonInput*: TouchButtonInput
        animationInterface*: Animation
        rawRectangle*: Rectangle
        xBorder*: int32
        yBorder*: int32
        rectangle*: Rectangle
        cellPosition*: CellPosition
        animationX*: int32
        animationY*: int32

proc newTouchButton*(touchButtonInput: TouchButtonInput, animationInterface: AnimationInterface, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32): TouchButton
proc initTouchButton*(this: TouchButton, touchButtonInput: TouchButtonInput, animationInterface: AnimationInterface, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32)
method paint*(this: TouchButton, graphics: Graphics)
method updateRectangle*(this: TouchButton) {.base.}
method getCellPositionP*(this: TouchButton): CellPosition {.base, discardable.}
method getRectangleP*(this: TouchButton): Rectangle {.base, discardable.}
method getTouchButtonInput*(this: TouchButton): TouchButtonInput {.base, discardable.}
method toString*(this: TouchButton): string {.discardable.}
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsTouchButton(this: TouchButton) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    
    
    
    this.rectangle = RectangleFactory.SINGLETON
    
    this.animationX = 0
    this.animationY = 0
    discard

proc initTouchButton*(this: TouchButton, touchButtonInput: TouchButtonInput, animationInterface: AnimationInterface, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32) =
        initPaintable(this)
        this.initFieldsTouchButton()
        this.touchButtonInput = touchButtonInput
        this.animationInterface = Animation(JObject(animationInterface))
        this.rawRectangle = rawRectangle
        this.cellPosition = cellPosition
        this.xBorder = xBorder
        this.yBorder = yBorder
        this.updateRectangle()
        this.logUtil.putF(newStringMaker().append("Created: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR)

proc newTouchButton*(touchButtonInput: TouchButtonInput, animationInterface: AnimationInterface, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32): TouchButton =
    result = TouchButton()
    initTouchButton(result, touchButtonInput, animationInterface, rawRectangle, cellPosition, xBorder, yBorder)

method paint*(this: TouchButton, graphics: Graphics) =
        this.animationInterface.paintXY(graphics, this.animationX, this.animationY)

method updateRectangle*(this: TouchButton) {.base.} =
        try:
            let x: int32 = this.rawRectangle.getWidth() *% this.cellPosition.getColumn()
            let y: int32 = this.rawRectangle.getHeight() *% this.cellPosition.getRow()
            let pointFactory: PointFactory = PointFactory.getInstance()
            this.rectangle = newRectangle(pointFactory.createXY(x +% this.xBorder, y +% this.yBorder), this.rawRectangle.getWidth(), this.rawRectangle.getHeight())
            let point: GPoint = this.rectangle.getPoint()
            this.animationX = point.getX()
            this.animationY = point.getY()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e)

method getCellPositionP*(this: TouchButton): CellPosition {.base, discardable.} =
        return this.cellPosition

method getRectangleP*(this: TouchButton): Rectangle {.base, discardable.} =
        return this.rectangle

method getTouchButtonInput*(this: TouchButton): TouchButtonInput {.base, discardable.} =
        return this.touchButtonInput

method toString*(this: TouchButton): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let stringUtil: StringUtil = StringUtil.getInstance()
        stringBuffer.append("TouchButton: ")
        stringBuffer.append(stringUtil.toString(this.rectangle))
        stringBuffer.append(" CellPosition: ")
        stringBuffer.append(stringUtil.toString(this.cellPosition))
        stringBuffer.append(" xBorder: ")
        stringBuffer.appendint(this.xBorder)
        stringBuffer.append(" yBorder: ")
        stringBuffer.appendint(this.yBorder)
        return stringBuffer.toString()

when declared(newTouchButtonHook6):
    newTouchButtonHook6 = proc (touchButtonInput: TouchButtonInput, animationInterface: AnimationInterface, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32): Paintable = newTouchButton(touchButtonInput, animationInterface, rawRectangle, cellPosition, xBorder, yBorder)

