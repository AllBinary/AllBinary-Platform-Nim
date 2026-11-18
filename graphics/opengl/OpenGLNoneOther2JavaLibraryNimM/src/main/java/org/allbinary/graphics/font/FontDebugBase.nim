# Generated Code Do Not Modify
# package org.allbinary.graphics.font

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

#OpenGLNoneOther2JavaLibrary
type
    FontDebugBase* = ref object of JObject
        SET_FONT*: string

proc newFontDebugBase*(): FontDebugBase
proc getInstance*(t: typedesc[FontDebugBase]): FontDebugBase {.discardable.}
method debugMetrics*(this: FontDebugBase, currentFont: Font, convertedTextSize: float32, displayMetrics: JObject, stringBuffer: StringMaker) {.base.}
method debugDpi*(this: FontDebugBase, densityDpi: int32, stringBuffer: StringMaker) {.base.}
method debugDimension*(this: FontDebugBase, currentFont: Font, convertedTextSize: float32, longestDimensionTotalPixels: int32, stringBuffer: StringMaker) {.base.}

var FontDebugBase_instanceBaseValue: FontDebugBase
var FontDebugBase_instanceBaseSet = false
proc instanceBase*(t: typedesc[FontDebugBase]): FontDebugBase =
    if not FontDebugBase_instanceBaseSet:
        FontDebugBase_instanceBaseSet = true
        FontDebugBase_instanceBaseValue = newFontDebugBase()
    FontDebugBase_instanceBaseValue

# Java field initializers run after the base initializer
proc initFieldsFontDebugBase(this: FontDebugBase) =
    this.SET_FONT = "setFont"
    discard

proc initFontDebugBase*(this: FontDebugBase) =
    this.initFieldsFontDebugBase()

proc newFontDebugBase*(): FontDebugBase =
    result = FontDebugBase()
    initFontDebugBase(result)

proc getInstance*(t: typedesc[FontDebugBase]): FontDebugBase {.discardable.} =
        return FontDebugBase.instanceBase

method debugMetrics*(this: FontDebugBase, currentFont: Font, convertedTextSize: float32, displayMetrics: JObject, stringBuffer: StringMaker) {.base.} =
        discard

method debugDpi*(this: FontDebugBase, densityDpi: int32, stringBuffer: StringMaker) {.base.} =
        discard

method debugDimension*(this: FontDebugBase, currentFont: Font, convertedTextSize: float32, longestDimensionTotalPixels: int32, stringBuffer: StringMaker) {.base.} =
        discard

