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
# package org.allbinary.input.motion.touch.action

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule

type
    RightTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newRightTouchInputToGameKeyEventAction*(): RightTouchInputToGameKeyEventAction
proc initRightTouchInputToGameKeyEventAction*(this: RightTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[RightTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var RightTouchInputToGameKeyEventAction_instanceValue: JObject
var RightTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[RightTouchInputToGameKeyEventAction]): JObject =
    if not RightTouchInputToGameKeyEventAction_instanceSet:
        RightTouchInputToGameKeyEventAction_instanceSet = true
        RightTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    RightTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[RightTouchInputToGameKeyEventAction], value: JObject) =
    RightTouchInputToGameKeyEventAction_instanceSet = true
    RightTouchInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[RightTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if RightTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            RightTouchInputToGameKeyEventAction.instance = newRightTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(RightTouchInputToGameKeyEventAction.instance))

proc initRightTouchInputToGameKeyEventAction*(this: RightTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Right Action", TouchMotionGestureFactory.getInstance().RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newRightTouchInputToGameKeyEventAction*(): RightTouchInputToGameKeyEventAction =
    result = RightTouchInputToGameKeyEventAction()
    initRightTouchInputToGameKeyEventAction(result)

when declared(newRightTouchInputToGameKeyEventActionHook0):
    newRightTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newRightTouchInputToGameKeyEventAction()

