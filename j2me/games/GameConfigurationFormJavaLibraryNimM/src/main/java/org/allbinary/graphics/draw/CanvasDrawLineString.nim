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
import org/allbinary/graphics/draw/DrawStringUtil as DrawStringUtilModule
export DrawStringUtilModule

type
    CanvasDrawLineString* = ref object of UpdateMyFontInterface
        drawStringUtil*: DrawStringUtil
        myFontProcessor*: MyFontProcessor
        x*: int32
        y*: int32
        fontHeight*: int32

proc newCanvasDrawLineString*(x: int32, y: int32): CanvasDrawLineString
proc initCanvasDrawLineString*(this: CanvasDrawLineString, x: int32, y: int32)
method updateMeasurement*(this: CanvasDrawLineString, graphics: Graphics)
method paint*(this: CanvasDrawLineString, graphics: Graphics, string: string, line: int32) {.base.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule

var CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGValue: CanvasDrawLineString
var CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGSet = false
proc NULL_CANVAS_DRAW_LINE_STRING*(t: typedesc[CanvasDrawLineString]): CanvasDrawLineString =
    if not CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGSet:
        CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGSet = true
        CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGValue = newCanvasDrawLineString(0, 0)
    CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGValue

# Java field initializers run after the base initializer
proc initFieldsCanvasDrawLineString(this: CanvasDrawLineString) =
    this.drawStringUtil = DrawStringUtil.getInstance()
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    
    
    this.fontHeight = 0
    discard

proc initCanvasDrawLineString*(this: CanvasDrawLineString, x: int32, y: int32) =
        this.initFieldsCanvasDrawLineString()
        this.x = x
        this.y = y

proc newCanvasDrawLineString*(x: int32, y: int32): CanvasDrawLineString =
    result = CanvasDrawLineString()
    initCanvasDrawLineString(result, x, y)

method updateMeasurement*(this: CanvasDrawLineString, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.fontHeight = font.getHeight()
        this.myFontProcessor = MyFontProcessor.getInstance()

method paint*(this: CanvasDrawLineString, graphics: Graphics, string: string, line: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        this.drawStringUtil.drawCenterString(graphics, string, 0, jLength(string), this.x, this.y +% (line *% this.fontHeight))

