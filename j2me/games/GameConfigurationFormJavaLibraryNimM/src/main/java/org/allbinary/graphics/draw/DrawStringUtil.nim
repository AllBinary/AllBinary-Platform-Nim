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
    DrawStringUtil* = ref object of JObject
        EMPTY_STRING*: string
        anchor*: int32

proc newDrawStringUtil*(): DrawStringUtil
proc getInstance*(t: typedesc[DrawStringUtil]): DrawStringUtil {.discardable.}
method drawCenterString*(this: DrawStringUtil, graphics: Graphics, string: string, offset: int32, length: int32, x: int32, y: int32) {.base.}
method drawCenterStrings*(this: DrawStringUtil, graphics: Graphics, stringArray: JArray[string], maxWidth: int32, charHeight: int32, x: int32, y: int32) {.base.}
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var DrawStringUtil_instanceValue: DrawStringUtil
var DrawStringUtil_instanceSet = false
proc instance*(t: typedesc[DrawStringUtil]): DrawStringUtil =
    if not DrawStringUtil_instanceSet:
        DrawStringUtil_instanceSet = true
        DrawStringUtil_instanceValue = newDrawStringUtil()
    DrawStringUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDrawStringUtil(this: DrawStringUtil) =
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    this.anchor = Anchor.TOP_LEFT
    discard

proc initDrawStringUtil*(this: DrawStringUtil) =
    this.initFieldsDrawStringUtil()

proc newDrawStringUtil*(): DrawStringUtil =
    result = DrawStringUtil()
    initDrawStringUtil(result)

proc getInstance*(t: typedesc[DrawStringUtil]): DrawStringUtil {.discardable.} =
        return DrawStringUtil.instance

method drawCenterString*(this: DrawStringUtil, graphics: Graphics, string: string, offset: int32, length: int32, x: int32, y: int32) {.base.} =
        let width: int32 = (ashr(graphics.getFont().substringWidth(string, offset, length), 1))
        try:
            graphics.drawSubstring(string, offset, length, x -% width, y, this.anchor)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.put(newStringMaker().append("Exception: stringLength: ").appendint(jLength(string)).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).toString(), this, "drawCenterString")

method drawCenterStrings*(this: DrawStringUtil, graphics: Graphics, stringArray: JArray[string], maxWidth: int32, charHeight: int32, x: int32, y: int32) {.base.} =
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
                        this.drawCenterString(graphics, string, offset, currentLength, x, y +% ((index +% jPostIncrement(extraLines)) *% charHeight))
                        offset = offset +% currentLength
                        currentLength = linePortion
                    extraLines = extraLines -% 1

