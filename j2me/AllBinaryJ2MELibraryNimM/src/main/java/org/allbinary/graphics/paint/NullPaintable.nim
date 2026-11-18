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
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    NullPaintable* = ref object of Paintable

proc newNullPaintable*(): NullPaintable
proc initNullPaintable*(this: NullPaintable)
proc getInstance*(t: typedesc[NullPaintable]): Paintable {.discardable.}

var NullPaintable_SINGLETONValue: NullPaintable
var NullPaintable_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NullPaintable]): NullPaintable =
    if not NullPaintable_SINGLETONSet:
        NullPaintable_SINGLETONSet = true
        NullPaintable_SINGLETONValue = newNullPaintable()
    NullPaintable_SINGLETONValue

proc initNullPaintable*(this: NullPaintable) =
        initPaintable(this)
        discard

proc newNullPaintable*(): NullPaintable =
    result = NullPaintable()
    initNullPaintable(result)

proc getInstance*(t: typedesc[NullPaintable]): Paintable {.discardable.} =
        return NullPaintable.SINGLETON

when declared(newNullPaintableHook0):
    newNullPaintableHook0 = proc (): Paintable = newNullPaintable()

