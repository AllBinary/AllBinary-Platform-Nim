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
    RollLeftOrientationInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newRollLeftOrientationInputToGameKeyEventAction*(): RollLeftOrientationInputToGameKeyEventAction
proc initRollLeftOrientationInputToGameKeyEventAction*(this: RollLeftOrientationInputToGameKeyEventAction)
proc getInstance*(t: typedesc[RollLeftOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/gyro/OrientationMotionGestureFactory as OrientationMotionGestureFactoryModule
export OrientationMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var RollLeftOrientationInputToGameKeyEventAction_instanceValue: JObject
var RollLeftOrientationInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[RollLeftOrientationInputToGameKeyEventAction]): JObject =
    if not RollLeftOrientationInputToGameKeyEventAction_instanceSet:
        RollLeftOrientationInputToGameKeyEventAction_instanceSet = true
        RollLeftOrientationInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    RollLeftOrientationInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[RollLeftOrientationInputToGameKeyEventAction], value: JObject) =
    RollLeftOrientationInputToGameKeyEventAction_instanceSet = true
    RollLeftOrientationInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[RollLeftOrientationInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if RollLeftOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            RollLeftOrientationInputToGameKeyEventAction.instance = newRollLeftOrientationInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(RollLeftOrientationInputToGameKeyEventAction.instance))

proc initRollLeftOrientationInputToGameKeyEventAction*(this: RollLeftOrientationInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Roll Left Action", OrientationMotionGestureFactory.getInstance().ROLL_LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newRollLeftOrientationInputToGameKeyEventAction*(): RollLeftOrientationInputToGameKeyEventAction =
    result = RollLeftOrientationInputToGameKeyEventAction()
    initRollLeftOrientationInputToGameKeyEventAction(result)

when declared(newRollLeftOrientationInputToGameKeyEventActionHook0):
    newRollLeftOrientationInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newRollLeftOrientationInputToGameKeyEventAction()

