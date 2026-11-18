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
    DiagonalUpRightTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newDiagonalUpRightTouchInputToGameKeyEventAction*(): DiagonalUpRightTouchInputToGameKeyEventAction
proc initDiagonalUpRightTouchInputToGameKeyEventAction*(this: DiagonalUpRightTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[DiagonalUpRightTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var DiagonalUpRightTouchInputToGameKeyEventAction_instanceValue: JObject
var DiagonalUpRightTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[DiagonalUpRightTouchInputToGameKeyEventAction]): JObject =
    if not DiagonalUpRightTouchInputToGameKeyEventAction_instanceSet:
        DiagonalUpRightTouchInputToGameKeyEventAction_instanceSet = true
        DiagonalUpRightTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    DiagonalUpRightTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[DiagonalUpRightTouchInputToGameKeyEventAction], value: JObject) =
    DiagonalUpRightTouchInputToGameKeyEventAction_instanceSet = true
    DiagonalUpRightTouchInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[DiagonalUpRightTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if DiagonalUpRightTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            DiagonalUpRightTouchInputToGameKeyEventAction.instance = newDiagonalUpRightTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(DiagonalUpRightTouchInputToGameKeyEventAction.instance))

proc initDiagonalUpRightTouchInputToGameKeyEventAction*(this: DiagonalUpRightTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Diagonal Up Right Action", TouchMotionGestureFactory.getInstance().DIAGONAL_UP_RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newDiagonalUpRightTouchInputToGameKeyEventAction*(): DiagonalUpRightTouchInputToGameKeyEventAction =
    result = DiagonalUpRightTouchInputToGameKeyEventAction()
    initDiagonalUpRightTouchInputToGameKeyEventAction(result)

when declared(newDiagonalUpRightTouchInputToGameKeyEventActionHook0):
    newDiagonalUpRightTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newDiagonalUpRightTouchInputToGameKeyEventAction()

