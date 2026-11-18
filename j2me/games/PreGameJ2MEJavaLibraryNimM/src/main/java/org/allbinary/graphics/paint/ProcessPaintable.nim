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
    ProcessPaintable* = ref object of Paintable

proc newProcessPaintable*(): ProcessPaintable
method process*(this: ProcessPaintable) {.base.}


proc initProcessPaintable*(this: ProcessPaintable) =
    initPaintable(this)

proc newProcessPaintable*(): ProcessPaintable =
    result = ProcessPaintable()
    initProcessPaintable(result)

method process*(this: ProcessPaintable) {.base.} =
        discard

when declared(newProcessPaintableHook0):
    newProcessPaintableHook0 = proc (): Paintable = newProcessPaintable()

