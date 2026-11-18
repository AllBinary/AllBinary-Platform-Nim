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
    DiagonalDownRightTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newDiagonalDownRightTouchInputToGameKeyEventAction*(): DiagonalDownRightTouchInputToGameKeyEventAction
proc initDiagonalDownRightTouchInputToGameKeyEventAction*(this: DiagonalDownRightTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[DiagonalDownRightTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var DiagonalDownRightTouchInputToGameKeyEventAction_instanceValue: JObject
var DiagonalDownRightTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[DiagonalDownRightTouchInputToGameKeyEventAction]): JObject =
    if not DiagonalDownRightTouchInputToGameKeyEventAction_instanceSet:
        DiagonalDownRightTouchInputToGameKeyEventAction_instanceSet = true
        DiagonalDownRightTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    DiagonalDownRightTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[DiagonalDownRightTouchInputToGameKeyEventAction], value: JObject) =
    DiagonalDownRightTouchInputToGameKeyEventAction_instanceSet = true
    DiagonalDownRightTouchInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[DiagonalDownRightTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if DiagonalDownRightTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            DiagonalDownRightTouchInputToGameKeyEventAction.instance = newDiagonalDownRightTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(DiagonalDownRightTouchInputToGameKeyEventAction.instance))

proc initDiagonalDownRightTouchInputToGameKeyEventAction*(this: DiagonalDownRightTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Diagonal Down Right Action", TouchMotionGestureFactory.getInstance().DIAGONAL_DOWN_RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newDiagonalDownRightTouchInputToGameKeyEventAction*(): DiagonalDownRightTouchInputToGameKeyEventAction =
    result = DiagonalDownRightTouchInputToGameKeyEventAction()
    initDiagonalDownRightTouchInputToGameKeyEventAction(result)

when declared(newDiagonalDownRightTouchInputToGameKeyEventActionHook0):
    newDiagonalDownRightTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newDiagonalDownRightTouchInputToGameKeyEventAction()

