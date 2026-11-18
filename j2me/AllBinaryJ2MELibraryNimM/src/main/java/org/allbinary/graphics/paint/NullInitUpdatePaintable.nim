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
import org/allbinary/graphics/paint/InitUpdatePaintable as InitUpdatePaintableModule
export InitUpdatePaintableModule

type
    NullInitUpdatePaintable* = ref object of InitUpdatePaintable

proc newNullInitUpdatePaintable*(): NullInitUpdatePaintable
proc initNullInitUpdatePaintable*(this: NullInitUpdatePaintable)
proc getInstance*(t: typedesc[NullInitUpdatePaintable]): InitUpdatePaintable {.discardable.}

var NullInitUpdatePaintable_SINGLETONValue: NullInitUpdatePaintable
var NullInitUpdatePaintable_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NullInitUpdatePaintable]): NullInitUpdatePaintable =
    if not NullInitUpdatePaintable_SINGLETONSet:
        NullInitUpdatePaintable_SINGLETONSet = true
        NullInitUpdatePaintable_SINGLETONValue = newNullInitUpdatePaintable()
    NullInitUpdatePaintable_SINGLETONValue

proc initNullInitUpdatePaintable*(this: NullInitUpdatePaintable) =
        initInitUpdatePaintable(this)
        discard

proc newNullInitUpdatePaintable*(): NullInitUpdatePaintable =
    result = NullInitUpdatePaintable()
    initNullInitUpdatePaintable(result)

proc getInstance*(t: typedesc[NullInitUpdatePaintable]): InitUpdatePaintable {.discardable.} =
        return NullInitUpdatePaintable.SINGLETON

when declared(newNullInitUpdatePaintableHook0):
    newNullInitUpdatePaintableHook0 = proc (): InitUpdatePaintable = newNullInitUpdatePaintable()

