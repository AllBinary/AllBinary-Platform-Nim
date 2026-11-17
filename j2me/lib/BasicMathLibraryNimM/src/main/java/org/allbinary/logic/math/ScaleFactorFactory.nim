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
# package org.allbinary.logic.math

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ScaleFactorFactory* = ref object of JObject
        DEFAULT_SCALE_FACTOR*: int32
        DEFAULT_SCALE_VALUE*: int32

proc newScaleFactorFactory*(): ScaleFactorFactory
proc getInstance*(t: typedesc[ScaleFactorFactory]): ScaleFactorFactory {.discardable.}

var ScaleFactorFactory_instanceValue: ScaleFactorFactory
var ScaleFactorFactory_instanceSet = false
proc instance*(t: typedesc[ScaleFactorFactory]): ScaleFactorFactory =
    if not ScaleFactorFactory_instanceSet:
        ScaleFactorFactory_instanceSet = true
        ScaleFactorFactory_instanceValue = newScaleFactorFactory()
    ScaleFactorFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsScaleFactorFactory(this: ScaleFactorFactory) =
    this.DEFAULT_SCALE_FACTOR = 10
    this.DEFAULT_SCALE_VALUE = 1024
    discard

proc initScaleFactorFactory*(this: ScaleFactorFactory) =
    this.initFieldsScaleFactorFactory()

proc newScaleFactorFactory*(): ScaleFactorFactory =
    result = ScaleFactorFactory()
    initScaleFactorFactory(result)

proc getInstance*(t: typedesc[ScaleFactorFactory]): ScaleFactorFactory {.discardable.} =
        return ScaleFactorFactory.instance

