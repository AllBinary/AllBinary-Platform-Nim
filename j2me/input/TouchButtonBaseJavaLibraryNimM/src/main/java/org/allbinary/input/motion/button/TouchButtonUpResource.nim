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
    TouchButtonUpResource* = ref object of TouchButtonResource

proc newTouchButtonUpResource*(): TouchButtonUpResource
proc initTouchButtonUpResource*(this: TouchButtonUpResource)
proc getInstance*(t: typedesc[TouchButtonUpResource]): TouchButtonResource {.discardable.}

var TouchButtonUpResource_instanceValue: TouchButtonResource
var TouchButtonUpResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonUpResource]): TouchButtonResource =
    if not TouchButtonUpResource_instanceSet:
        TouchButtonUpResource_instanceSet = true
        TouchButtonUpResource_instanceValue = newTouchButtonUpResource()
    TouchButtonUpResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonUpResource]): TouchButtonResource {.discardable.} =
        return TouchButtonUpResource.instance

proc initTouchButtonUpResource*(this: TouchButtonUpResource) =
        initTouchButtonResource(this, "/touch_button_up_arrow_64_by_64.png", "/touch_button_up_arrow_hint_64_by_64.png")

proc newTouchButtonUpResource*(): TouchButtonUpResource =
    result = TouchButtonUpResource()
    initTouchButtonUpResource(result)

when declared(newTouchButtonUpResourceHook0):
    newTouchButtonUpResourceHook0 = proc (): TouchButtonResource = newTouchButtonUpResource()

