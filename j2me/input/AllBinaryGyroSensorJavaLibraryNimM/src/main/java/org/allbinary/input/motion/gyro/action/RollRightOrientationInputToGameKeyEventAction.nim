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
# package org.allbinary.input.motion.gyro.action

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule

type
    RollRightOrientationInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newRollRightOrientationInputToGameKeyEventAction*(): RollRightOrientationInputToGameKeyEventAction
proc initRollRightOrientationInputToGameKeyEventAction*(this: RollRightOrientationInputToGameKeyEventAction)
proc getInstance*(t: typedesc[RollRightOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/gyro/OrientationMotionGestureFactory as OrientationMotionGestureFactoryModule
export OrientationMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var RollRightOrientationInputToGameKeyEventAction_instanceValue: JObject
var RollRightOrientationInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[RollRightOrientationInputToGameKeyEventAction]): JObject =
    if not RollRightOrientationInputToGameKeyEventAction_instanceSet:
        RollRightOrientationInputToGameKeyEventAction_instanceSet = true
        RollRightOrientationInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    RollRightOrientationInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[RollRightOrientationInputToGameKeyEventAction], value: JObject) =
    RollRightOrientationInputToGameKeyEventAction_instanceSet = true
    RollRightOrientationInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[RollRightOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if RollRightOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            RollRightOrientationInputToGameKeyEventAction.instance = newRollRightOrientationInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(RollRightOrientationInputToGameKeyEventAction.instance))

proc initRollRightOrientationInputToGameKeyEventAction*(this: RollRightOrientationInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Roll Right Action", OrientationMotionGestureFactory.getInstance().ROLL_RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newRollRightOrientationInputToGameKeyEventAction*(): RollRightOrientationInputToGameKeyEventAction =
    result = RollRightOrientationInputToGameKeyEventAction()
    initRollRightOrientationInputToGameKeyEventAction(result)

when declared(newRollRightOrientationInputToGameKeyEventActionHook0):
    newRollRightOrientationInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newRollRightOrientationInputToGameKeyEventAction()

