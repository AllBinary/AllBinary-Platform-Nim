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
import org/allbinary/input/motion/button/TouchButtonResource as TouchButtonResourceModule
export TouchButtonResourceModule

type
    TouchButtonTurnRightResource* = ref object of TouchButtonResource

proc newTouchButtonTurnRightResource*(): TouchButtonTurnRightResource
proc initTouchButtonTurnRightResource*(this: TouchButtonTurnRightResource)
proc getInstance*(t: typedesc[TouchButtonTurnRightResource]): TouchButtonResource {.discardable.}

var TouchButtonTurnRightResource_instanceValue: TouchButtonResource
var TouchButtonTurnRightResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonTurnRightResource]): TouchButtonResource =
    if not TouchButtonTurnRightResource_instanceSet:
        TouchButtonTurnRightResource_instanceSet = true
        TouchButtonTurnRightResource_instanceValue = newTouchButtonTurnRightResource()
    TouchButtonTurnRightResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonTurnRightResource]): TouchButtonResource {.discardable.} =
        return TouchButtonTurnRightResource.instance

proc initTouchButtonTurnRightResource*(this: TouchButtonTurnRightResource) =
        initTouchButtonResource(this, "/touch_button_turn_right_arrow_64_by_64.png", "/touch_button_turn_right_arrow_hint_64_by_64.png")

proc newTouchButtonTurnRightResource*(): TouchButtonTurnRightResource =
    result = TouchButtonTurnRightResource()
    initTouchButtonTurnRightResource(result)

when declared(newTouchButtonTurnRightResourceHook0):
    newTouchButtonTurnRightResourceHook0 = proc (): TouchButtonResource = newTouchButtonTurnRightResource()

