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
    LeftOrientationInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newLeftOrientationInputToGameKeyEventAction*(): LeftOrientationInputToGameKeyEventAction
proc initLeftOrientationInputToGameKeyEventAction*(this: LeftOrientationInputToGameKeyEventAction)
proc getInstance*(t: typedesc[LeftOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/gyro/OrientationMotionGestureFactory as OrientationMotionGestureFactoryModule
export OrientationMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var LeftOrientationInputToGameKeyEventAction_instanceValue: JObject
var LeftOrientationInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[LeftOrientationInputToGameKeyEventAction]): JObject =
    if not LeftOrientationInputToGameKeyEventAction_instanceSet:
        LeftOrientationInputToGameKeyEventAction_instanceSet = true
        LeftOrientationInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    LeftOrientationInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[LeftOrientationInputToGameKeyEventAction], value: JObject) =
    LeftOrientationInputToGameKeyEventAction_instanceSet = true
    LeftOrientationInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[LeftOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if LeftOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            LeftOrientationInputToGameKeyEventAction.instance = newLeftOrientationInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(LeftOrientationInputToGameKeyEventAction.instance))

proc initLeftOrientationInputToGameKeyEventAction*(this: LeftOrientationInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Left Action", OrientationMotionGestureFactory.getInstance().LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newLeftOrientationInputToGameKeyEventAction*(): LeftOrientationInputToGameKeyEventAction =
    result = LeftOrientationInputToGameKeyEventAction()
    initLeftOrientationInputToGameKeyEventAction(result)

when declared(newLeftOrientationInputToGameKeyEventActionHook0):
    newLeftOrientationInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newLeftOrientationInputToGameKeyEventAction()

