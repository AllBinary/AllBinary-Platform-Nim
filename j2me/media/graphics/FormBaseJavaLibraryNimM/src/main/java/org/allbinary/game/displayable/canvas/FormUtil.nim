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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule

type
    FormUtil* = ref object of JObject

proc newFormUtil*(): FormUtil
proc getInstance*(t: typedesc[FormUtil]): FormUtil {.discardable.}
method createFormRectangle*(this: FormUtil): Rectangle {.base, discardable.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule

var FormUtil_instanceValue: FormUtil
var FormUtil_instanceSet = false
proc instance*(t: typedesc[FormUtil]): FormUtil =
    if not FormUtil_instanceSet:
        FormUtil_instanceSet = true
        FormUtil_instanceValue = newFormUtil()
    FormUtil_instanceValue

proc initFormUtil*(this: FormUtil) =
    discard

proc newFormUtil*(): FormUtil =
    result = FormUtil()
    initFormUtil(result)

proc getInstance*(t: typedesc[FormUtil]): FormUtil {.discardable.} =
        return FormUtil.instance

method createFormRectangle*(this: FormUtil): Rectangle {.base, discardable.} =
        let displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        let pointFactory: PointFactory = PointFactory.getInstance()
        let rectangle: Rectangle = newRectangle(pointFactory.createXY(30, 10), displayInfo.getLastWidth() -% 30, displayInfo.getLastHeight() -% 35)
        return rectangle

