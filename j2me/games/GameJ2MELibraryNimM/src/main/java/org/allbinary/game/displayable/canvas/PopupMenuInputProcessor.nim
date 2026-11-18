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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule
import org/allbinary/math/RectangleCollisionUtil as RectangleCollisionUtilModule
export RectangleCollisionUtilModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/displayable/canvas/BasicMenuInputProcessor as BasicMenuInputProcessorModule
export BasicMenuInputProcessorModule

type
    PopupMenuInputProcessor* = ref object of BasicMenuInputProcessor
        rectangleCollisionUtil*: RectangleCollisionUtil
        CLICK_DELAY*: int32
        clickTimeHelper*: TimeDelayHelper
        rectangle*: Rectangle

proc newPopupMenuInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, rectangle: Rectangle): PopupMenuInputProcessor
proc initPopupMenuInputProcessor*(this: PopupMenuInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, rectangle: Rectangle)
method init*(this: PopupMenuInputProcessor, rectangle: Rectangle) {.base.}
method processInput*(this: PopupMenuInputProcessor, key: int32): int32 {.base, discardable.}
method processInputList*(this: PopupMenuInputProcessor): int32 {.discardable.}
method processMotionInputs*(this: PopupMenuInputProcessor): int32 {.base, discardable.}
method processMotionInput*(this: PopupMenuInputProcessor, motionGestureEvent: MotionGestureEvent) {.base.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/input/GameInputStrings as GameInputStringsModule
export GameInputStringsModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule


# Java field initializers run after the base initializer
proc initFieldsPopupMenuInputProcessor(this: PopupMenuInputProcessor) =
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    this.CLICK_DELAY = 120
    this.clickTimeHelper = newTimeDelayHelper(this.CLICK_DELAY)
    
    discard

proc initPopupMenuInputProcessor*(this: PopupMenuInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, rectangle: Rectangle) =
        initBasicMenuInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas)
        this.initFieldsPopupMenuInputProcessor()
        this.rectangle = rectangle

proc newPopupMenuInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, rectangle: Rectangle): PopupMenuInputProcessor =
    result = PopupMenuInputProcessor()
    initPopupMenuInputProcessor(result, gameKeyEventList, playerInputId, gameCanvas, rectangle)

method init*(this: PopupMenuInputProcessor, rectangle: Rectangle) {.base.} =
        this.rectangle = rectangle

method processInput*(this: PopupMenuInputProcessor, key: int32): int32 {.base, discardable.} =
        if key == Canvas.KEY_STAR:
            let gameCanvas: AllBinaryGameCanvas = AllBinaryGameCanvas(JObject(this.getCanvas()))
            gameCanvas.toggleMenu()
            return 1
        return 0

method processInputList*(this: PopupMenuInputProcessor): int32 {.discardable.} =
        try:
            let motionInputsIndex: int32 = this.processMotionInputs()
            let list: BasicArrayList = this.getGameKeyEventList()
            let size: int32 = list.size()
            var key: int32 = 0
            var gameKeyEvent: GameKeyEvent = nil
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    gameKeyEvent = GameKeyEvent(JObject(list.objectArray[index]))
                    if (not jIsNil(gameKeyEvent)):
                        key = gameKeyEvent.getKey()
                        if this.processInput(key) == 1:
                            break
            this.clear()
            if size > 0 or motionInputsIndex >= 0:
                return 1
            else:
                return -1
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, GameInputStrings.getInstance().PROCESS_INPUT, e)
            return -1

method processMotionInputs*(this: PopupMenuInputProcessor): int32 {.base, discardable.} =
        let lastIndex: int32 = this.motionGestureEventList.size() -% 1
        if lastIndex >= 0:
            let motionGestureEvent: MotionGestureEvent = MotionGestureEvent(JObject(this.motionGestureEventList.objectArray[lastIndex]))
            this.processMotionInput(motionGestureEvent)
        this.motionGestureEventList.clear()
        return lastIndex

method processMotionInput*(this: PopupMenuInputProcessor, motionGestureEvent: MotionGestureEvent) {.base.} =
        if (jIsNil(motionGestureEvent)):
            this.logUtil.putF("Exception: Bug", this, this.gameInputStrings.PROCESS_MOTION_INPUT)
            return
        let touchMotionGestureFactory: TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        let motionGestureInput: MotionGestureInput = motionGestureEvent.getMotionGesture()
        if motionGestureInput == touchMotionGestureFactory.RELEASED:
            var point: GPoint = motionGestureEvent.getCurrentPoint()
            var rectPoint: GPoint = this.rectangle.getPoint()
            if this.rectangleCollisionUtil.isInside(rectPoint.getX(), rectPoint.getY(), this.rectangle.getMaxX() +% 20, this.rectangle.getMaxY(), point.getX(), point.getY()):
                if this.clickTimeHelper.isTimeTNT():
                    let gameCanvas: AllBinaryGameCanvas = AllBinaryGameCanvas(JObject(this.getCanvas()))
                    gameCanvas.toggleMenu()

when declared(newPopupMenuInputProcessorHook4):
    newPopupMenuInputProcessorHook4 = proc (gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, rectangle: Rectangle): BasicMenuInputProcessor = newPopupMenuInputProcessor(gameKeyEventList, playerInputId, gameCanvas, rectangle)

