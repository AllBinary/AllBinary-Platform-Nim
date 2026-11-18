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
    TouchButtonGenericActionResource* = ref object of TouchButtonResource

proc newTouchButtonGenericActionResource*(): TouchButtonGenericActionResource
proc initTouchButtonGenericActionResource*(this: TouchButtonGenericActionResource)
proc getInstance*(t: typedesc[TouchButtonGenericActionResource]): TouchButtonResource {.discardable.}

var TouchButtonGenericActionResource_instanceValue: TouchButtonResource
var TouchButtonGenericActionResource_instanceSet = false
proc instance*(t: typedesc[TouchButtonGenericActionResource]): TouchButtonResource =
    if not TouchButtonGenericActionResource_instanceSet:
        TouchButtonGenericActionResource_instanceSet = true
        TouchButtonGenericActionResource_instanceValue = newTouchButtonGenericActionResource()
    TouchButtonGenericActionResource_instanceValue

proc getInstance*(t: typedesc[TouchButtonGenericActionResource]): TouchButtonResource {.discardable.} =
        return TouchButtonGenericActionResource.instance

proc initTouchButtonGenericActionResource*(this: TouchButtonGenericActionResource) =
        initTouchButtonResource(this, "/touch_button_generic_action_64_by_64.png", "/touch_button_generic_action_hint_64_by_64.png")

proc newTouchButtonGenericActionResource*(): TouchButtonGenericActionResource =
    result = TouchButtonGenericActionResource()
    initTouchButtonGenericActionResource(result)

when declared(newTouchButtonGenericActionResourceHook0):
    newTouchButtonGenericActionResourceHook0 = proc (): TouchButtonResource = newTouchButtonGenericActionResource()

