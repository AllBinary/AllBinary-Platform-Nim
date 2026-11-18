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
# package org.allbinary.input.motion.trackball.action

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule

type
    RightTrackballInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newRightTrackballInputToGameKeyEventAction*(): RightTrackballInputToGameKeyEventAction
proc initRightTrackballInputToGameKeyEventAction*(this: RightTrackballInputToGameKeyEventAction)
proc getInstance*(t: typedesc[RightTrackballInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TrackballMotionGestureFactory as TrackballMotionGestureFactoryModule
export TrackballMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var RightTrackballInputToGameKeyEventAction_instanceValue: JObject
var RightTrackballInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[RightTrackballInputToGameKeyEventAction]): JObject =
    if not RightTrackballInputToGameKeyEventAction_instanceSet:
        RightTrackballInputToGameKeyEventAction_instanceSet = true
        RightTrackballInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    RightTrackballInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[RightTrackballInputToGameKeyEventAction], value: JObject) =
    RightTrackballInputToGameKeyEventAction_instanceSet = true
    RightTrackballInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[RightTrackballInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if RightTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            RightTrackballInputToGameKeyEventAction.instance = newRightTrackballInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(RightTrackballInputToGameKeyEventAction.instance))

proc initRightTrackballInputToGameKeyEventAction*(this: RightTrackballInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Right Action", TrackballMotionGestureFactory.getInstance().RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newRightTrackballInputToGameKeyEventAction*(): RightTrackballInputToGameKeyEventAction =
    result = RightTrackballInputToGameKeyEventAction()
    initRightTrackballInputToGameKeyEventAction(result)

when declared(newRightTrackballInputToGameKeyEventActionHook0):
    newRightTrackballInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newRightTrackballInputToGameKeyEventAction()

