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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule

type
    RectangleFactory* = ref object of JObject

proc newRectangleFactory*(): RectangleFactory
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule

var RectangleFactory_SINGLETONValue: Rectangle
var RectangleFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[RectangleFactory]): Rectangle =
    if not RectangleFactory_SINGLETONSet:
        RectangleFactory_SINGLETONSet = true
        RectangleFactory_SINGLETONValue = newRectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0)
    RectangleFactory_SINGLETONValue
var RectangleFactory_ARRAY_OF_ARRAYSValue: JArray[JArray[Rectangle]]
var RectangleFactory_ARRAY_OF_ARRAYSSet = false
proc ARRAY_OF_ARRAYS*(t: typedesc[RectangleFactory]): JArray[JArray[Rectangle]] =
    if not RectangleFactory_ARRAY_OF_ARRAYSSet:
        RectangleFactory_ARRAY_OF_ARRAYSSet = true
        RectangleFactory_ARRAY_OF_ARRAYSValue = newJArrayOf[JArray[Rectangle]](0, proc (): JArray[Rectangle] = newJArray[Rectangle](0, default(Rectangle)))
    RectangleFactory_ARRAY_OF_ARRAYSValue

proc initRectangleFactory*(this: RectangleFactory) =
    discard

proc newRectangleFactory*(): RectangleFactory =
    result = RectangleFactory()
    initRectangleFactory(result)

