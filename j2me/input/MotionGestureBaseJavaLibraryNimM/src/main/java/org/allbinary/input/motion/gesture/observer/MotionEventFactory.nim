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
# package org.allbinary.input.motion.gesture.observer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface as AllBinaryEventObjectFactoryInterfaceModule
export AllBinaryEventObjectFactoryInterfaceModule

type
    MotionEventFactory* = ref object of AllBinaryEventObjectFactoryInterface
        source*: JObject
        id*: int32

proc newMotionEventFactory*(source: JObject, id: int32): MotionEventFactory
proc initMotionEventFactory*(this: MotionEventFactory, source: JObject, id: int32)
method getInstance*(this: MotionEventFactory): AllBinaryEventObject {.discardable.}
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

var MotionEventFactory_indexValue: int32
var MotionEventFactory_indexSet = false
proc index*(t: typedesc[MotionEventFactory]): int32 =
    if not MotionEventFactory_indexSet:
        MotionEventFactory_indexSet = true
        MotionEventFactory_indexValue = 0
    MotionEventFactory_indexValue
proc `index=`*(t: typedesc[MotionEventFactory], value: int32) =
    MotionEventFactory_indexSet = true
    MotionEventFactory_indexValue = value

# Java field initializers run after the base initializer
proc initFieldsMotionEventFactory(this: MotionEventFactory) =
    
    
    discard

proc initMotionEventFactory*(this: MotionEventFactory, source: JObject, id: int32) =
        this.initFieldsMotionEventFactory()
        this.source = source
        this.id = id
        MotionEventFactory.index = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()

proc newMotionEventFactory*(source: JObject, id: int32): MotionEventFactory =
    result = MotionEventFactory()
    initMotionEventFactory(result, source, id)

method getInstance*(this: MotionEventFactory): AllBinaryEventObject {.discardable.} =
        let inputFactory: InputFactory = InputFactory.getInstance()
        let input: Input = inputFactory.getInstanceById(jPostIncrement(MotionEventFactory.index))
        if input == inputFactory.NO_INPUT:
            return newMotionGestureEvent(this.source, this.id, MotionGestureInput(JObject(TouchMotionGestureFactory.getInstance().NO_MOTION)))
        else:
            return newMotionGestureEvent(this.source, this.id, MotionGestureInput(JObject(input)))

