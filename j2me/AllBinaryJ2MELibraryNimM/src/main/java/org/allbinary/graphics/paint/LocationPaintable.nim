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
# package org.allbinary.graphics.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/LocationPaintableInterface as LocationPaintableInterfaceModule
export LocationPaintableInterfaceModule

type
    LocationPaintable* = ref object of LocationPaintableInterface

proc newLocationPaintable*(): LocationPaintable
proc getInstance*(t: typedesc[LocationPaintable]): LocationPaintable {.discardable.}
method paintXY*(this: LocationPaintable, graphics: Graphics, x: int32, y: int32)

var LocationPaintable_instanceValue: LocationPaintable
var LocationPaintable_instanceSet = false
proc instance*(t: typedesc[LocationPaintable]): LocationPaintable =
    if not LocationPaintable_instanceSet:
        LocationPaintable_instanceSet = true
        LocationPaintable_instanceValue = newLocationPaintable()
    LocationPaintable_instanceValue

proc initLocationPaintable*(this: LocationPaintable) =
    discard

proc newLocationPaintable*(): LocationPaintable =
    result = LocationPaintable()
    initLocationPaintable(result)

proc getInstance*(t: typedesc[LocationPaintable]): LocationPaintable {.discardable.} =
        return LocationPaintable.instance

method paintXY*(this: LocationPaintable, graphics: Graphics, x: int32, y: int32) =
        discard

