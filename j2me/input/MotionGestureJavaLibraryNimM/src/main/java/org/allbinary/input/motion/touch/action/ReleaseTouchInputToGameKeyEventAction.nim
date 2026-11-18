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
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule

type
    ReleaseTouchInputToGameKeyEventAction* = ref object of GameKeyCompleteMotionGestureInputEvent
        NONE*: GameKey

proc newReleaseTouchInputToGameKeyEventAction*(): ReleaseTouchInputToGameKeyEventAction
proc initReleaseTouchInputToGameKeyEventAction*(this: ReleaseTouchInputToGameKeyEventAction)
proc getInstance*(t: typedesc[ReleaseTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.}
method update*(this: ReleaseTouchInputToGameKeyEventAction)
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var ReleaseTouchInputToGameKeyEventAction_instanceValue: JObject
var ReleaseTouchInputToGameKeyEventAction_instanceSet = false
proc instance*(t: typedesc[ReleaseTouchInputToGameKeyEventAction]): JObject =
    if not ReleaseTouchInputToGameKeyEventAction_instanceSet:
        ReleaseTouchInputToGameKeyEventAction_instanceSet = true
        ReleaseTouchInputToGameKeyEventAction_instanceValue = NullUtil.getInstance().NULL_OBJECT
    ReleaseTouchInputToGameKeyEventAction_instanceValue
proc `instance=`*(t: typedesc[ReleaseTouchInputToGameKeyEventAction], value: JObject) =
    ReleaseTouchInputToGameKeyEventAction_instanceSet = true
    ReleaseTouchInputToGameKeyEventAction_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsReleaseTouchInputToGameKeyEventAction(this: ReleaseTouchInputToGameKeyEventAction) =
    this.NONE = GameKeyFactory.getInstance().NONE
    discard

proc getInstance*(t: typedesc[ReleaseTouchInputToGameKeyEventAction]): GameKeyCompleteMotionGestureInputEvent {.discardable.} =
        if ReleaseTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT:
            ReleaseTouchInputToGameKeyEventAction.instance = newReleaseTouchInputToGameKeyEventAction()
        return GameKeyCompleteMotionGestureInputEvent(JObject(ReleaseTouchInputToGameKeyEventAction.instance))

proc initReleaseTouchInputToGameKeyEventAction*(this: ReleaseTouchInputToGameKeyEventAction) =
        initGameKeyCompleteMotionGestureInputEvent(this, "Release Action", TouchMotionGestureFactory.getInstance().RELEASED, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
        this.initFieldsReleaseTouchInputToGameKeyEventAction()
        try:
            this.setGameKey(this.NONE)
            this.setGameKeyEvent(GameKeyEventFactory.getInstance().getInstanceForInput(this, this.NONE))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)

proc newReleaseTouchInputToGameKeyEventAction*(): ReleaseTouchInputToGameKeyEventAction =
    result = ReleaseTouchInputToGameKeyEventAction()
    initReleaseTouchInputToGameKeyEventAction(result)

method update*(this: ReleaseTouchInputToGameKeyEventAction) =
        discard

when declared(newReleaseTouchInputToGameKeyEventActionHook0):
    newReleaseTouchInputToGameKeyEventActionHook0 = proc (): GameKeyCompleteMotionGestureInputEvent = newReleaseTouchInputToGameKeyEventAction()

