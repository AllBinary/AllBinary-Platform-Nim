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
    PaintableFactory* = ref object of JObject

proc newPaintableFactory*(): PaintableFactory
method getInstance*(this: PaintableFactory): Paintable {.base, discardable.}
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule


proc initPaintableFactory*(this: PaintableFactory) =
    discard

proc newPaintableFactory*(): PaintableFactory =
    result = PaintableFactory()
    initPaintableFactory(result)

method getInstance*(this: PaintableFactory): Paintable {.base, discardable.} =
        return NullPaintable.getInstance()

