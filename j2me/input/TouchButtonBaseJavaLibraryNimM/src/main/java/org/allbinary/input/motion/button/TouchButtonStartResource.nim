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
    TouchButtonStartResource* = ref object of TouchButtonResource

proc newTouchButtonStartResource*(): TouchButtonStartResource
proc initTouchButtonStartResource*(this: TouchButtonStartResource)
proc getInstance*(t: typedesc[TouchButtonStartResource]): TouchButtonResource {.discardable.}

var TouchButtonStartResource_instanceValue: TouchButtonResource
var TouchButtonStartResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonStartResource]): TouchButtonResource =
    if not TouchButtonStartResource_instanceSet:
        TouchButtonStartResource_instanceSet = true
        TouchButtonStartResource_instanceValue = newTouchButtonStartResource()
    TouchButtonStartResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonStartResource]): TouchButtonResource {.discardable.} =
        return TouchButtonStartResource.instance

proc initTouchButtonStartResource*(this: TouchButtonStartResource) =
        initTouchButtonResource(this, "/touch_button_start_64_by_64.png", "/touch_button_start_hint_64_by_64.png")

proc newTouchButtonStartResource*(): TouchButtonStartResource =
    result = TouchButtonStartResource()
    initTouchButtonStartResource(result)

when declared(newTouchButtonStartResourceHook0):
    newTouchButtonStartResourceHook0 = proc (): TouchButtonResource = newTouchButtonStartResource()

