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
    UpOrientationInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newUpOrientationInputToGameKeyEventAction*(): UpOrientationInputToGameKeyEventAction
proc initUpOrientationInputToGameKeyEventAction*(this: UpOrientationInputToGameKeyEventAction)
proc getInstance*(t: typedesc[UpOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/gyro/OrientationMotionGestureFactory as OrientationMotionGestureFactoryModule
export OrientationMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var UpOrientationInputToGameKeyEventAction_instanceValue: JObject
var UpOrientationInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[UpOrientationInputToGameKeyEventAction]): JObject =
    if not UpOrientationInputToGameKeyEventAction_instanceSet:
        UpOrientationInputToGameKeyEventAction_instanceSet = true
        UpOrientationInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    UpOrientationInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[UpOrientationInputToGameKeyEventAction], value: JObject) =
    UpOrientationInputToGameKeyEventAction_instanceSet = true
    UpOrientationInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[UpOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if UpOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            UpOrientationInputToGameKeyEventAction.instance = newUpOrientationInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(UpOrientationInputToGameKeyEventAction.instance))

proc initUpOrientationInputToGameKeyEventAction*(this: UpOrientationInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Up Action", OrientationMotionGestureFactory.getInstance().UP, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newUpOrientationInputToGameKeyEventAction*(): UpOrientationInputToGameKeyEventAction =
    result = UpOrientationInputToGameKeyEventAction()
    initUpOrientationInputToGameKeyEventAction(result)

when declared(newUpOrientationInputToGameKeyEventActionHook0):
    newUpOrientationInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newUpOrientationInputToGameKeyEventAction()

