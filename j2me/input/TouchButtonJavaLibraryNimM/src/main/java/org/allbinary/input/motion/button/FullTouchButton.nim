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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/graphics/CellPosition as CellPositionModule
export CellPositionModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/input/motion/button/TouchButton as TouchButtonModule
export TouchButtonModule
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule
import org/allbinary/input/motion/button/TouchButtonResource as TouchButtonResourceModule
export TouchButtonResourceModule

type
    FullTouchButton* = ref object of TouchButton

proc newFullTouchButton*(touchButtonInput: TouchButtonInput, animationInterface: Animation, hintAnimationInterface: Animation, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32): FullTouchButton
proc initFullTouchButton*(this: FullTouchButton, touchButtonInput: TouchButtonInput, animationInterface: Animation, hintAnimationInterface: Animation, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32)
proc createButton*(t: typedesc[FullTouchButton], touchButtonInput: TouchButtonInput, touchButtonResource: TouchButtonResource, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32): FullTouchButton {.discardable.}
method updateRectangle*(this: FullTouchButton)
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule


proc createButton*(t: typedesc[FullTouchButton], touchButtonInput: TouchButtonInput, touchButtonResource: TouchButtonResource, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32): FullTouchButton {.discardable.} =
        return newFullTouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)

proc initFullTouchButton*(this: FullTouchButton, touchButtonInput: TouchButtonInput, animationInterface: Animation, hintAnimationInterface: Animation, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32) =
        initTouchButton(this, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)

proc newFullTouchButton*(touchButtonInput: TouchButtonInput, animationInterface: Animation, hintAnimationInterface: Animation, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32): FullTouchButton =
    result = FullTouchButton()
    initFullTouchButton(result, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)

method updateRectangle*(this: FullTouchButton) =
        try:
            let pointFactory: PointFactory = PointFactory.getInstance()
            let x: int32 = this.rawRectangle.getWidth() *% this.cellPositionP.getColumn()
            let y: int32 = this.rawRectangle.getHeight() *% this.cellPositionP.getRow()
            this.rectangleP = newRectangle(pointFactory.createXY(x, y), this.rawRectangle.getWidth() +% (2 *% this.xBorder), this.rawRectangle.getHeight() +% (2 *% this.yBorder))
            let point: GPoint = this.rectangleP.getPoint()
            this.animationX = point.getX() +% this.xBorder
            this.animationY = point.getY() +% this.yBorder
            this.hintAnimationY = ashr(this.animationY -% this.rectangleP.getHeight(), 1)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e)

when declared(newFullTouchButtonHook7):
    newFullTouchButtonHook7 = proc (touchButtonInput: TouchButtonInput, animationInterface: Animation, hintAnimationInterface: Animation, rawRectangle: Rectangle, cellPosition: CellPosition, xBorder: int32, yBorder: int32): TouchButton = newFullTouchButton(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)

