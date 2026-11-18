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
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    AllBinaryLayerFactory* = ref object of AllBinaryLayerFactoryInterface
        rectangle*: Rectangle

proc newAllBinaryLayerFactory*(rectangle: Rectangle): AllBinaryLayerFactory
proc initAllBinaryLayerFactory*(this: AllBinaryLayerFactory, rectangle: Rectangle)
method getInstance*(this: AllBinaryLayerFactory): AllBinaryLayer {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule


# Java field initializers run after the base initializer
proc initFieldsAllBinaryLayerFactory(this: AllBinaryLayerFactory) =
    
    discard

proc initAllBinaryLayerFactory*(this: AllBinaryLayerFactory, rectangle: Rectangle) =
        this.initFieldsAllBinaryLayerFactory()
        this.rectangle = rectangle

proc newAllBinaryLayerFactory*(rectangle: Rectangle): AllBinaryLayerFactory =
    result = AllBinaryLayerFactory()
    initAllBinaryLayerFactory(result, rectangle)

method getInstance*(this: AllBinaryLayerFactory): AllBinaryLayer {.discardable.} =
        return newAllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, this.rectangle, ViewPosition.getInstanceD())

