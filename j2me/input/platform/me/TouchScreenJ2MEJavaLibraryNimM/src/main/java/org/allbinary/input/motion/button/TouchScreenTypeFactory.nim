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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java

type
    TouchScreenTypeFactory* = ref object of JObject

proc newTouchScreenTypeFactory*(): TouchScreenTypeFactory
proc getInstance*(t: typedesc[TouchScreenTypeFactory]): TouchScreenTypeFactory {.discardable.}
method TouchScreenTypeFactory*(this: TouchScreenTypeFactory) {.base.}
import org/allbinary/input/motion/button/TouchScreenFactory as TouchScreenFactoryModule
export TouchScreenFactoryModule

var TouchScreenTypeFactory_instanceValue: TouchScreenTypeFactory
var TouchScreenTypeFactory_instanceSet = false
proc instance*(t: typedesc[TouchScreenTypeFactory]): TouchScreenTypeFactory =
    if not TouchScreenTypeFactory_instanceSet:
        TouchScreenTypeFactory_instanceSet = true
        TouchScreenTypeFactory_instanceValue = newTouchScreenTypeFactory()
    TouchScreenTypeFactory_instanceValue

proc initTouchScreenTypeFactory*(this: TouchScreenTypeFactory) =
    discard

proc newTouchScreenTypeFactory*(): TouchScreenTypeFactory =
    result = TouchScreenTypeFactory()
    initTouchScreenTypeFactory(result)

proc getInstance*(t: typedesc[TouchScreenTypeFactory]): TouchScreenTypeFactory {.discardable.} =
        return TouchScreenTypeFactory.instance

method TouchScreenTypeFactory*(this: TouchScreenTypeFactory) {.base.} =
        let touchScreenFactory: TouchScreenFactory = TouchScreenFactory.getInstance()
        touchScreenFactory.setTouch(true)

