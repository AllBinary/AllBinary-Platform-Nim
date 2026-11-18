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
# package org.allbinary.android.input.motion

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent as AnalogControllerConfigurationEventModule
export AnalogControllerConfigurationEventModule

type
    AnalogControllerConfigurationFactory* = ref object of JObject
        SCALE_FACTOR*: int32
        SCALE_VALUE*: int32
        available*: bool
        analogControllerConfigurationEvent*: AnalogControllerConfigurationEvent

proc newAnalogControllerConfigurationFactory*(): AnalogControllerConfigurationFactory
proc initAnalogControllerConfigurationFactory*(this: AnalogControllerConfigurationFactory)
proc getInstance*(t: typedesc[AnalogControllerConfigurationFactory]): AnalogControllerConfigurationFactory {.discardable.}
method isAvailable*(this: AnalogControllerConfigurationFactory): bool {.base, discardable.}
method setAvailable*(this: AnalogControllerConfigurationFactory, available: bool) {.base.}
import org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler as AnalogControllerConfigurationEventHandlerModule
export AnalogControllerConfigurationEventHandlerModule
import org/allbinary/logic/math/ScaleFactorFactory as ScaleFactorFactoryModule
export ScaleFactorFactoryModule

var AnalogControllerConfigurationFactory_instanceValue: AnalogControllerConfigurationFactory
var AnalogControllerConfigurationFactory_instanceSet = false
proc instance*(t: typedesc[AnalogControllerConfigurationFactory]): AnalogControllerConfigurationFactory =
    if not AnalogControllerConfigurationFactory_instanceSet:
        AnalogControllerConfigurationFactory_instanceSet = true
        AnalogControllerConfigurationFactory_instanceValue = newAnalogControllerConfigurationFactory()
    AnalogControllerConfigurationFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAnalogControllerConfigurationFactory(this: AnalogControllerConfigurationFactory) =
    this.SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
    this.SCALE_VALUE = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    this.available = false
    this.analogControllerConfigurationEvent = newAnalogControllerConfigurationEvent(this)
    discard

proc getInstance*(t: typedesc[AnalogControllerConfigurationFactory]): AnalogControllerConfigurationFactory {.discardable.} =
        return AnalogControllerConfigurationFactory.instance

proc initAnalogControllerConfigurationFactory*(this: AnalogControllerConfigurationFactory) =
        this.initFieldsAnalogControllerConfigurationFactory()
        discard

proc newAnalogControllerConfigurationFactory*(): AnalogControllerConfigurationFactory =
    result = AnalogControllerConfigurationFactory()
    initAnalogControllerConfigurationFactory(result)

method isAvailable*(this: AnalogControllerConfigurationFactory): bool {.base, discardable.} =
        return this.available

method setAvailable*(this: AnalogControllerConfigurationFactory, available: bool) {.base.} =
        this.available = available
        AnalogControllerConfigurationEventHandler.getInstance().fireEvent(this.analogControllerConfigurationEvent)

