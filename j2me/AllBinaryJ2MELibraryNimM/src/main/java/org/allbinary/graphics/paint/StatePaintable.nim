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
import org/allbinary/graphics/displayable/StateControlledInterface as StateControlledInterfaceModule
export StateControlledInterfaceModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    StatePaintable* = ref object of Paintable

converter jAsStateControlledInterface*(value: StatePaintable): StateControlledInterface = cast[StateControlledInterface](value)
proc newStatePaintable*(): StatePaintable
proc initStatePaintable*(this: StatePaintable)
method setState*(this: StatePaintable, state: int32)


proc initStatePaintable*(this: StatePaintable) =
        initPaintable(this)
        discard

proc newStatePaintable*(): StatePaintable =
    result = StatePaintable()
    initStatePaintable(result)

method setState*(this: StatePaintable, state: int32) =
        discard

when declared(newStatePaintableHook0):
    newStatePaintableHook0 = proc (): Paintable = newStatePaintable()

