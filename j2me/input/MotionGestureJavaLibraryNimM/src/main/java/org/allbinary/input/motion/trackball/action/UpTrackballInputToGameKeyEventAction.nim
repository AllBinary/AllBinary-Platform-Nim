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
    UpTrackballInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newUpTrackballInputToGameKeyEventAction*(): UpTrackballInputToGameKeyEventAction
proc initUpTrackballInputToGameKeyEventAction*(this: UpTrackballInputToGameKeyEventAction)
proc getInstance*(t: typedesc[UpTrackballInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TrackballMotionGestureFactory as TrackballMotionGestureFactoryModule
export TrackballMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var UpTrackballInputToGameKeyEventAction_instanceValue: JObject
var UpTrackballInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[UpTrackballInputToGameKeyEventAction]): JObject =
    if not UpTrackballInputToGameKeyEventAction_instanceSet:
        UpTrackballInputToGameKeyEventAction_instanceSet = true
        UpTrackballInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    UpTrackballInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[UpTrackballInputToGameKeyEventAction], value: JObject) =
    UpTrackballInputToGameKeyEventAction_instanceSet = true
    UpTrackballInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[UpTrackballInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if UpTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            UpTrackballInputToGameKeyEventAction.instance = newUpTrackballInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(UpTrackballInputToGameKeyEventAction.instance))

proc initUpTrackballInputToGameKeyEventAction*(this: UpTrackballInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Up Action", TrackballMotionGestureFactory.getInstance().UP, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newUpTrackballInputToGameKeyEventAction*(): UpTrackballInputToGameKeyEventAction =
    result = UpTrackballInputToGameKeyEventAction()
    initUpTrackballInputToGameKeyEventAction(result)

when declared(newUpTrackballInputToGameKeyEventActionHook0):
    newUpTrackballInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newUpTrackballInputToGameKeyEventAction()

