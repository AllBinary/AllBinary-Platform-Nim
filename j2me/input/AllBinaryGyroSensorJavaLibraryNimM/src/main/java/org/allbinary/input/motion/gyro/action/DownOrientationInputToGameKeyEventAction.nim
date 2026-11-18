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
    DownOrientationInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newDownOrientationInputToGameKeyEventAction*(): DownOrientationInputToGameKeyEventAction
proc initDownOrientationInputToGameKeyEventAction*(this: DownOrientationInputToGameKeyEventAction)
proc getInstance*(t: typedesc[DownOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/gyro/OrientationMotionGestureFactory as OrientationMotionGestureFactoryModule
export OrientationMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var DownOrientationInputToGameKeyEventAction_instanceValue: JObject
var DownOrientationInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[DownOrientationInputToGameKeyEventAction]): JObject =
    if not DownOrientationInputToGameKeyEventAction_instanceSet:
        DownOrientationInputToGameKeyEventAction_instanceSet = true
        DownOrientationInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    DownOrientationInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[DownOrientationInputToGameKeyEventAction], value: JObject) =
    DownOrientationInputToGameKeyEventAction_instanceSet = true
    DownOrientationInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[DownOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if DownOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            DownOrientationInputToGameKeyEventAction.instance = newDownOrientationInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(DownOrientationInputToGameKeyEventAction.instance))

proc initDownOrientationInputToGameKeyEventAction*(this: DownOrientationInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Down Action", OrientationMotionGestureFactory.getInstance().DOWN, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newDownOrientationInputToGameKeyEventAction*(): DownOrientationInputToGameKeyEventAction =
    result = DownOrientationInputToGameKeyEventAction()
    initDownOrientationInputToGameKeyEventAction(result)

when declared(newDownOrientationInputToGameKeyEventActionHook0):
    newDownOrientationInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newDownOrientationInputToGameKeyEventAction()

