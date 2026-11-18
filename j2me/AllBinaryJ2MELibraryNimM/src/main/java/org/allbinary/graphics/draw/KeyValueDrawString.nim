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
    KeyValueDrawString* = ref object of UpdateMyFontInterface
        myFontProcessor*: MyFontProcessor
        LABEL*: string
        labelX*: int32
        valueX*: int32
        value*: string

proc newKeyValueDrawString*(label: string, x: int32): KeyValueDrawString
proc initKeyValueDrawString*(this: KeyValueDrawString, label: string, x: int32)
method updateMeasurement*(this: KeyValueDrawString, graphics: Graphics)
method paint*(this: KeyValueDrawString, graphics: Graphics, y: int32) {.base.}
method update*(this: KeyValueDrawString, value: string) {.base.}
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsKeyValueDrawString(this: KeyValueDrawString) =
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    
    
    this.valueX = 0
    this.value = StringUtil.getInstance().EMPTY_STRING
    discard

proc initKeyValueDrawString*(this: KeyValueDrawString, label: string, x: int32) =
        this.initFieldsKeyValueDrawString()
        this.LABEL = label
        this.labelX = x

proc newKeyValueDrawString*(label: string, x: int32): KeyValueDrawString =
    result = KeyValueDrawString()
    initKeyValueDrawString(result, label, x)

method updateMeasurement*(this: KeyValueDrawString, graphics: Graphics) =
        let labelWidth: int32 = graphics.getFont().stringWidth(this.LABEL) -% jLength(this.LABEL)
        this.valueX = labelWidth +% this.labelX
        this.myFontProcessor = MyFontProcessor.getInstance()

method paint*(this: KeyValueDrawString, graphics: Graphics, y: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        graphics.drawString(this.LABEL, this.labelX, y, 0)
        graphics.drawString(this.value, this.valueX, y, 0)

method update*(this: KeyValueDrawString, value: string) {.base.} =
        this.value = value

