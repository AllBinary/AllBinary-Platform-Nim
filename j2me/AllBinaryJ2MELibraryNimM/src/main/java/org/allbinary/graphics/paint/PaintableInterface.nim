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

type
    PaintableInterface* = ref object of JObject


method paint*(this: PaintableInterface, graphics: Graphics) {.base.} =
        raise newJException("AbstractMethodError", "paint")

method paintThreed*(this: PaintableInterface, graphics: Graphics) {.base.} =
        raise newJException("AbstractMethodError", "paintThreed")

