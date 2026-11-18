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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule

type
    UpdateMyFontProcessor* = ref object of MyFontProcessor
        updateMeasurementProcessor*: UpdateMyFontInterface

proc newUpdateMyFontProcessor*(keyValueDrawCharArray: UpdateMyFontInterface): UpdateMyFontProcessor
proc initUpdateMyFontProcessor*(this: UpdateMyFontProcessor, keyValueDrawCharArray: UpdateMyFontInterface)
method process*(this: UpdateMyFontProcessor, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsUpdateMyFontProcessor(this: UpdateMyFontProcessor) =
    
    discard

proc initUpdateMyFontProcessor*(this: UpdateMyFontProcessor, keyValueDrawCharArray: UpdateMyFontInterface) =
        initMyFontProcessor(this)
        this.initFieldsUpdateMyFontProcessor()
        this.updateMeasurementProcessor = keyValueDrawCharArray

proc newUpdateMyFontProcessor*(keyValueDrawCharArray: UpdateMyFontInterface): UpdateMyFontProcessor =
    result = UpdateMyFontProcessor()
    initUpdateMyFontProcessor(result, keyValueDrawCharArray)

method process*(this: UpdateMyFontProcessor, graphics: Graphics) =
        this.updateMeasurementProcessor.updateMeasurement(graphics)

when declared(newUpdateMyFontProcessorHook1):
    newUpdateMyFontProcessorHook1 = proc (keyValueDrawCharArray: UpdateMyFontInterface): MyFontProcessor = newUpdateMyFontProcessor(keyValueDrawCharArray)

