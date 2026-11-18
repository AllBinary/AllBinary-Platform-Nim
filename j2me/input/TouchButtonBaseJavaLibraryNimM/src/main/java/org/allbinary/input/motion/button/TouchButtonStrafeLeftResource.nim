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
    TouchButtonStrafeLeftResource* = ref object of TouchButtonResource

proc newTouchButtonStrafeLeftResource*(): TouchButtonStrafeLeftResource
proc initTouchButtonStrafeLeftResource*(this: TouchButtonStrafeLeftResource)
proc getInstance*(t: typedesc[TouchButtonStrafeLeftResource]): TouchButtonResource {.discardable.}

var TouchButtonStrafeLeftResource_instanceValue: TouchButtonResource
var TouchButtonStrafeLeftResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonStrafeLeftResource]): TouchButtonResource =
    if not TouchButtonStrafeLeftResource_instanceSet:
        TouchButtonStrafeLeftResource_instanceSet = true
        TouchButtonStrafeLeftResource_instanceValue = newTouchButtonStrafeLeftResource()
    TouchButtonStrafeLeftResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonStrafeLeftResource]): TouchButtonResource {.discardable.} =
        return TouchButtonStrafeLeftResource.instance

proc initTouchButtonStrafeLeftResource*(this: TouchButtonStrafeLeftResource) =
        initTouchButtonResource(this, "/touch_button_strafe_left_arrow_64_by_64.png", "/touch_button_strafe_left_arrow_hint_64_by_64.png")

proc newTouchButtonStrafeLeftResource*(): TouchButtonStrafeLeftResource =
    result = TouchButtonStrafeLeftResource()
    initTouchButtonStrafeLeftResource(result)

when declared(newTouchButtonStrafeLeftResourceHook0):
    newTouchButtonStrafeLeftResourceHook0 = proc (): TouchButtonResource = newTouchButtonStrafeLeftResource()

