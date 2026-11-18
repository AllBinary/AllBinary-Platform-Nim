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
    DownTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newDownTouchInputToGameKeyEventAction*(): DownTouchInputToGameKeyEventAction
proc initDownTouchInputToGameKeyEventAction*(this: DownTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[DownTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var DownTouchInputToGameKeyEventAction_instanceValue: JObject
var DownTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[DownTouchInputToGameKeyEventAction]): JObject =
    if not DownTouchInputToGameKeyEventAction_instanceSet:
        DownTouchInputToGameKeyEventAction_instanceSet = true
        DownTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    DownTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[DownTouchInputToGameKeyEventAction], value: JObject) =
    DownTouchInputToGameKeyEventAction_instanceSet = true
    DownTouchInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[DownTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if DownTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            DownTouchInputToGameKeyEventAction.instance = newDownTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(DownTouchInputToGameKeyEventAction.instance))

proc initDownTouchInputToGameKeyEventAction*(this: DownTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Down Action", TouchMotionGestureFactory.getInstance().DOWN, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newDownTouchInputToGameKeyEventAction*(): DownTouchInputToGameKeyEventAction =
    result = DownTouchInputToGameKeyEventAction()
    initDownTouchInputToGameKeyEventAction(result)

when declared(newDownTouchInputToGameKeyEventActionHook0):
    newDownTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newDownTouchInputToGameKeyEventAction()

