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
# package org.allbinary.input.motion.gesture.configuration

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration as MotionGestureConfigurationModule
export MotionGestureConfigurationModule

type
    MotionGestureConfigurationFactory* = ref object of JObject

proc newMotionGestureConfigurationFactory*(): MotionGestureConfigurationFactory
proc initMotionGestureConfigurationFactory*(this: MotionGestureConfigurationFactory)
proc getInstance*(t: typedesc[MotionGestureConfigurationFactory]): MotionGestureConfiguration {.discardable.}

var MotionGestureConfigurationFactory_configValue: MotionGestureConfiguration
var MotionGestureConfigurationFactory_configSet = false
proc config*(t: typedesc[MotionGestureConfigurationFactory]): MotionGestureConfiguration =
    if not MotionGestureConfigurationFactory_configSet:
        MotionGestureConfigurationFactory_configSet = true
        MotionGestureConfigurationFactory_configValue = newMotionGestureConfiguration()
    MotionGestureConfigurationFactory_configValue
proc `config=`*(t: typedesc[MotionGestureConfigurationFactory], value: MotionGestureConfiguration) =
    MotionGestureConfigurationFactory_configSet = true
    MotionGestureConfigurationFactory_configValue = value

proc initMotionGestureConfigurationFactory*(this: MotionGestureConfigurationFactory) =
        discard
        discard

proc newMotionGestureConfigurationFactory*(): MotionGestureConfigurationFactory =
    result = MotionGestureConfigurationFactory()
    initMotionGestureConfigurationFactory(result)

proc getInstance*(t: typedesc[MotionGestureConfigurationFactory]): MotionGestureConfiguration {.discardable.} =
        return MotionGestureConfigurationFactory.config

