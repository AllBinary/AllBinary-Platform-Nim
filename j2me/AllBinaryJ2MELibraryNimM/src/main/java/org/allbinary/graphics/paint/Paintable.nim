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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule

type
    Paintable* = ref object of PaintableInterface

proc newPaintable*(): Paintable
method setBasicColorP*(this: Paintable, basicColor: BasicColor) {.base.}
method paint*(this: Paintable, graphics: Graphics)
method paintThreed*(this: Paintable, graphics: Graphics)


proc initPaintable*(this: Paintable) =
    discard

proc newPaintable*(): Paintable =
    result = Paintable()
    initPaintable(result)

method setBasicColorP*(this: Paintable, basicColor: BasicColor) {.base.} =
        discard

method paint*(this: Paintable, graphics: Graphics) =
        discard

method paintThreed*(this: Paintable, graphics: Graphics) =
        discard

