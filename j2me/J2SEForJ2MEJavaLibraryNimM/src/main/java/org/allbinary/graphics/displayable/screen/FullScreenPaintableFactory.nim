#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.screen

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    FullScreenPaintableFactory* = ref object of JObject
        paintable*: Paintable

proc newFullScreenPaintableFactory*(): FullScreenPaintableFactory
proc getInstance*(t: typedesc[FullScreenPaintableFactory]): FullScreenPaintableFactory {.discardable.}
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule

var FullScreenPaintableFactory_instanceValue: FullScreenPaintableFactory
var FullScreenPaintableFactory_instanceSet = false
proc instance*(t: typedesc[FullScreenPaintableFactory]): FullScreenPaintableFactory =
    if not FullScreenPaintableFactory_instanceSet:
        FullScreenPaintableFactory_instanceSet = true
        FullScreenPaintableFactory_instanceValue = newFullScreenPaintableFactory()
    FullScreenPaintableFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsFullScreenPaintableFactory(this: FullScreenPaintableFactory) =
    this.paintable = NullPaintable.getInstance()
    discard

proc initFullScreenPaintableFactory*(this: FullScreenPaintableFactory) =
    this.initFieldsFullScreenPaintableFactory()

proc newFullScreenPaintableFactory*(): FullScreenPaintableFactory =
    result = FullScreenPaintableFactory()
    initFullScreenPaintableFactory(result)

proc getInstance*(t: typedesc[FullScreenPaintableFactory]): FullScreenPaintableFactory {.discardable.} =
        return FullScreenPaintableFactory.instance

