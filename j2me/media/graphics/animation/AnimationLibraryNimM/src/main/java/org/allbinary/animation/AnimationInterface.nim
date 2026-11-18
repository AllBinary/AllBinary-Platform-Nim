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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/LocationPaintableInterface as LocationPaintableInterfaceModule
export LocationPaintableInterfaceModule

type
    AnimationInterface* = ref object of LocationPaintableInterface


method nextFrame*(this: AnimationInterface) {.base.} =
        raise newJException("AbstractMethodError", "nextFrame")

method paintThreedXYZ*(this: AnimationInterface, graphics: Graphics, x: int32, y: int32, z: int32) {.base.} =
        raise newJException("AbstractMethodError", "paintThreedXYZ")

