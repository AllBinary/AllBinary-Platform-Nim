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
import org/allbinary/game/input/event/DownGameKeyEventHandler as DownGameKeyEventHandlerModule
export DownGameKeyEventHandlerModule
import org/allbinary/game/input/event/UpGameKeyEventHandler as UpGameKeyEventHandlerModule
export UpGameKeyEventHandlerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/math/RectangleCollisionUtil as RectangleCollisionUtilModule
export RectangleCollisionUtilModule
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule
import org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton as CurrentlyPressedTouchButtonSingletonModule
export CurrentlyPressedTouchButtonSingletonModule
import org/allbinary/input/motion/button/ReleaseHelper as ReleaseHelperModule
export ReleaseHelperModule

type
    TouchButtonRecognizer* = ref object of JObject
        logUtil*: LogUtil
        rectangleCollisionUtil*: RectangleCollisionUtil
        upGameKeyEventHandler*: UpGameKeyEventHandler
        downGameKeyEventHandler*: DownGameKeyEventHandler
        lastPressedTouchButtonInput*: TouchButtonInput
        currentlyPressedTouchButtonSingleton*: CurrentlyPressedTouchButtonSingleton
        releaseHelper*: ReleaseHelper

proc newTouchButtonRecognizer*(): TouchButtonRecognizer
proc initTouchButtonRecognizer*(this: TouchButtonRecognizer)
method processRelease*(this: TouchButtonRecognizer, touchButtonInput: TouchButtonInput, deviceId: int32) {.base.}
method releaseTouchButtonInput*(this: TouchButtonRecognizer, x: int32, y: int32, deviceId: int32): bool {.base, discardable.}
method pressTouchButtonInput*(this: TouchButtonRecognizer, x: int32, y: int32, deviceId: int32): bool {.base, discardable.}
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/input/motion/button/BasicTouchInputFactory as BasicTouchInputFactoryModule
export BasicTouchInputFactoryModule
import org/allbinary/input/motion/button/TouchScreenFactory as TouchScreenFactoryModule
export TouchScreenFactoryModule
import org/allbinary/input/motion/button/MultitouchReleaseHelper as MultitouchReleaseHelperModule
export MultitouchReleaseHelperModule
import org/allbinary/input/motion/button/TouchButtonFactory as TouchButtonFactoryModule
export TouchButtonFactoryModule
import org/allbinary/input/motion/button/TouchButton as TouchButtonModule
export TouchButtonModule


# Java field initializers run after the base initializer
proc initFieldsTouchButtonRecognizer(this: TouchButtonRecognizer) =
    this.logUtil = LogUtil.getInstance()
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    this.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
    this.currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance()
    
    discard

proc initTouchButtonRecognizer*(this: TouchButtonRecognizer) =
        this.initFieldsTouchButtonRecognizer()
        if TouchScreenFactory.getInstance().isMultiTouch():
            this.releaseHelper = newMultitouchReleaseHelper(this)
        else:
            this.releaseHelper = newReleaseHelper(this)

proc newTouchButtonRecognizer*(): TouchButtonRecognizer =
    result = TouchButtonRecognizer()
    initTouchButtonRecognizer(result)

method processRelease*(this: TouchButtonRecognizer, touchButtonInput: TouchButtonInput, deviceId: int32) {.base.} =
        this.releaseHelper.release(touchButtonInput, deviceId)
        let gameKeyEvent: GameKeyEvent = touchButtonInput.getGameKeyEvent()
        this.upGameKeyEventHandler.fireEvent(gameKeyEvent)
        this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
        this.currentlyPressedTouchButtonSingleton.remove(touchButtonInput)

method releaseTouchButtonInput*(this: TouchButtonRecognizer, x: int32, y: int32, deviceId: int32): bool {.base, discardable.} =
        var touchButtonInput: TouchButtonInput = this.lastPressedTouchButtonInput
        if this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput):
            this.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
            this.processRelease(touchButtonInput, deviceId)
            return true
        else:
            let list: BasicArrayList = TouchButtonFactory.getInstance().getList()
            var rectangle: Rectangle = nil
            var point: GPoint = nil
            var touchButton: TouchButton = nil
            block:
                var index: int32 = list.size() -% 1
                while index >= 0:
                    defer: index = index -% 1
                    touchButton = TouchButton(JObject(list.objectArray[index]))
                    rectangle = touchButton.getRectangle()
                    point = rectangle.getPoint()
                    if this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y):
                        touchButtonInput = touchButton.getTouchButtonInput()
                        this.processRelease(touchButtonInput, deviceId)
                        return true
        return false

method pressTouchButtonInput*(this: TouchButtonRecognizer, x: int32, y: int32, deviceId: int32): bool {.base, discardable.} =
        let list: BasicArrayList = TouchButtonFactory.getInstance().getList()
        var rectangle: Rectangle = nil
        var point: GPoint = nil
        var touchButton: TouchButton = nil
        var touchButtonInput: TouchButtonInput = nil
        var gameKeyEvent: GameKeyEvent = nil
        block:
            var index: int32 = list.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                touchButton = TouchButton(JObject(list.objectArray[index]))
                rectangle = touchButton.getRectangle()
                point = rectangle.getPoint()
                if this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y):
                    touchButtonInput = touchButton.getTouchButtonInput()
                    if (not this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)):
                        this.releaseHelper.release(touchButtonInput, deviceId)
                        this.lastPressedTouchButtonInput = touchButtonInput
                        this.currentlyPressedTouchButtonSingleton.add(touchButtonInput)
                        gameKeyEvent = touchButtonInput.getGameKeyEvent()
                        this.downGameKeyEventHandler.fireEvent(gameKeyEvent)
                        this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                    return true
        return false

