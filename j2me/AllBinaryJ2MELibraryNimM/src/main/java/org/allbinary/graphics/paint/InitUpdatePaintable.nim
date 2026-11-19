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
import org/allbinary/graphics/paint/InitUpdatePaintableInterface as InitUpdatePaintableInterfaceModule
export InitUpdatePaintableInterfaceModule

type
    InitUpdatePaintable* = ref object of Paintable

converter jAsInitUpdatePaintableInterface*(value: InitUpdatePaintable): InitUpdatePaintableInterface = cast[InitUpdatePaintableInterface](value)
converter jAsInitInterface*(value: InitUpdatePaintable): InitInterface = cast[InitInterface](value)
converter jAsUpdateInterface*(value: InitUpdatePaintable): UpdateInterface = cast[UpdateInterface](value)
converter jAsPaintableInterface*(value: InitUpdatePaintable): PaintableInterface = cast[PaintableInterface](value)
proc newInitUpdatePaintable*(): InitUpdatePaintable
proc initInitUpdatePaintable*(this: InitUpdatePaintable)
method init*(this: InitUpdatePaintable)
method update*(this: InitUpdatePaintable)


proc initInitUpdatePaintable*(this: InitUpdatePaintable) =
        initPaintable(this)
        discard

proc newInitUpdatePaintable*(): InitUpdatePaintable =
    result = InitUpdatePaintable()
    initInitUpdatePaintable(result)

method init*(this: InitUpdatePaintable) =
        discard

method update*(this: InitUpdatePaintable) =
        discard

when declared(newInitUpdatePaintableHook0):
    newInitUpdatePaintableHook0 = proc (): Paintable = newInitUpdatePaintable()

