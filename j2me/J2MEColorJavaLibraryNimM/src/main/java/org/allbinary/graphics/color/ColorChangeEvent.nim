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
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    ColorChangeEvent* = ref object of AllBinaryEventObject
        basicColor*: BasicColor

proc newColorChangeEvent*(anyType: JObject): ColorChangeEvent
proc initColorChangeEvent*(this: ColorChangeEvent, anyType: JObject)
method setBasicColorP*(this: ColorChangeEvent, basicColor: BasicColor) {.base.}
method getBasicColorP*(this: ColorChangeEvent): BasicColor {.base, discardable.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


# Java field initializers run after the base initializer
proc initFieldsColorChangeEvent(this: ColorChangeEvent) =
    this.basicColor = BasicColorFactory.getInstance().WHITE
    discard

proc initColorChangeEvent*(this: ColorChangeEvent, anyType: JObject) =
        initAllBinaryEventObject(this, anyType)
        this.initFieldsColorChangeEvent()

proc newColorChangeEvent*(anyType: JObject): ColorChangeEvent =
    result = ColorChangeEvent()
    initColorChangeEvent(result, anyType)

method setBasicColorP*(this: ColorChangeEvent, basicColor: BasicColor) {.base.} =
        this.basicColor = basicColor

method getBasicColorP*(this: ColorChangeEvent): BasicColor {.base, discardable.} =
        return this.basicColor

when declared(newColorChangeEventHook1):
    newColorChangeEventHook1 = proc (anyType: JObject): AllBinaryEventObject = newColorChangeEvent(anyType)

