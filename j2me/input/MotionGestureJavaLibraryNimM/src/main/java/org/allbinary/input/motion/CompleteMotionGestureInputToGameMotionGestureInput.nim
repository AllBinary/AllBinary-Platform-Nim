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
# package org.allbinary.input.motion

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    CompleteMotionGestureInputToGameMotionGestureInput* = ref object of JObject
        logUtil*: LogUtil

proc newCompleteMotionGestureInputToGameMotionGestureInput*(): CompleteMotionGestureInputToGameMotionGestureInput
proc getInstance*(t: typedesc[CompleteMotionGestureInputToGameMotionGestureInput]): CompleteMotionGestureInputToGameMotionGestureInput {.discardable.}
method init*(this: CompleteMotionGestureInputToGameMotionGestureInput) {.base.}
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration as MotionGestureConfigurationModule
export MotionGestureConfigurationModule
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory as MotionGestureConfigurationFactoryModule
export MotionGestureConfigurationFactoryModule
import org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction as DiagonalDownLeftTouchInputToGameKeyEventActionModule
export DiagonalDownLeftTouchInputToGameKeyEventActionModule
import org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction as DiagonalDownRightTouchInputToGameKeyEventActionModule
export DiagonalDownRightTouchInputToGameKeyEventActionModule
import org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction as DiagonalUpLeftTouchInputToGameKeyEventActionModule
export DiagonalUpLeftTouchInputToGameKeyEventActionModule
import org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction as DiagonalUpRightTouchInputToGameKeyEventActionModule
export DiagonalUpRightTouchInputToGameKeyEventActionModule
import org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction as DownTouchInputToGameKeyEventActionModule
export DownTouchInputToGameKeyEventActionModule
import org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction as LeftTouchInputToGameKeyEventActionModule
export LeftTouchInputToGameKeyEventActionModule
import org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction as ReleaseTouchInputToGameKeyEventActionModule
export ReleaseTouchInputToGameKeyEventActionModule
import org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction as RightTouchInputToGameKeyEventActionModule
export RightTouchInputToGameKeyEventActionModule
import org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction as UpTouchInputToGameKeyEventActionModule
export UpTouchInputToGameKeyEventActionModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var CompleteMotionGestureInputToGameMotionGestureInput_instanceValue: CompleteMotionGestureInputToGameMotionGestureInput
var CompleteMotionGestureInputToGameMotionGestureInput_instanceSet = false
proc instance*(t: typedesc[CompleteMotionGestureInputToGameMotionGestureInput]): CompleteMotionGestureInputToGameMotionGestureInput =
    if not CompleteMotionGestureInputToGameMotionGestureInput_instanceSet:
        CompleteMotionGestureInputToGameMotionGestureInput_instanceSet = true
        CompleteMotionGestureInputToGameMotionGestureInput_instanceValue = newCompleteMotionGestureInputToGameMotionGestureInput()
    CompleteMotionGestureInputToGameMotionGestureInput_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCompleteMotionGestureInputToGameMotionGestureInput(this: CompleteMotionGestureInputToGameMotionGestureInput) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initCompleteMotionGestureInputToGameMotionGestureInput*(this: CompleteMotionGestureInputToGameMotionGestureInput) =
    this.initFieldsCompleteMotionGestureInputToGameMotionGestureInput()

proc newCompleteMotionGestureInputToGameMotionGestureInput*(): CompleteMotionGestureInputToGameMotionGestureInput =
    result = CompleteMotionGestureInputToGameMotionGestureInput()
    initCompleteMotionGestureInputToGameMotionGestureInput(result)

proc getInstance*(t: typedesc[CompleteMotionGestureInputToGameMotionGestureInput]): CompleteMotionGestureInputToGameMotionGestureInput {.discardable.} =
        return CompleteMotionGestureInputToGameMotionGestureInput.instance

method init*(this: CompleteMotionGestureInputToGameMotionGestureInput) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        try:
            PreLogUtil.put("Compound Motion Gestures", this, commonStrings.INIT)
            let motionGestureConfiguration: MotionGestureConfiguration = MotionGestureConfigurationFactory.getInstance()
            let touchMotionGestureFactory: TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
            var list: BasicArrayList = newBasicArrayListD()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance())
            list = newBasicArrayListD()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance())
            list = newBasicArrayListD()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance())
            list = newBasicArrayListD()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance())
            list = newBasicArrayListD()
            list.add(touchMotionGestureFactory.LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction.getInstance())
            list = newBasicArrayListD()
            list.add(touchMotionGestureFactory.RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction.getInstance())
            list = newBasicArrayListD()
            list.add(touchMotionGestureFactory.DOWN)
            motionGestureConfiguration.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction.getInstance())
            list = newBasicArrayListD()
            list.add(touchMotionGestureFactory.UP)
            motionGestureConfiguration.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction.getInstance())
            list = newBasicArrayListD()
            list.add(touchMotionGestureFactory.RELEASED)
            motionGestureConfiguration.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction.getInstance())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e)

