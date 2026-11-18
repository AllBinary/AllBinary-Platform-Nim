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
    DiagonalDownLeftTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newDiagonalDownLeftTouchInputToGameKeyEventAction*(): DiagonalDownLeftTouchInputToGameKeyEventAction
proc initDiagonalDownLeftTouchInputToGameKeyEventAction*(this: DiagonalDownLeftTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[DiagonalDownLeftTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var DiagonalDownLeftTouchInputToGameKeyEventAction_instanceValue: JObject
var DiagonalDownLeftTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[DiagonalDownLeftTouchInputToGameKeyEventAction]): JObject =
    if not DiagonalDownLeftTouchInputToGameKeyEventAction_instanceSet:
        DiagonalDownLeftTouchInputToGameKeyEventAction_instanceSet = true
        DiagonalDownLeftTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    DiagonalDownLeftTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[DiagonalDownLeftTouchInputToGameKeyEventAction], value: JObject) =
    DiagonalDownLeftTouchInputToGameKeyEventAction_instanceSet = true
    DiagonalDownLeftTouchInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[DiagonalDownLeftTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if DiagonalDownLeftTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            DiagonalDownLeftTouchInputToGameKeyEventAction.instance = newDiagonalDownLeftTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(DiagonalDownLeftTouchInputToGameKeyEventAction.instance))

proc initDiagonalDownLeftTouchInputToGameKeyEventAction*(this: DiagonalDownLeftTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Diagonal Down Left Action", TouchMotionGestureFactory.getInstance().DIAGONAL_DOWN_LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newDiagonalDownLeftTouchInputToGameKeyEventAction*(): DiagonalDownLeftTouchInputToGameKeyEventAction =
    result = DiagonalDownLeftTouchInputToGameKeyEventAction()
    initDiagonalDownLeftTouchInputToGameKeyEventAction(result)

when declared(newDiagonalDownLeftTouchInputToGameKeyEventActionHook0):
    newDiagonalDownLeftTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newDiagonalDownLeftTouchInputToGameKeyEventAction()

