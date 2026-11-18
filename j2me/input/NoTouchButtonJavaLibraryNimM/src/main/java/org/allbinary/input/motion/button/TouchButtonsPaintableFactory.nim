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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    TouchButtonsPaintableFactory* = ref object of JObject

proc newTouchButtonsPaintableFactory*(): TouchButtonsPaintableFactory
proc getInstance*(t: typedesc[TouchButtonsPaintableFactory], basicColor: BasicColor): Paintable {.discardable.}


proc initTouchButtonsPaintableFactory*(this: TouchButtonsPaintableFactory) =
    discard

proc newTouchButtonsPaintableFactory*(): TouchButtonsPaintableFactory =
    result = TouchButtonsPaintableFactory()
    initTouchButtonsPaintableFactory(result)

proc getInstance*(t: typedesc[TouchButtonsPaintableFactory], basicColor: BasicColor): Paintable {.discardable.} =
        return newPaintable()

