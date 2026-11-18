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
# package org.allbinary.input.motion.gesture

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule

type
    TouchMotionGestureFactory* = ref object of JObject
        LEFT*: MotionGestureInput
        RIGHT*: MotionGestureInput
        UP*: MotionGestureInput
        DOWN*: MotionGestureInput
        PRESSED*: MotionGestureInput
        RELEASED*: MotionGestureInput
        DIAGONAL_DOWN_RIGHT*: MotionGestureInput
        DIAGONAL_DOWN_LEFT*: MotionGestureInput
        DIAGONAL_UP_RIGHT*: MotionGestureInput
        DIAGONAL_UP_LEFT*: MotionGestureInput
        SCROLL_UP*: MotionGestureInput
        SCROLL_DOWN*: MotionGestureInput
        NO_MOTION*: MotionGestureInput
        LAST_MOTION*: MotionGestureInput

proc newTouchMotionGestureFactory*(): TouchMotionGestureFactory
proc initTouchMotionGestureFactory*(this: TouchMotionGestureFactory)
proc getInstance*(t: typedesc[TouchMotionGestureFactory]): TouchMotionGestureFactory {.discardable.}
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var TouchMotionGestureFactory_instanceValue: JObject
var TouchMotionGestureFactory_instanceSet = false
proc instance*(t: typedesc[TouchMotionGestureFactory]): JObject =
    if not TouchMotionGestureFactory_instanceSet:
        TouchMotionGestureFactory_instanceSet = true
        TouchMotionGestureFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    TouchMotionGestureFactory_instanceValue
proc `instance=`*(t: typedesc[TouchMotionGestureFactory], value: JObject) =
    TouchMotionGestureFactory_instanceSet = true
    TouchMotionGestureFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsTouchMotionGestureFactory(this: TouchMotionGestureFactory) =
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    discard

proc getInstance*(t: typedesc[TouchMotionGestureFactory]): TouchMotionGestureFactory {.discardable.} =
        if TouchMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            TouchMotionGestureFactory.instance = newTouchMotionGestureFactory()
        return TouchMotionGestureFactory(JObject(TouchMotionGestureFactory.instance))

proc initTouchMotionGestureFactory*(this: TouchMotionGestureFactory) =
        this.initFieldsTouchMotionGestureFactory()
        var MAX: int32 = InputFactory.getInstance().MAX
        this.LEFT = newMotionGestureInput(MAX -% 3, "Left Touch")
        this.RIGHT = newMotionGestureInput(MAX -% 4, "Right Touch")
        this.UP = newMotionGestureInput(MAX -% 5, "Up Touch")
        this.DOWN = newMotionGestureInput(MAX -% 6, "Down Touch")
        this.PRESSED = newMotionGestureInput(MAX -% 7, "Screen Press")
        this.RELEASED = newMotionGestureInput(MAX -% 8, "Released")
        this.DIAGONAL_DOWN_RIGHT = newMotionGestureInput(MAX -% 9, "Diagonal Dn R")
        this.DIAGONAL_DOWN_LEFT = newMotionGestureInput(MAX -% 10, "Diagonal Dn L")
        this.DIAGONAL_UP_RIGHT = newMotionGestureInput(MAX -% 11, "Diagonal Up R")
        this.DIAGONAL_UP_LEFT = newMotionGestureInput(MAX -% 12, "Diagonal Up L")
        this.SCROLL_UP = newMotionGestureInput(MAX -% 13, "Scroll Up")
        this.SCROLL_DOWN = newMotionGestureInput(MAX -% 14, "Scroll Down")
        this.NO_MOTION = newMotionGestureInput(MAX -% 2, "No Motion")
        this.LAST_MOTION = newMotionGestureInput(MAX -% 19, "Last Motion")

proc newTouchMotionGestureFactory*(): TouchMotionGestureFactory =
    result = TouchMotionGestureFactory()
    initTouchMotionGestureFactory(result)

