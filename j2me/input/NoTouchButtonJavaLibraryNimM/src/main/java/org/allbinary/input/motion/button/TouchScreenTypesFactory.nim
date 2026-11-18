#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/button/TouchScreenType as TouchScreenTypeModule
export TouchScreenTypeModule

type
    TouchScreenTypesFactory* = ref object of JObject
        FINGER*: TouchScreenType
        NOTOUCH*: TouchScreenType
        STYLUS*: TouchScreenType
        UNDEFINED*: TouchScreenType

proc newTouchScreenTypesFactory*(): TouchScreenTypesFactory
proc getInstance*(t: typedesc[TouchScreenTypesFactory]): TouchScreenTypesFactory {.discardable.}

var TouchScreenTypesFactory_instanceValue: TouchScreenTypesFactory
var TouchScreenTypesFactory_instanceSet = false
proc instance*(t: typedesc[TouchScreenTypesFactory]): TouchScreenTypesFactory =
    if not TouchScreenTypesFactory_instanceSet:
        TouchScreenTypesFactory_instanceSet = true
        TouchScreenTypesFactory_instanceValue = newTouchScreenTypesFactory()
    TouchScreenTypesFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsTouchScreenTypesFactory(this: TouchScreenTypesFactory) =
    this.FINGER = newTouchScreenType("Finger")
    this.NOTOUCH = newTouchScreenType("No Touch")
    this.STYLUS = newTouchScreenType("Stylus")
    this.UNDEFINED = newTouchScreenType("Undefined")
    discard

proc initTouchScreenTypesFactory*(this: TouchScreenTypesFactory) =
    this.initFieldsTouchScreenTypesFactory()

proc newTouchScreenTypesFactory*(): TouchScreenTypesFactory =
    result = TouchScreenTypesFactory()
    initTouchScreenTypesFactory(result)

proc getInstance*(t: typedesc[TouchScreenTypesFactory]): TouchScreenTypesFactory {.discardable.} =
        return TouchScreenTypesFactory.instance

