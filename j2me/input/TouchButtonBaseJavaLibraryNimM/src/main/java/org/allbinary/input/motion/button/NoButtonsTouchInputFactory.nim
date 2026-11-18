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
    NoButtonsTouchInputFactory* = ref object of JObject

proc newNoButtonsTouchInputFactory*(): NoButtonsTouchInputFactory
proc getInstance*(t: typedesc[NoButtonsTouchInputFactory]): BaseTouchInput {.discardable.}

var NoButtonsTouchInputFactory_instanceValue: BaseTouchInput
var NoButtonsTouchInputFactory_instanceSet = false
proc instance*(t: typedesc[NoButtonsTouchInputFactory]): BaseTouchInput =
    if not NoButtonsTouchInputFactory_instanceSet:
        NoButtonsTouchInputFactory_instanceSet = true
        NoButtonsTouchInputFactory_instanceValue = newBaseTouchInput()
    NoButtonsTouchInputFactory_instanceValue

proc initNoButtonsTouchInputFactory*(this: NoButtonsTouchInputFactory) =
    discard

proc newNoButtonsTouchInputFactory*(): NoButtonsTouchInputFactory =
    result = NoButtonsTouchInputFactory()
    initNoButtonsTouchInputFactory(result)

proc getInstance*(t: typedesc[NoButtonsTouchInputFactory]): BaseTouchInput {.discardable.} =
        return NoButtonsTouchInputFactory.instance

