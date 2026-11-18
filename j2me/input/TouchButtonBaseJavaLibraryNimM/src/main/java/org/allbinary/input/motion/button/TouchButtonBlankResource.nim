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
    TouchButtonBlankResource* = ref object of TouchButtonResource

proc newTouchButtonBlankResource*(): TouchButtonBlankResource
proc initTouchButtonBlankResource*(this: TouchButtonBlankResource)
proc getInstance*(t: typedesc[TouchButtonBlankResource]): TouchButtonResource {.discardable.}

var TouchButtonBlankResource_instanceValue: TouchButtonResource
var TouchButtonBlankResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonBlankResource]): TouchButtonResource =
    if not TouchButtonBlankResource_instanceSet:
        TouchButtonBlankResource_instanceSet = true
        TouchButtonBlankResource_instanceValue = newTouchButtonBlankResource()
    TouchButtonBlankResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonBlankResource]): TouchButtonResource {.discardable.} =
        return TouchButtonBlankResource.instance

proc initTouchButtonBlankResource*(this: TouchButtonBlankResource) =
        initTouchButtonResource(this, "/touch_button_64_by_64.png", "/touch_button_hint_64_by_64.png")

proc newTouchButtonBlankResource*(): TouchButtonBlankResource =
    result = TouchButtonBlankResource()
    initTouchButtonBlankResource(result)

when declared(newTouchButtonBlankResourceHook0):
    newTouchButtonBlankResourceHook0 = proc (): TouchButtonResource = newTouchButtonBlankResource()

