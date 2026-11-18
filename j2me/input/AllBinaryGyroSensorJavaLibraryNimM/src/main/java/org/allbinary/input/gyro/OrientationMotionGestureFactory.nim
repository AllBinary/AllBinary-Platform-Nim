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
# package org.allbinary.input.gyro

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule

type
    OrientationMotionGestureFactory* = ref object of JObject
        LEFT*: MotionGestureInput
        RIGHT*: MotionGestureInput
        UP*: MotionGestureInput
        DOWN*: MotionGestureInput
        ROLL_LEFT*: MotionGestureInput
        ROLL_RIGHT*: MotionGestureInput

proc newOrientationMotionGestureFactory*(): OrientationMotionGestureFactory
proc initOrientationMotionGestureFactory*(this: OrientationMotionGestureFactory)
proc getInstance*(t: typedesc[OrientationMotionGestureFactory]): OrientationMotionGestureFactory {.discardable.}
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var OrientationMotionGestureFactory_instanceValue: JObject
var OrientationMotionGestureFactory_instanceSet = false
proc instance*(t: typedesc[OrientationMotionGestureFactory]): JObject =
    if not OrientationMotionGestureFactory_instanceSet:
        OrientationMotionGestureFactory_instanceSet = true
        OrientationMotionGestureFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    OrientationMotionGestureFactory_instanceValue
proc `instance=`*(t: typedesc[OrientationMotionGestureFactory], value: JObject) =
    OrientationMotionGestureFactory_instanceSet = true
    OrientationMotionGestureFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsOrientationMotionGestureFactory(this: OrientationMotionGestureFactory) =
    
    
    
    
    
    
    discard

proc getInstance*(t: typedesc[OrientationMotionGestureFactory]): OrientationMotionGestureFactory {.discardable.} =
        if OrientationMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            OrientationMotionGestureFactory.instance = newOrientationMotionGestureFactory()
        return OrientationMotionGestureFactory(JObject(OrientationMotionGestureFactory.instance))

proc initOrientationMotionGestureFactory*(this: OrientationMotionGestureFactory) =
        this.initFieldsOrientationMotionGestureFactory()
        var MAX: int32 = InputFactory.getInstance().MAX
        this.LEFT = newMotionGestureInput(MAX -% 20, "Left Orient")
        this.RIGHT = newMotionGestureInput(MAX -% 21, "Right Orient")
        this.UP = newMotionGestureInput(MAX -% 22, "Up Orient")
        this.DOWN = newMotionGestureInput(MAX -% 23, "Down Orient")
        this.ROLL_LEFT = newMotionGestureInput(MAX -% 24, "Roll Left")
        this.ROLL_RIGHT = newMotionGestureInput(MAX -% 25, "Roll Right")

proc newOrientationMotionGestureFactory*(): OrientationMotionGestureFactory =
    result = OrientationMotionGestureFactory()
    initOrientationMotionGestureFactory(result)

