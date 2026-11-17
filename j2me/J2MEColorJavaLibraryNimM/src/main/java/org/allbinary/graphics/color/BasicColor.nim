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
# package org.allbinary.graphics.color

{.warning[UnusedImport]: off.}
import allbinary_java

type
    BasicColor* = ref object of JObject
        name*: string
        value*: int32
        redComponent*: float32
        greenComponent*: float32
        blueComponent*: float32
        alphaComponent*: float32
        red*: int16
        green*: int16
        blue*: int16
        alpha*: int16

proc newBasicColor*(alphaValue: int32, value: int32, name: string): BasicColor
proc initBasicColor*(this: BasicColor, alphaValue: int32, value: int32, name: string)
method intValue*(this: BasicColor): int32 {.base, discardable.}
method toInt*(this: BasicColor): int32 {.base, discardable.}
method toString*(this: BasicColor): string {.discardable.}
method getName*(this: BasicColor): string {.base, discardable.}
method getRedComponent*(this: BasicColor): float32 {.base, discardable.}
method getGreenComponent*(this: BasicColor): float32 {.base, discardable.}
method getBlueComponent*(this: BasicColor): float32 {.base, discardable.}
method getAlphaComponent*(this: BasicColor): float32 {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/graphics/color/BasicColorUtil as BasicColorUtilModule
export BasicColorUtilModule


# Java field initializers run after the base initializer
proc initFieldsBasicColor(this: BasicColor) =
    
    
    
    
    
    
    
    
    
    
    discard

proc initBasicColor*(this: BasicColor, alphaValue: int32, value: int32, name: string) =
        this.initFieldsBasicColor()
        this.name = name
        var tempValue: int32 = 0
        let basicColorUtil: BasicColorUtil = BasicColorUtil.getInstance()
        if basicColorUtil.isAlpha:
            if basicColorUtil.ffOpaque:
                tempValue = alphaValue or value
            else:
                tempValue = 0x00000000 or value
        else:
            tempValue = value
        var alphaInt: int32 = ((ashr(tempValue, 24)) and 255)
        this.alpha = jToInt16(alphaInt)
        this.alphaComponent = (float32(alphaInt)) / 255'f32
        var redInt: int32 = ((ashr(tempValue, 16)) and 255)
        this.red = jToInt16(redInt)
        this.redComponent = (float32(redInt)) / 255'f32
        var greenInt: int32 = ((ashr(tempValue, 8)) and 255)
        this.green = jToInt16(greenInt)
        this.greenComponent = (float32(greenInt)) / 255'f32
        var blueInt: int32 = ((tempValue) and 255)
        this.blue = jToInt16(blueInt)
        this.blueComponent = (float32(blueInt)) / 255'f32
        this.value = tempValue

proc newBasicColor*(alphaValue: int32, value: int32, name: string): BasicColor =
    result = BasicColor()
    initBasicColor(result, alphaValue, value, name)

method intValue*(this: BasicColor): int32 {.base, discardable.} =
        return this.value

method toInt*(this: BasicColor): int32 {.base, discardable.} =
        return this.value

method toString*(this: BasicColor): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("BasicColor: ")
        stringBuffer.append("Alpha: ")
        stringBuffer.appendshort(this.alpha)
        stringBuffer.append(" Red: ")
        stringBuffer.appendshort(this.red)
        stringBuffer.append(" Green: ")
        stringBuffer.appendshort(this.green)
        stringBuffer.append(" Blue: ")
        stringBuffer.appendshort(this.blue)
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(this.value)
        return stringBuffer.toString()

method getName*(this: BasicColor): string {.base, discardable.} =
        return this.name

method getRedComponent*(this: BasicColor): float32 {.base, discardable.} =
        return this.redComponent

method getGreenComponent*(this: BasicColor): float32 {.base, discardable.} =
        return this.greenComponent

method getBlueComponent*(this: BasicColor): float32 {.base, discardable.} =
        return this.blueComponent

method getAlphaComponent*(this: BasicColor): float32 {.base, discardable.} =
        return this.alphaComponent

