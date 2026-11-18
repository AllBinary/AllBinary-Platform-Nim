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
# package org.allbinary.emulator.device

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/image/opengles/OpenGLESImage as OpenGLESImageModule
export OpenGLESImageModule
import org/allbinary/emulator/device/TrueTypeFontUtilBase as TrueTypeFontUtilBaseModule
export TrueTypeFontUtilBaseModule

type
    TrueTypeFontUtil* = ref object of TrueTypeFontUtilBase
        fontImage*: OpenGLESImage

proc newTrueTypeFontUtil*(): TrueTypeFontUtil
proc initTrueTypeFontUtil*(this: TrueTypeFontUtil)
proc getInstance*(t: typedesc[TrueTypeFontUtil]): TrueTypeFontUtil {.discardable.}
method getAsTextureSize*(this: TrueTypeFontUtil, textureSize: int32): int32 {.discardable.}
method getCellSize*(this: TrueTypeFontUtil, cellSize: int32): int32 {.discardable.}
method getFontBitmap*(this: TrueTypeFontUtil, filename: string, fontSize: int32, cellSize: int32, basicColor: BasicColor): Image {.base, discardable.}
method saveFontAtlasAsFile*(this: TrueTypeFontUtil) {.base.}
method getFontBitmapGL*(this: TrueTypeFontUtil, gl: GL10, filename: string, cellSize: int32, basicColor: BasicColor): Image {.base, discardable.}
method getFontWidths*(this: TrueTypeFontUtil, filename: string, fontSize: int32): JArray[int32] {.base, discardable.}

var TrueTypeFontUtil_instanceValue: TrueTypeFontUtil
var TrueTypeFontUtil_instanceSet = false
proc instance*(t: typedesc[TrueTypeFontUtil]): TrueTypeFontUtil =
    if not TrueTypeFontUtil_instanceSet:
        TrueTypeFontUtil_instanceSet = true
        TrueTypeFontUtil_instanceValue = newTrueTypeFontUtil()
    TrueTypeFontUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsTrueTypeFontUtil(this: TrueTypeFontUtil) =
    this.fontImage = OpenGLESImage.NULL_OPENGL_IMAGE
    discard

proc getInstance*(t: typedesc[TrueTypeFontUtil]): TrueTypeFontUtil {.discardable.} =
        return TrueTypeFontUtil.instance

proc initTrueTypeFontUtil*(this: TrueTypeFontUtil) =
        initTrueTypeFontUtilBase(this, 1)
        this.initFieldsTrueTypeFontUtil()

proc newTrueTypeFontUtil*(): TrueTypeFontUtil =
    result = TrueTypeFontUtil()
    initTrueTypeFontUtil(result)

method getAsTextureSize*(this: TrueTypeFontUtil, textureSize: int32): int32 {.discardable.} =
        raise newJException("RuntimeException", "")

method getCellSize*(this: TrueTypeFontUtil, cellSize: int32): int32 {.discardable.} =
        raise newJException("RuntimeException", "")

method getFontBitmap*(this: TrueTypeFontUtil, filename: string, fontSize: int32, cellSize: int32, basicColor: BasicColor): Image {.base, discardable.} =
        raise newJException("RuntimeException", "")

method saveFontAtlasAsFile*(this: TrueTypeFontUtil) {.base.} =
        discard

method getFontBitmapGL*(this: TrueTypeFontUtil, gl: GL10, filename: string, cellSize: int32, basicColor: BasicColor): Image {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getFontWidths*(this: TrueTypeFontUtil, filename: string, fontSize: int32): JArray[int32] {.base, discardable.} =
        raise newJException("RuntimeException", "")

when declared(newTrueTypeFontUtilHook0):
    newTrueTypeFontUtilHook0 = proc (): TrueTypeFontUtilBase = newTrueTypeFontUtil()

