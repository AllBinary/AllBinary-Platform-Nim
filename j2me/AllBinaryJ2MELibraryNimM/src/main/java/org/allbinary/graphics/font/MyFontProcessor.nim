#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
    MyFontProcessor* = ref object of JObject

proc newMyFontProcessor*(): MyFontProcessor
proc defaultCharWidth*(t: typedesc[MyFontProcessor], font: Font): int32 {.discardable.}
proc defaultStringWidth*(t: typedesc[MyFontProcessor], font: Font, size: int32): int32 {.discardable.}
proc getInstance*(t: typedesc[MyFontProcessor]): MyFontProcessor {.discardable.}
method process*(this: MyFontProcessor, graphics: Graphics) {.base.}

var MyFontProcessor_instanceValue: MyFontProcessor
var MyFontProcessor_instanceSet = false
proc instance*(t: typedesc[MyFontProcessor]): MyFontProcessor =
    if not MyFontProcessor_instanceSet:
        MyFontProcessor_instanceSet = true
        MyFontProcessor_instanceValue = newMyFontProcessor()
    MyFontProcessor_instanceValue

proc initMyFontProcessor*(this: MyFontProcessor) =
    discard

proc newMyFontProcessor*(): MyFontProcessor =
    result = MyFontProcessor()
    initMyFontProcessor(result)

proc defaultCharWidth*(t: typedesc[MyFontProcessor], font: Font): int32 {.discardable.} =
        return font.charWidth(uint16(ord('C')))

proc defaultStringWidth*(t: typedesc[MyFontProcessor], font: Font, size: int32): int32 {.discardable.} =
        return MyFontProcessor.defaultCharWidth(font) *% size

proc getInstance*(t: typedesc[MyFontProcessor]): MyFontProcessor {.discardable.} =
        return MyFontProcessor.instance

method process*(this: MyFontProcessor, graphics: Graphics) {.base.} =
        discard

