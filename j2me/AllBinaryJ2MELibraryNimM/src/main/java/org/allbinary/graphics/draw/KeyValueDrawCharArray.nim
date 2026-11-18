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
# package org.allbinary.graphics.draw

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule

type
    KeyValueDrawCharArray* = ref object of UpdateMyFontInterface
        myFontProcessor*: MyFontProcessor
        LABEL*: string
        labelX*: int32
        valueX*: int32
        value*: JArray[uint16]
        len*: int32

proc newKeyValueDrawCharArray*(label: string, x: int32): KeyValueDrawCharArray
proc initKeyValueDrawCharArray*(this: KeyValueDrawCharArray, label: string, x: int32)
method updateMeasurement*(this: KeyValueDrawCharArray, graphics: Graphics)
method paint*(this: KeyValueDrawCharArray, graphics: Graphics, y: int32) {.base.}
method update*(this: KeyValueDrawCharArray, value: JArray[uint16], len: int32) {.base.}
import org/allbinary/logic/java/character/CharArrayFactory as CharArrayFactoryModule
export CharArrayFactoryModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule


# Java field initializers run after the base initializer
proc initFieldsKeyValueDrawCharArray(this: KeyValueDrawCharArray) =
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    
    
    this.valueX = 0
    this.value = CharArrayFactory.getInstance().getZeroCharArray()
    this.len = 0
    discard

proc initKeyValueDrawCharArray*(this: KeyValueDrawCharArray, label: string, x: int32) =
        this.initFieldsKeyValueDrawCharArray()
        this.LABEL = label
        this.labelX = x

proc newKeyValueDrawCharArray*(label: string, x: int32): KeyValueDrawCharArray =
    result = KeyValueDrawCharArray()
    initKeyValueDrawCharArray(result, label, x)

method updateMeasurement*(this: KeyValueDrawCharArray, graphics: Graphics) =
        var labelWidth: int32 = graphics.getFont().stringWidth(this.LABEL) -% jLength(this.LABEL)
        this.valueX = labelWidth +% this.labelX
        this.myFontProcessor = MyFontProcessor.getInstance()

method paint*(this: KeyValueDrawCharArray, graphics: Graphics, y: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        graphics.drawString(this.LABEL, this.labelX, y, 0)
        graphics.drawChars(this.value, 0, this.len, this.valueX, y, 0)

method update*(this: KeyValueDrawCharArray, value: JArray[uint16], len: int32) {.base.} =
        this.value = value
        this.len = len

