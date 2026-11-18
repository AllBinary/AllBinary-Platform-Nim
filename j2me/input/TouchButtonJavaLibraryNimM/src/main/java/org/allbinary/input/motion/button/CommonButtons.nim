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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule

type
    CommonButtons* = ref object of JObject
        STANDARD_BUTTON_SIZE*: int32
        NORMAL_BUTTON*: Rectangle
        LARGE_BUTTON*: Rectangle

proc newCommonButtons*(): CommonButtons
proc initCommonButtons*(this: CommonButtons)
proc getInstance*(t: typedesc[CommonButtons]): CommonButtons {.discardable.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule

var CommonButtons_instanceValue: CommonButtons
var CommonButtons_instanceSet = false
proc instance*(t: typedesc[CommonButtons]): CommonButtons =
    if not CommonButtons_instanceSet:
        CommonButtons_instanceSet = true
        CommonButtons_instanceValue = newCommonButtons()
    CommonButtons_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCommonButtons(this: CommonButtons) =
    
    
    
    discard

proc getInstance*(t: typedesc[CommonButtons]): CommonButtons {.discardable.} =
        return CommonButtons.instance

proc initCommonButtons*(this: CommonButtons) =
        this.initFieldsCommonButtons()
        var displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        var commonButtonSize: int32 = 128
        while commonButtonSize > 64:
            var totalColumns: int32 = displayInfo.getLastWidth() div commonButtonSize
            var totalRows: int32 = displayInfo.getLastHeight() div commonButtonSize
            var max: int32 = totalColumns
            if totalRows > max:
                max = totalRows
            if max > 9:
                break
            commonButtonSize = ashr(commonButtonSize, 1)
        this.STANDARD_BUTTON_SIZE = commonButtonSize
        this.NORMAL_BUTTON = newRectangle(PointFactory.getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE, this.STANDARD_BUTTON_SIZE)
        this.LARGE_BUTTON = newRectangle(PointFactory.getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE shl 1, this.STANDARD_BUTTON_SIZE shl 1)

proc newCommonButtons*(): CommonButtons =
    result = CommonButtons()
    initCommonButtons(result)

