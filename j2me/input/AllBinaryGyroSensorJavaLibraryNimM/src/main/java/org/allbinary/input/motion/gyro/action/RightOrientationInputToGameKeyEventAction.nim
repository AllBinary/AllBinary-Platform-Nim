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
    RightOrientationInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newRightOrientationInputToGameKeyEventAction*(): RightOrientationInputToGameKeyEventAction
proc initRightOrientationInputToGameKeyEventAction*(this: RightOrientationInputToGameKeyEventAction)
proc getInstance*(t: typedesc[RightOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/gyro/OrientationMotionGestureFactory as OrientationMotionGestureFactoryModule
export OrientationMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var RightOrientationInputToGameKeyEventAction_instanceValue: JObject
var RightOrientationInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[RightOrientationInputToGameKeyEventAction]): JObject =
    if not RightOrientationInputToGameKeyEventAction_instanceSet:
        RightOrientationInputToGameKeyEventAction_instanceSet = true
        RightOrientationInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    RightOrientationInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[RightOrientationInputToGameKeyEventAction], value: JObject) =
    RightOrientationInputToGameKeyEventAction_instanceSet = true
    RightOrientationInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[RightOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if RightOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            RightOrientationInputToGameKeyEventAction.instance = newRightOrientationInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(RightOrientationInputToGameKeyEventAction.instance))

proc initRightOrientationInputToGameKeyEventAction*(this: RightOrientationInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Right Action", OrientationMotionGestureFactory.getInstance().RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newRightOrientationInputToGameKeyEventAction*(): RightOrientationInputToGameKeyEventAction =
    result = RightOrientationInputToGameKeyEventAction()
    initRightOrientationInputToGameKeyEventAction(result)

when declared(newRightOrientationInputToGameKeyEventActionHook0):
    newRightOrientationInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newRightOrientationInputToGameKeyEventAction()

