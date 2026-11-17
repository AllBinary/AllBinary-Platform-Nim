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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    BasicColorUtil* = ref object of JObject
        ZERO_ARRAY*: JArray[BasicColor]
        ALPHA*: int32
        isAlpha*: bool
        ffOpaque*: bool

proc newBasicColorUtil*(): BasicColorUtil
proc getInstance*(t: typedesc[BasicColorUtil]): BasicColorUtil {.discardable.}
method getRGB*(this: BasicColorUtil, red: int32, green: int32, blue: int32): int32 {.base, discardable.}
method getARGB*(this: BasicColorUtil, alphaValue: int32, r: int32, g: int32, b: int32): int32 {.base, discardable.}
method get*(this: BasicColorUtil, alphaValue: int32, color: int32): int32 {.base, discardable.}
method invert*(this: BasicColorUtil, color: int32): int32 {.base, discardable.}

var BasicColorUtil_instanceValue: BasicColorUtil
var BasicColorUtil_instanceSet = false
proc instance*(t: typedesc[BasicColorUtil]): BasicColorUtil =
    if not BasicColorUtil_instanceSet:
        BasicColorUtil_instanceSet = true
        BasicColorUtil_instanceValue = newBasicColorUtil()
    BasicColorUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBasicColorUtil(this: BasicColorUtil) =
    this.ZERO_ARRAY = newJArray[BasicColor](0, default(BasicColor))
    this.ALPHA = cast[int32](0xFF000000'u32)
    this.isAlpha = true
    this.ffOpaque = true
    discard

proc initBasicColorUtil*(this: BasicColorUtil) =
    this.initFieldsBasicColorUtil()

proc newBasicColorUtil*(): BasicColorUtil =
    result = BasicColorUtil()
    initBasicColorUtil(result)

proc getInstance*(t: typedesc[BasicColorUtil]): BasicColorUtil {.discardable.} =
        return BasicColorUtil.instance

method getRGB*(this: BasicColorUtil, red: int32, green: int32, blue: int32): int32 {.base, discardable.} =
        var value: int32 = 0
        if this.isAlpha:
            if this.ffOpaque:
                value = this.ALPHA
        value = (red shl 16) or value
        value = (green shl 8) or value
        value = blue or value
        return value

method getARGB*(this: BasicColorUtil, alphaValue: int32, r: int32, g: int32, b: int32): int32 {.base, discardable.} =
        return ((alphaValue shl 24) and this.ALPHA) +% ((r shl 16) and 0x00FF0000) +% ((g shl 8) and 0x0000FF00) +% (b and 0x000000FF)

method get*(this: BasicColorUtil, alphaValue: int32, color: int32): int32 {.base, discardable.} =
        return ((alphaValue shl 24) and this.ALPHA) +% color

method invert*(this: BasicColorUtil, color: int32): int32 {.base, discardable.} =
        return (0xFFFFFF -% color) or this.ALPHA

