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
# package org.allbinary.game.input.mapping

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/mapping/event/InputMappingEvent as InputMappingEventModule
export InputMappingEventModule
import org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface as InputMappingEventListenerInterfaceModule
export InputMappingEventListenerInterfaceModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    MotionInputMappingEventListener* = ref object of InputMappingEventListenerInterface

proc newMotionInputMappingEventListener*(): MotionInputMappingEventListener
method onEvent*(this: MotionInputMappingEventListener, eventObject: AllBinaryEventObject)
method onInputMappingEvent*(this: MotionInputMappingEventListener, inputMappingEvent: InputMappingEvent)
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory as GameKeyCompleteMotionGestureInputEventFactoryModule
export GameKeyCompleteMotionGestureInputEventFactoryModule
import org/allbinary/input/motion/button/BasicTouchInputFactory as BasicTouchInputFactoryModule
export BasicTouchInputFactoryModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule


proc initMotionInputMappingEventListener*(this: MotionInputMappingEventListener) =
    discard

proc newMotionInputMappingEventListener*(): MotionInputMappingEventListener =
    result = MotionInputMappingEventListener()
    initMotionInputMappingEventListener(result)

method onEvent*(this: MotionInputMappingEventListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onInputMappingEvent*(this: MotionInputMappingEventListener, inputMappingEvent: InputMappingEvent) =
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().updateAll()
        BasicTouchInputFactory.getInstance().updateAll(inputMappingEvent.getInputToGameKeyMapping())

