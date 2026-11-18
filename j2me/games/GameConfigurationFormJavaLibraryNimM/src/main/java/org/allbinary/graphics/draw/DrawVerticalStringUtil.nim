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

type
    DrawVerticalStringUtil* = ref object of JObject
        EMPTY_STRING*: string
        anchor*: int32
        charHeight*: int32
        offsetY*: int32
        offsetXArray*: JArray[int32]

proc newDrawVerticalStringUtil*(): DrawVerticalStringUtil
proc getInstance*(t: typedesc[DrawVerticalStringUtil]): DrawVerticalStringUtil {.discardable.}
method updateMeasurement*(this: DrawVerticalStringUtil, graphics: Graphics, string: string) {.base.}
method paintVerticle*(this: DrawVerticalStringUtil, graphics: Graphics, string: string, x: int32, y: int32, anchor: int32) {.base.}
method drawCenterString*(this: DrawVerticalStringUtil, graphics: Graphics, string: string, offset: int32, length: int32, x: int32, y: int32) {.base.}
method drawCenterStrings*(this: DrawVerticalStringUtil, graphics: Graphics, stringArray: JArray[string], maxWidth: int32, x: int32, y: int32) {.base.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/AndroidUtil as AndroidUtilModule
export AndroidUtilModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/opengles/OpenGLFeatureUtil as OpenGLFeatureUtilModule
export OpenGLFeatureUtilModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var DrawVerticalStringUtil_instanceValue: DrawVerticalStringUtil
var DrawVerticalStringUtil_instanceSet = false
proc instance*(t: typedesc[DrawVerticalStringUtil]): DrawVerticalStringUtil =
    if not DrawVerticalStringUtil_instanceSet:
        DrawVerticalStringUtil_instanceSet = true
        DrawVerticalStringUtil_instanceValue = newDrawVerticalStringUtil()
    DrawVerticalStringUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDrawVerticalStringUtil(this: DrawVerticalStringUtil) =
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    this.anchor = Anchor.TOP_LEFT
    this.charHeight = 0
    this.offsetY = 0
    this.offsetXArray = NullUtil.getInstance().NULL_INT_ARRAY
    discard

proc initDrawVerticalStringUtil*(this: DrawVerticalStringUtil) =
    this.initFieldsDrawVerticalStringUtil()

proc newDrawVerticalStringUtil*(): DrawVerticalStringUtil =
    result = DrawVerticalStringUtil()
    initDrawVerticalStringUtil(result)

proc getInstance*(t: typedesc[DrawVerticalStringUtil]): DrawVerticalStringUtil {.discardable.} =
        return DrawVerticalStringUtil.instance

method updateMeasurement*(this: DrawVerticalStringUtil, graphics: Graphics, string: string) {.base.} =
        let openGLFeatureUtil: OpenGLFeatureUtil = OpenGLFeatureUtil.getInstance()
        let font: Font = graphics.getFont()
        this.charHeight = font.getHeight()
        this.offsetY = 0
        if J2MEUtil.isHTML():
            this.charHeight = this.charHeight +% 1
        elif openGLFeatureUtil.isAnyThreed():
            this.charHeight = this.charHeight +% 2
            if AndroidUtil.isAndroid():
                discard
            else:
                this.offsetY = 2 +% (this.charHeight *% 2 div 3)
        let size: int32 = jLength(string)
        var aChar: uint16 = 0
        var offsetXArray: JArray[int32] = newJArray[int32](size, default(int32))
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                aChar = jCharAt(string, index)
                if openGLFeatureUtil.isAnyThreed():
                    offsetXArray[index] = font.charWidth(aChar) div 2
        this.offsetXArray = offsetXArray

method paintVerticle*(this: DrawVerticalStringUtil, graphics: Graphics, string: string, x: int32, y: int32, anchor: int32) {.base.} =
        let size: int32 = jLength(string)
        var aChar: uint16 = 0
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                aChar = jCharAt(string, index)
                graphics.drawChar(aChar, x +% this.offsetXArray[index], y +% (this.charHeight *% index) +% this.offsetY, anchor)

method drawCenterString*(this: DrawVerticalStringUtil, graphics: Graphics, string: string, offset: int32, length: int32, x: int32, y: int32) {.base.} =
        let width: int32 = (ashr(graphics.getFont().substringWidth(string, offset, length), 1))
        try:
            graphics.drawSubstring(string, offset, length, x -% width, y, this.anchor)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.put(newStringMaker().append("Exception: stringLength: ").appendint(jLength(string)).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).toString(), this, "drawCenterString")

method drawCenterStrings*(this: DrawVerticalStringUtil, graphics: Graphics, stringArray: JArray[string], maxWidth: int32, x: int32, y: int32) {.base.} =
        var extraLines: int32 = 0
        block:
            var index: int32 = 0
            while index < stringArray.length:
                defer: index = index +% 1
                var string: string = stringArray[index]
                if string != this.EMPTY_STRING:
                    var width: int32 = graphics.getFont().stringWidth(string)
                    var minTotalLines: int32 = 1
                    if width > maxWidth:
                        minTotalLines = (width div maxWidth) +% 1
                    var linePortion: int32 = jLength(string) div minTotalLines
                    var offset: int32 = 0
                    var currentLength: int32 = linePortion
                    var size: int32 = jLength(string)
                    while offset < size:
                        if offset +% currentLength > size:
                            currentLength = size -% offset
                        if offset +% currentLength != size:
                            while currentLength > 0 and stringArray[index].charAt(offset +% currentLength) != uint16(ord(' ')):
                                currentLength = currentLength -% 1
                            if currentLength <= 4:
                                currentLength = linePortion
                        this.drawCenterString(graphics, string, offset, currentLength, x, y +% ((index +% jPostIncrement(extraLines)) *% this.charHeight))
                        offset = offset +% currentLength
                        currentLength = linePortion
                    extraLines = extraLines -% 1

