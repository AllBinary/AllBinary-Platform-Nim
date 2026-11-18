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
# package org.allbinary.graphics.font

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

type
    FontDebugFactory* = ref object of JObject

proc newFontDebugFactory*(): FontDebugFactory
proc getInstance*(t: typedesc[FontDebugFactory]): FontDebugFactory {.discardable.}
method setFont*(this: FontDebugFactory, font: Font, graphics: Graphics) {.base.}

var FontDebugFactory_instanceValue: FontDebugFactory
var FontDebugFactory_instanceSet = false
proc instance*(t: typedesc[FontDebugFactory]): FontDebugFactory =
    if not FontDebugFactory_instanceSet:
        FontDebugFactory_instanceSet = true
        FontDebugFactory_instanceValue = newFontDebugFactory()
    FontDebugFactory_instanceValue

proc initFontDebugFactory*(this: FontDebugFactory) =
    discard

proc newFontDebugFactory*(): FontDebugFactory =
    result = FontDebugFactory()
    initFontDebugFactory(result)

proc getInstance*(t: typedesc[FontDebugFactory]): FontDebugFactory {.discardable.} =
        return FontDebugFactory.instance

method setFont*(this: FontDebugFactory, font: Font, graphics: Graphics) {.base.} =
        graphics.setFont(font)

