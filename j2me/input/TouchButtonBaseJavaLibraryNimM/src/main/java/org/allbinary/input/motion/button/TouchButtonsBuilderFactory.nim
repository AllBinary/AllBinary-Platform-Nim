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
import org/allbinary/input/motion/button/BaseTouchInput as BaseTouchInputModule
export BaseTouchInputModule

type
    TouchButtonsBuilderFactory* = ref object of JObject

proc newTouchButtonsBuilderFactory*(): TouchButtonsBuilderFactory
method getInstance*(this: TouchButtonsBuilderFactory): BaseTouchInput {.base, discardable.}
import org/allbinary/input/motion/button/NoButtonsTouchInputFactory as NoButtonsTouchInputFactoryModule
export NoButtonsTouchInputFactoryModule

var TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYValue: TouchButtonsBuilderFactory
var TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYSet = false
proc NO_TOUCH_BUTTON_BUILDER_FACTORY*(t: typedesc[TouchButtonsBuilderFactory]): TouchButtonsBuilderFactory =
    if not TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYSet:
        TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYSet = true
        TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYValue = newTouchButtonsBuilderFactory()
    TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYValue

proc initTouchButtonsBuilderFactory*(this: TouchButtonsBuilderFactory) =
    discard

proc newTouchButtonsBuilderFactory*(): TouchButtonsBuilderFactory =
    result = TouchButtonsBuilderFactory()
    initTouchButtonsBuilderFactory(result)

method getInstance*(this: TouchButtonsBuilderFactory): BaseTouchInput {.base, discardable.} =
        return NoButtonsTouchInputFactory.getInstance()

