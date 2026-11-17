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
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    ColorTemperatureUtil* = ref object of JObject
        basicColorFactory*: BasicColorFactory

proc newColorTemperatureUtil*(): ColorTemperatureUtil
proc getInstance*(t: typedesc[ColorTemperatureUtil]): ColorTemperatureUtil {.discardable.}
method getBasicColor*(this: ColorTemperatureUtil, thirdTemp: int32): BasicColor {.base, discardable.}

var ColorTemperatureUtil_instanceValue: ColorTemperatureUtil
var ColorTemperatureUtil_instanceSet = false
proc instance*(t: typedesc[ColorTemperatureUtil]): ColorTemperatureUtil =
    if not ColorTemperatureUtil_instanceSet:
        ColorTemperatureUtil_instanceSet = true
        ColorTemperatureUtil_instanceValue = newColorTemperatureUtil()
    ColorTemperatureUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsColorTemperatureUtil(this: ColorTemperatureUtil) =
    this.basicColorFactory = BasicColorFactory.getInstance()
    discard

proc initColorTemperatureUtil*(this: ColorTemperatureUtil) =
    this.initFieldsColorTemperatureUtil()

proc newColorTemperatureUtil*(): ColorTemperatureUtil =
    result = ColorTemperatureUtil()
    initColorTemperatureUtil(result)

proc getInstance*(t: typedesc[ColorTemperatureUtil]): ColorTemperatureUtil {.discardable.} =
        return ColorTemperatureUtil.instance

method getBasicColor*(this: ColorTemperatureUtil, thirdTemp: int32): BasicColor {.base, discardable.} =
        var basicColor: BasicColor = this.basicColorFactory.RED
        if thirdTemp > 3700:
            basicColor = this.basicColorFactory.PURPLE
        elif thirdTemp > 3200:
            basicColor = this.basicColorFactory.BLUE
        elif thirdTemp > 2700:
            basicColor = this.basicColorFactory.PUCE
        elif thirdTemp > 2200:
            basicColor = this.basicColorFactory.WHITE
        elif thirdTemp > 1700:
            basicColor = this.basicColorFactory.GREEN
        elif thirdTemp > 1200:
            basicColor = this.basicColorFactory.YELLOW
        elif thirdTemp > 700:
            basicColor = this.basicColorFactory.ORANGE
        return basicColor

