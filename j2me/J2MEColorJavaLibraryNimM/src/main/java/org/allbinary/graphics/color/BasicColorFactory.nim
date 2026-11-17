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
    BasicColorFactory* = ref object of JObject
        NULL_COLOR*: BasicColor
        TAN*: BasicColor
        SKIN_PINK*: BasicColor
        RED*: BasicColor
        LIGHT_RED*: BasicColor
        DARK_GREEN*: BasicColor
        GREEN*: BasicColor
        LIGHT_GREEN*: BasicColor
        PURPLE*: BasicColor
        BLUE*: BasicColor
        LIGHT_BLUE*: BasicColor
        VERY_LIGHT_BLUE*: BasicColor
        PUCE*: BasicColor
        AQUA*: BasicColor
        YELLOW*: BasicColor
        PINK*: BasicColor
        BLACK*: BasicColor
        GREY*: BasicColor
        LIGHT_GREY*: BasicColor
        DARK_GREY*: BasicColor
        ORANGE*: BasicColor
        BROWN*: BasicColor
        WHITE*: BasicColor
        TRANSPARENT_COLOR*: BasicColor
        TRANSPARENT_GREY*: BasicColor
        TRANSPARENT_BLACK*: BasicColor
        TRANSPARENT_RED*: BasicColor
        CLEAR_COLOR*: BasicColor
        BORDER_COLOR*: BasicColor

proc newBasicColorFactory*(): BasicColorFactory
proc getInstance*(t: typedesc[BasicColorFactory]): BasicColorFactory {.discardable.}
method createInstance*(this: BasicColorFactory, value: int32): BasicColor {.base, discardable.}
method createInstanceA*(this: BasicColorFactory, alphaValue: int32, value: int32): BasicColor {.base, discardable.}
method createInstanceAN*(this: BasicColorFactory, alphaValue: int32, value: int32, name: string): BasicColor {.base, discardable.}
method createInstanceARGB*(this: BasicColorFactory, alphaValue: int32, r: int32, g: int32, b: int32, name: string): BasicColor {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/graphics/color/BasicColorUtil as BasicColorUtilModule
export BasicColorUtilModule

var BasicColorFactory_instanceValue: BasicColorFactory
var BasicColorFactory_instanceSet = false
proc instance*(t: typedesc[BasicColorFactory]): BasicColorFactory =
    if not BasicColorFactory_instanceSet:
        BasicColorFactory_instanceSet = true
        BasicColorFactory_instanceValue = newBasicColorFactory()
    BasicColorFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBasicColorFactory(this: BasicColorFactory) =
    this.NULL_COLOR = this.createInstanceARGB(255, 255, 255, 255, "null color")
    this.TAN = this.createInstance(0xE9D8B5)
    this.SKIN_PINK = this.createInstance(0xFDCECE)
    this.RED = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFF0000, "red")
    this.LIGHT_RED = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFA0A0, "light red")
    this.DARK_GREEN = this.createInstance(0x00FF00)
    this.GREEN = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x00DD00, "green")
    this.LIGHT_GREEN = this.createInstance(0x007700)
    this.PURPLE = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x400040, "purple")
    this.BLUE = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x0000FF, "blue")
    this.LIGHT_BLUE = this.createInstance(0x00aaff)
    this.VERY_LIGHT_BLUE = this.createInstance(0x000033)
    this.PUCE = this.createInstance(0xFF00AA)
    this.AQUA = this.createInstance(0x00FFFF)
    this.YELLOW = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFFF00, "yellow")
    this.PINK = this.createInstance(0xFF00FF)
    this.BLACK = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x000000, "black")
    this.GREY = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xAAAAAA, "grey")
    this.LIGHT_GREY = this.createInstance(0xC0C0C0)
    this.DARK_GREY = this.createInstance(0x404040)
    this.ORANGE = this.createInstance(0xe07718)
    this.BROWN = this.createInstance(0x956B00)
    this.WHITE = this.createInstance(0xFFFFFF)
    this.TRANSPARENT_COLOR = this.createInstanceAN(0x00000000, 0x000000, StringUtil.getInstance().EMPTY_STRING)
    this.TRANSPARENT_GREY = this.createInstanceAN(0x52000000, 0xECECEC, StringUtil.getInstance().EMPTY_STRING)
    this.TRANSPARENT_BLACK = this.createInstanceAN(0x52000000, 0x000000, StringUtil.getInstance().EMPTY_STRING)
    this.TRANSPARENT_RED = this.createInstanceAN(0x52000000, 0xFF0000, StringUtil.getInstance().EMPTY_STRING)
    this.CLEAR_COLOR = this.BLACK
    this.BORDER_COLOR = this.WHITE
    discard

proc initBasicColorFactory*(this: BasicColorFactory) =
    this.initFieldsBasicColorFactory()

proc newBasicColorFactory*(): BasicColorFactory =
    result = BasicColorFactory()
    initBasicColorFactory(result)

proc getInstance*(t: typedesc[BasicColorFactory]): BasicColorFactory {.discardable.} =
        return BasicColorFactory.instance

method createInstance*(this: BasicColorFactory, value: int32): BasicColor {.base, discardable.} =
        return newBasicColor(BasicColorUtil.getInstance().ALPHA, value, StringUtil.getInstance().EMPTY_STRING)

method createInstanceA*(this: BasicColorFactory, alphaValue: int32, value: int32): BasicColor {.base, discardable.} =
        return newBasicColor(alphaValue, value, StringUtil.getInstance().EMPTY_STRING)

method createInstanceAN*(this: BasicColorFactory, alphaValue: int32, value: int32, name: string): BasicColor {.base, discardable.} =
        return newBasicColor(alphaValue, value, name)

method createInstanceARGB*(this: BasicColorFactory, alphaValue: int32, r: int32, g: int32, b: int32, name: string): BasicColor {.base, discardable.} =
        let ALPHA_MASK: int32 = cast[int32](0xFF000000'u32)
        return newBasicColor(alphaValue, ((alphaValue shl 24) and ALPHA_MASK) +% ((r shl 16) and 0x00FF0000) +% ((g shl 8) and 0x0000FF00) +% (b and 0x000000FF), StringUtil.getInstance().EMPTY_STRING)

