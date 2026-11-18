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
    TouchButtonFireResource* = ref object of TouchButtonResource

proc newTouchButtonFireResource*(): TouchButtonFireResource
proc initTouchButtonFireResource*(this: TouchButtonFireResource)
proc getInstance*(t: typedesc[TouchButtonFireResource]): TouchButtonResource {.discardable.}

var TouchButtonFireResource_instanceValue: TouchButtonResource
var TouchButtonFireResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonFireResource]): TouchButtonResource =
    if not TouchButtonFireResource_instanceSet:
        TouchButtonFireResource_instanceSet = true
        TouchButtonFireResource_instanceValue = newTouchButtonFireResource()
    TouchButtonFireResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonFireResource]): TouchButtonResource {.discardable.} =
        return TouchButtonFireResource.instance

proc initTouchButtonFireResource*(this: TouchButtonFireResource) =
        initTouchButtonResource(this, "/touch_button_fire_64_by_64.png", "/touch_button_fire_hint_64_by_64.png")

proc newTouchButtonFireResource*(): TouchButtonFireResource =
    result = TouchButtonFireResource()
    initTouchButtonFireResource(result)

when declared(newTouchButtonFireResourceHook0):
    newTouchButtonFireResourceHook0 = proc (): TouchButtonResource = newTouchButtonFireResource()

