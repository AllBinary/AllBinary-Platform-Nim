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
    TouchButtonStrafeRightResource* = ref object of TouchButtonResource

proc newTouchButtonStrafeRightResource*(): TouchButtonStrafeRightResource
proc initTouchButtonStrafeRightResource*(this: TouchButtonStrafeRightResource)
proc getInstance*(t: typedesc[TouchButtonStrafeRightResource]): TouchButtonResource {.discardable.}

var TouchButtonStrafeRightResource_instanceValue: TouchButtonResource
var TouchButtonStrafeRightResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonStrafeRightResource]): TouchButtonResource =
    if not TouchButtonStrafeRightResource_instanceSet:
        TouchButtonStrafeRightResource_instanceSet = true
        TouchButtonStrafeRightResource_instanceValue = newTouchButtonStrafeRightResource()
    TouchButtonStrafeRightResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonStrafeRightResource]): TouchButtonResource {.discardable.} =
        return TouchButtonStrafeRightResource.instance

proc initTouchButtonStrafeRightResource*(this: TouchButtonStrafeRightResource) =
        initTouchButtonResource(this, "/touch_button_strafe_right_arrow_64_by_64.png", "/touch_button_strafe_right_arrow_hint_64_by_64.png")

proc newTouchButtonStrafeRightResource*(): TouchButtonStrafeRightResource =
    result = TouchButtonStrafeRightResource()
    initTouchButtonStrafeRightResource(result)

when declared(newTouchButtonStrafeRightResourceHook0):
    newTouchButtonStrafeRightResourceHook0 = proc (): TouchButtonResource = newTouchButtonStrafeRightResource()

