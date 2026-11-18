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
    TouchButtonReverseResource* = ref object of TouchButtonResource

proc newTouchButtonReverseResource*(): TouchButtonReverseResource
proc initTouchButtonReverseResource*(this: TouchButtonReverseResource)
proc getInstance*(t: typedesc[TouchButtonReverseResource]): TouchButtonResource {.discardable.}

var TouchButtonReverseResource_instanceValue: TouchButtonResource
var TouchButtonReverseResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonReverseResource]): TouchButtonResource =
    if not TouchButtonReverseResource_instanceSet:
        TouchButtonReverseResource_instanceSet = true
        TouchButtonReverseResource_instanceValue = newTouchButtonReverseResource()
    TouchButtonReverseResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonReverseResource]): TouchButtonResource {.discardable.} =
        return TouchButtonReverseResource.instance

proc initTouchButtonReverseResource*(this: TouchButtonReverseResource) =
        initTouchButtonResource(this, "/touch_button_reverse_64_by_64.png", "/touch_button_reverse_hint_64_by_64.png")

proc newTouchButtonReverseResource*(): TouchButtonReverseResource =
    result = TouchButtonReverseResource()
    initTouchButtonReverseResource(result)

when declared(newTouchButtonReverseResourceHook0):
    newTouchButtonReverseResourceHook0 = proc (): TouchButtonResource = newTouchButtonReverseResource()

