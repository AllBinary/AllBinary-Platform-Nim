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
# package org.allbinary.emulator.device

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Font as FontModule
export FontModule

type
    TrueTypeFontUtilBase* = ref object of JObject
        shortPattern*: string
        patternAsBytes*: JArray[int8]
        pattern*: string
        charArray*: JArray[int16]
        U_characterWidth*: JArray[int32]
        characterArray*: JArray[uint16]
        size*: int32
        lastCapIndex*: int32
        currentFont*: Font
        scale*: int32
        CELLS_PER_ROW*: int32
        fontSize*: int32
        baseCharWidth*: int32
        cellSize*: int32
        textureSize*: int32
        actualCellsPerRow*: int32

proc newTrueTypeFontUtilBase*(scale: int32): TrueTypeFontUtilBase
proc initTrueTypeFontUtilBase*(this: TrueTypeFontUtilBase, scale: int32)
method getAsTextureSize*(this: TrueTypeFontUtilBase, textureSize: int32): int32 {.base, discardable.}
method getCellSize*(this: TrueTypeFontUtilBase, cellSize: int32): int32 {.base, discardable.}
method getYOffset*(this: TrueTypeFontUtilBase): int32 {.base, discardable.}
import org/allbinary/AvianUtil as AvianUtilModule
export AvianUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsTrueTypeFontUtilBase(this: TrueTypeFontUtilBase) =
    
    this.patternAsBytes = newJArrayFromInts[int8]([32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 32, 32, 32, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 32, 32, 32, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 32, 32, 32, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 32, 32, 32, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 32, 32, 32, 33, 36, 37, 96, jToInt8(-62), jToInt8(-84), jToInt8(-62), jToInt8(-84), 34, jToInt8(-62), jToInt8(-93), jToInt8(-62), jToInt8(-93), 94, 38, 42, 40, 32, 32, 32, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 32, 32, 32, 64, 126, 44, 47, 60, 62, 92, 124, jToInt8(-62), jToInt8(-82), jToInt8(-62), jToInt8(-82), jToInt8(-62), jToInt8(-87), jToInt8(-62), jToInt8(-87)])
    this.pattern = jNewString(this.patternAsBytes)
    this.charArray = newJArrayFromInts[int16]([0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6f, 0x50, 0x56, 0x6b, 0x51, 0x52, 0x5a, 0x6a, 0x5c, 0x60, 0x5b, 0x62, 0x72, 0x63, 0x4b, 0x73, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0x6c, 0x69, 0x74, 0x64, 0x75, 0x4c, 0x70, 0xb, 0xc, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x65, 0x76, 0x66, 0x59, 0x61, 0x53, 0x2b, 0x2c, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x67, 0x77, 0x68, 0x71, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x58, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7b, 0x0, 0x0, 0x55, 0x0, 0x79, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0])
    this.U_characterWidth = newJArray[int32](jLength(this.pattern), default(int32))
    this.characterArray = newJArray[uint16](1, default(uint16))
    this.size = jLength(this.pattern)
    this.lastCapIndex = jIndexOf(this.pattern, uint16(ord('Z')))
    this.currentFont = Font.getDefaultFont()
    
    
    
    
    
    
    
    discard

proc initTrueTypeFontUtilBase*(this: TrueTypeFontUtilBase, scale: int32) =
        this.initFieldsTrueTypeFontUtilBase()
        var shortPattern: string = StringUtil.getInstance().EMPTY_STRING
        if AvianUtil.isAvian():
            let shortPatterAsByteArray: JArray[int8] = newJArrayFromInts[int8]([32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, jToInt8(-62), jToInt8(-84), jToInt8(-62), jToInt8(-84), 34, jToInt8(-62), jToInt8(-93), jToInt8(-62), jToInt8(-93), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, jToInt8(-62), jToInt8(-82), jToInt8(-62), jToInt8(-82), jToInt8(-62), jToInt8(-87), jToInt8(-62), jToInt8(-87)])
            shortPattern = jNewString(shortPatterAsByteArray)
        else:
            let shortPatterAsByteArray: JArray[int8] = newJArrayFromInts[int8]([32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, jToInt8(-62), jToInt8(-84), 34, jToInt8(-62), jToInt8(-93), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, jToInt8(-62), jToInt8(-82), jToInt8(-62), jToInt8(-87)])
            shortPattern = jNewString(shortPatterAsByteArray)
        this.shortPattern = shortPattern
        this.scale = scale
        this.CELLS_PER_ROW = 16
        this.fontSize = (20 + 6) *% this.scale
        this.baseCharWidth = this.fontSize +% (6 *% this.scale)
        this.cellSize = this.fontSize +% (6 *% this.scale)
        this.textureSize = this.getAsTextureSize(this.CELLS_PER_ROW *% this.cellSize)
        this.actualCellsPerRow = this.textureSize div this.cellSize

proc newTrueTypeFontUtilBase*(scale: int32): TrueTypeFontUtilBase =
    result = TrueTypeFontUtilBase()
    initTrueTypeFontUtilBase(result, scale)

method getAsTextureSize*(this: TrueTypeFontUtilBase, textureSize: int32): int32 {.base, discardable.} =
        var textureSize = textureSize
        if textureSize <= 64:
            textureSize = 64
        elif textureSize <= 128:
            textureSize = 128
        elif textureSize <= 256:
            textureSize = 256
        elif textureSize <= 512:
            textureSize = 512
        elif textureSize <= 1024:
            textureSize = 1024
        return textureSize

method getCellSize*(this: TrueTypeFontUtilBase, cellSize: int32): int32 {.base, discardable.} =
        var cellSize = cellSize
        if cellSize <= 16:
            cellSize = 16
        elif cellSize <= 32:
            cellSize = 32
        elif cellSize <= 64:
            cellSize = 64
        elif cellSize <= 128:
            cellSize = 128
        elif cellSize <= 256:
            cellSize = 256
        return cellSize

method getYOffset*(this: TrueTypeFontUtilBase): int32 {.base, discardable.} =
        return ((this.scale -% 1) *% this.cellSize)

