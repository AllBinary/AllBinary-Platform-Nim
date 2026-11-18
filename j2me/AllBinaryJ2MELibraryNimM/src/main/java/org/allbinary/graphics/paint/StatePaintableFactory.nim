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
# package org.allbinary.graphics.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/paint/StatePaintable as StatePaintableModule
export StatePaintableModule

type
    StatePaintableFactory* = ref object of JObject

proc newStatePaintableFactory*(): StatePaintableFactory
proc getInstance*(t: typedesc[StatePaintableFactory]): StatePaintable {.discardable.}

var StatePaintableFactory_instanceValue: StatePaintable
var StatePaintableFactory_instanceSet = false
proc instance*(t: typedesc[StatePaintableFactory]): StatePaintable =
    if not StatePaintableFactory_instanceSet:
        StatePaintableFactory_instanceSet = true
        StatePaintableFactory_instanceValue = newStatePaintable()
    StatePaintableFactory_instanceValue

proc initStatePaintableFactory*(this: StatePaintableFactory) =
    discard

proc newStatePaintableFactory*(): StatePaintableFactory =
    result = StatePaintableFactory()
    initStatePaintableFactory(result)

proc getInstance*(t: typedesc[StatePaintableFactory]): StatePaintable {.discardable.} =
        return StatePaintableFactory.instance

