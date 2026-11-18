#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.device

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/font/FontDebugBase as FontDebugBaseModule
export FontDebugBaseModule

type
    GraphicsInterface* = ref object of JObject


method setFontDebug*(this: GraphicsInterface, font: Font, fontDebug: FontDebugBase) {.base.} =
        raise newJException("AbstractMethodError", "setFontDebug")

