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
    DownTrackballInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newDownTrackballInputToGameKeyEventAction*(): DownTrackballInputToGameKeyEventAction
proc initDownTrackballInputToGameKeyEventAction*(this: DownTrackballInputToGameKeyEventAction)
proc getInstance*(t: typedesc[DownTrackballInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TrackballMotionGestureFactory as TrackballMotionGestureFactoryModule
export TrackballMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var DownTrackballInputToGameKeyEventAction_instanceValue: JObject
var DownTrackballInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[DownTrackballInputToGameKeyEventAction]): JObject =
    if not DownTrackballInputToGameKeyEventAction_instanceSet:
        DownTrackballInputToGameKeyEventAction_instanceSet = true
        DownTrackballInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    DownTrackballInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[DownTrackballInputToGameKeyEventAction], value: JObject) =
    DownTrackballInputToGameKeyEventAction_instanceSet = true
    DownTrackballInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[DownTrackballInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if DownTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            DownTrackballInputToGameKeyEventAction.instance = newDownTrackballInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(DownTrackballInputToGameKeyEventAction.instance))

proc initDownTrackballInputToGameKeyEventAction*(this: DownTrackballInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Down Action", TrackballMotionGestureFactory.getInstance().DOWN, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newDownTrackballInputToGameKeyEventAction*(): DownTrackballInputToGameKeyEventAction =
    result = DownTrackballInputToGameKeyEventAction()
    initDownTrackballInputToGameKeyEventAction(result)

when declared(newDownTrackballInputToGameKeyEventActionHook0):
    newDownTrackballInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newDownTrackballInputToGameKeyEventAction()

