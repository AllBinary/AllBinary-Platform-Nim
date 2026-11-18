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
import org/allbinary/graphics/paint/LocationPaintable as LocationPaintableModule
export LocationPaintableModule

type
    NullLocationPaintable* = ref object of LocationPaintable

proc newNullLocationPaintable*(): NullLocationPaintable
proc getInstance*(t: typedesc[NullLocationPaintable]): NullLocationPaintable {.discardable.}

var NullLocationPaintable_instanceCValue: NullLocationPaintable
var NullLocationPaintable_instanceCSet = false
proc instanceC*(t: typedesc[NullLocationPaintable]): NullLocationPaintable =
    if not NullLocationPaintable_instanceCSet:
        NullLocationPaintable_instanceCSet = true
        NullLocationPaintable_instanceCValue = newNullLocationPaintable()
    NullLocationPaintable_instanceCValue

proc initNullLocationPaintable*(this: NullLocationPaintable) =
    initLocationPaintable(this)

proc newNullLocationPaintable*(): NullLocationPaintable =
    result = NullLocationPaintable()
    initNullLocationPaintable(result)

proc getInstance*(t: typedesc[NullLocationPaintable]): NullLocationPaintable {.discardable.} =
        return NullLocationPaintable.instanceC

when declared(newNullLocationPaintableHook0):
    newNullLocationPaintableHook0 = proc (): LocationPaintable = newNullLocationPaintable()

