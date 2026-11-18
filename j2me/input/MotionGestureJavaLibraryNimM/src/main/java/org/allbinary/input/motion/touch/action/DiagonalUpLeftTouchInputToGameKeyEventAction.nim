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
    DiagonalUpLeftTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent

proc newDiagonalUpLeftTouchInputToGameKeyEventAction*(): DiagonalUpLeftTouchInputToGameKeyEventAction
proc initDiagonalUpLeftTouchInputToGameKeyEventAction*(this: DiagonalUpLeftTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[DiagonalUpLeftTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var DiagonalUpLeftTouchInputToGameKeyEventAction_instanceValue: JObject
var DiagonalUpLeftTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[DiagonalUpLeftTouchInputToGameKeyEventAction]): JObject =
    if not DiagonalUpLeftTouchInputToGameKeyEventAction_instanceSet:
        DiagonalUpLeftTouchInputToGameKeyEventAction_instanceSet = true
        DiagonalUpLeftTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    DiagonalUpLeftTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[DiagonalUpLeftTouchInputToGameKeyEventAction], value: JObject) =
    DiagonalUpLeftTouchInputToGameKeyEventAction_instanceSet = true
    DiagonalUpLeftTouchInputToGameKeyEventAction_instanceValue = value

proc getInstance*(t: typedesc[DiagonalUpLeftTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if DiagonalUpLeftTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            DiagonalUpLeftTouchInputToGameKeyEventAction.instance = newDiagonalUpLeftTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(DiagonalUpLeftTouchInputToGameKeyEventAction.instance))

proc initDiagonalUpLeftTouchInputToGameKeyEventAction*(this: DiagonalUpLeftTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Diagonal Up Left Action", TouchMotionGestureFactory.getInstance().DIAGONAL_UP_LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())

proc newDiagonalUpLeftTouchInputToGameKeyEventAction*(): DiagonalUpLeftTouchInputToGameKeyEventAction =
    result = DiagonalUpLeftTouchInputToGameKeyEventAction()
    initDiagonalUpLeftTouchInputToGameKeyEventAction(result)

when declared(newDiagonalUpLeftTouchInputToGameKeyEventActionHook0):
    newDiagonalUpLeftTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newDiagonalUpLeftTouchInputToGameKeyEventAction()

