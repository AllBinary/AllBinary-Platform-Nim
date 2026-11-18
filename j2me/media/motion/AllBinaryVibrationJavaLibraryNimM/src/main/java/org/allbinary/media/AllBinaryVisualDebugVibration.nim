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
# package org.allbinary.media

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/media/AllBinaryVibrationME as AllBinaryVibrationMEModule
export AllBinaryVibrationMEModule

type
    AllBinaryVisualDebugVibration* = ref object of AllBinaryVibrationME
        displayInfoSingleton*: DisplayInfoSingleton
        timeDelayHelper*: TimeDelayHelper
        VIBRATING*: string
        myFontProcessor*: MyFontProcessor
        anchor*: int32
        width*: int32

converter jAsUpdateMyFontInterface*(value: AllBinaryVisualDebugVibration): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newAllBinaryVisualDebugVibration*(): AllBinaryVisualDebugVibration
method updateMeasurement*(this: AllBinaryVisualDebugVibration, graphics: Graphics)
method vibrate*(this: AllBinaryVisualDebugVibration, duration: int32, `type`: int32, volume: int32)
method paint*(this: AllBinaryVisualDebugVibration, graphics: Graphics) {.base.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule


# Java field initializers run after the base initializer
proc initFieldsAllBinaryVisualDebugVibration(this: AllBinaryVisualDebugVibration) =
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    this.timeDelayHelper = newTimeDelayHelper(Integer.MAX_VALUE)
    this.VIBRATING = "Vibrating"
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.anchor = Anchor.TOP_LEFT
    this.width = 0
    discard

proc initAllBinaryVisualDebugVibration*(this: AllBinaryVisualDebugVibration) =
    initAllBinaryVibrationME(this)
    this.initFieldsAllBinaryVisualDebugVibration()

proc newAllBinaryVisualDebugVibration*(): AllBinaryVisualDebugVibration =
    result = AllBinaryVisualDebugVibration()
    initAllBinaryVisualDebugVibration(result)

method updateMeasurement*(this: AllBinaryVisualDebugVibration, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.width = font.stringWidth(this.VIBRATING)
        this.myFontProcessor = MyFontProcessor.getInstance()

method vibrate*(this: AllBinaryVisualDebugVibration, duration: int32, `type`: int32, volume: int32) =
        this.timeDelayHelper.delay = duration

method paint*(this: AllBinaryVisualDebugVibration, graphics: Graphics) {.base.} =
        if this.timeDelayHelper.isTimeTNT():
            this.timeDelayHelper.delay = Integer.MAX_VALUE
            this.myFontProcessor.process(graphics)
            graphics.drawString(this.VIBRATING, this.displayInfoSingleton.getLastHalfWidth() -% (ashr(this.width, 1)), 0, this.anchor)

when declared(newAllBinaryVisualDebugVibrationHook0):
    newAllBinaryVisualDebugVibrationHook0 = proc (): AllBinaryVibrationME = newAllBinaryVisualDebugVibration()

