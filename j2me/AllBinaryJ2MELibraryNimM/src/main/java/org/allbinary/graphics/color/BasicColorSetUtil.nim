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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    BasicColorSetUtil* = ref object of JObject

proc newBasicColorSetUtil*(): BasicColorSetUtil
proc initBasicColorSetUtil*(this: BasicColorSetUtil)
proc getInstance*(t: typedesc[BasicColorSetUtil]): BasicColorSetUtil {.discardable.}
method setBasicColorP*(this: BasicColorSetUtil, graphics: Graphics, basicColor: BasicColor) {.base.}
method setBasicColorP3*(this: BasicColorSetUtil, graphics: Graphics, basicColor: BasicColor, value: int32) {.base.}

var BasicColorSetUtil_instanceValue: BasicColorSetUtil
var BasicColorSetUtil_instanceSet = false
proc instance*(t: typedesc[BasicColorSetUtil]): BasicColorSetUtil =
    if not BasicColorSetUtil_instanceSet:
        BasicColorSetUtil_instanceSet = true
        BasicColorSetUtil_instanceValue = newBasicColorSetUtil()
    BasicColorSetUtil_instanceValue

proc getInstance*(t: typedesc[BasicColorSetUtil]): BasicColorSetUtil {.discardable.} =
        return BasicColorSetUtil.instance

proc initBasicColorSetUtil*(this: BasicColorSetUtil) =
        discard
        discard

proc newBasicColorSetUtil*(): BasicColorSetUtil =
    result = BasicColorSetUtil()
    initBasicColorSetUtil(result)

method setBasicColorP*(this: BasicColorSetUtil, graphics: Graphics, basicColor: BasicColor) {.base.} =
        graphics.setColor(basicColor.intValue())

method setBasicColorP3*(this: BasicColorSetUtil, graphics: Graphics, basicColor: BasicColor, value: int32) {.base.} =
        graphics.setColor(value)

