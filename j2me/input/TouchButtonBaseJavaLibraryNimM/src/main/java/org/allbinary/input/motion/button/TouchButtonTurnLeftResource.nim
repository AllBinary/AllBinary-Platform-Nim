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
    TouchButtonTurnLeftResource* = ref object of TouchButtonResource

proc newTouchButtonTurnLeftResource*(): TouchButtonTurnLeftResource
proc initTouchButtonTurnLeftResource*(this: TouchButtonTurnLeftResource)
proc getInstance*(t: typedesc[TouchButtonTurnLeftResource]): TouchButtonResource {.discardable.}

var TouchButtonTurnLeftResource_instanceValue: TouchButtonResource
var TouchButtonTurnLeftResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonTurnLeftResource]): TouchButtonResource =
    if not TouchButtonTurnLeftResource_instanceSet:
        TouchButtonTurnLeftResource_instanceSet = true
        TouchButtonTurnLeftResource_instanceValue = newTouchButtonTurnLeftResource()
    TouchButtonTurnLeftResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonTurnLeftResource]): TouchButtonResource {.discardable.} =
        return TouchButtonTurnLeftResource.instance

proc initTouchButtonTurnLeftResource*(this: TouchButtonTurnLeftResource) =
        initTouchButtonResource(this, "/touch_button_turn_left_arrow_64_by_64.png", "/touch_button_turn_left_arrow_hint_64_by_64.png")

proc newTouchButtonTurnLeftResource*(): TouchButtonTurnLeftResource =
    result = TouchButtonTurnLeftResource()
    initTouchButtonTurnLeftResource(result)

when declared(newTouchButtonTurnLeftResourceHook0):
    newTouchButtonTurnLeftResourceHook0 = proc (): TouchButtonResource = newTouchButtonTurnLeftResource()

