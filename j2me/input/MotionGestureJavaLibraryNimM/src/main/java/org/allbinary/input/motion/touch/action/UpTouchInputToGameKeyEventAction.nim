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
    UpTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newUpTouchInputToGameKeyEventAction*(): UpTouchInputToGameKeyEventAction
proc initUpTouchInputToGameKeyEventAction*(this: UpTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[UpTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var UpTouchInputToGameKeyEventAction_instanceValue: JObject
var UpTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[UpTouchInputToGameKeyEventAction]): JObject =
    if not UpTouchInputToGameKeyEventAction_instanceSet:
        UpTouchInputToGameKeyEventAction_instanceSet = true
        UpTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    UpTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[UpTouchInputToGameKeyEventAction], value: JObject) =
    UpTouchInputToGameKeyEventAction_instanceSet = true
    UpTouchInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[UpTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if UpTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            UpTouchInputToGameKeyEventAction.instance = newUpTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(UpTouchInputToGameKeyEventAction.instance))

proc initUpTouchInputToGameKeyEventAction*(this: UpTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Up Action", TouchMotionGestureFactory.getInstance().UP, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newUpTouchInputToGameKeyEventAction*(): UpTouchInputToGameKeyEventAction =
    result = UpTouchInputToGameKeyEventAction()
    initUpTouchInputToGameKeyEventAction(result)

when declared(newUpTouchInputToGameKeyEventActionHook0):
    newUpTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newUpTouchInputToGameKeyEventAction()

