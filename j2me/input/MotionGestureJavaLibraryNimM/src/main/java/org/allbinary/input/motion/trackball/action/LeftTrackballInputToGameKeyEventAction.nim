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
    LeftTrackballInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newLeftTrackballInputToGameKeyEventAction*(): LeftTrackballInputToGameKeyEventAction
proc initLeftTrackballInputToGameKeyEventAction*(this: LeftTrackballInputToGameKeyEventAction)
proc getInstance*(t: typedesc[LeftTrackballInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TrackballMotionGestureFactory as TrackballMotionGestureFactoryModule
export TrackballMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var LeftTrackballInputToGameKeyEventAction_instanceValue: JObject
var LeftTrackballInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[LeftTrackballInputToGameKeyEventAction]): JObject =
    if not LeftTrackballInputToGameKeyEventAction_instanceSet:
        LeftTrackballInputToGameKeyEventAction_instanceSet = true
        LeftTrackballInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    LeftTrackballInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[LeftTrackballInputToGameKeyEventAction], value: JObject) =
    LeftTrackballInputToGameKeyEventAction_instanceSet = true
    LeftTrackballInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[LeftTrackballInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if LeftTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            LeftTrackballInputToGameKeyEventAction.instance = newLeftTrackballInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(LeftTrackballInputToGameKeyEventAction.instance))

proc initLeftTrackballInputToGameKeyEventAction*(this: LeftTrackballInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Left Action", TrackballMotionGestureFactory.getInstance().LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newLeftTrackballInputToGameKeyEventAction*(): LeftTrackballInputToGameKeyEventAction =
    result = LeftTrackballInputToGameKeyEventAction()
    initLeftTrackballInputToGameKeyEventAction(result)

when declared(newLeftTrackballInputToGameKeyEventActionHook0):
    newLeftTrackballInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newLeftTrackballInputToGameKeyEventAction()

