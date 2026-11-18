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
# package org.allbinary.bounds.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    BoundsChangeEvent* = ref object of AllBinaryEventObject

proc newBoundsChangeEvent*(rectangle: Rectangle): BoundsChangeEvent
proc initBoundsChangeEvent*(this: BoundsChangeEvent, rectangle: Rectangle)
method getRectangle*(this: BoundsChangeEvent): Rectangle {.base, discardable.}


proc initBoundsChangeEvent*(this: BoundsChangeEvent, rectangle: Rectangle) =
        initAllBinaryEventObject(this, rectangle)

proc newBoundsChangeEvent*(rectangle: Rectangle): BoundsChangeEvent =
    result = BoundsChangeEvent()
    initBoundsChangeEvent(result, rectangle)

method getRectangle*(this: BoundsChangeEvent): Rectangle {.base, discardable.} =
        return Rectangle(JObject(this.getSource()))

when declared(newBoundsChangeEventHook1):
    newBoundsChangeEventHook1 = proc (rectangle: Rectangle): AllBinaryEventObject = newBoundsChangeEvent(rectangle)

