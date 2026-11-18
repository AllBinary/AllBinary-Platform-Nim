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
    TouchButtonDownResource* = ref object of TouchButtonResource

proc newTouchButtonDownResource*(): TouchButtonDownResource
proc initTouchButtonDownResource*(this: TouchButtonDownResource)
proc getInstance*(t: typedesc[TouchButtonDownResource]): TouchButtonResource {.discardable.}

var TouchButtonDownResource_instanceValue: TouchButtonResource
var TouchButtonDownResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonDownResource]): TouchButtonResource =
    if not TouchButtonDownResource_instanceSet:
        TouchButtonDownResource_instanceSet = true
        TouchButtonDownResource_instanceValue = newTouchButtonDownResource()
    TouchButtonDownResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonDownResource]): TouchButtonResource {.discardable.} =
        return TouchButtonDownResource.instance

proc initTouchButtonDownResource*(this: TouchButtonDownResource) =
        initTouchButtonResource(this, "/touch_button_down_arrow_64_by_64.png", "/touch_button_down_arrow_hint_64_by_64.png")

proc newTouchButtonDownResource*(): TouchButtonDownResource =
    result = TouchButtonDownResource()
    initTouchButtonDownResource(result)

when declared(newTouchButtonDownResourceHook0):
    newTouchButtonDownResourceHook0 = proc (): TouchButtonResource = newTouchButtonDownResource()

