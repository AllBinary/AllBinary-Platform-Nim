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
    LeftTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newLeftTouchInputToGameKeyEventAction*(): LeftTouchInputToGameKeyEventAction
proc initLeftTouchInputToGameKeyEventAction*(this: LeftTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[LeftTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var LeftTouchInputToGameKeyEventAction_instanceValue: JObject
var LeftTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[LeftTouchInputToGameKeyEventAction]): JObject =
    if not LeftTouchInputToGameKeyEventAction_instanceSet:
        LeftTouchInputToGameKeyEventAction_instanceSet = true
        LeftTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    LeftTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[LeftTouchInputToGameKeyEventAction], value: JObject) =
    LeftTouchInputToGameKeyEventAction_instanceSet = true
    LeftTouchInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[LeftTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if LeftTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            LeftTouchInputToGameKeyEventAction.instance = newLeftTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(LeftTouchInputToGameKeyEventAction.instance))

proc initLeftTouchInputToGameKeyEventAction*(this: LeftTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Left Action", TouchMotionGestureFactory.getInstance().LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newLeftTouchInputToGameKeyEventAction*(): LeftTouchInputToGameKeyEventAction =
    result = LeftTouchInputToGameKeyEventAction()
    initLeftTouchInputToGameKeyEventAction(result)

when declared(newLeftTouchInputToGameKeyEventActionHook0):
    newLeftTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newLeftTouchInputToGameKeyEventAction()

