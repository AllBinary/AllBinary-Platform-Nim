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
# package org.allbinary.logic.communication.log.config.type

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/config/type/LogConfigType as LogConfigTypeModule
export LogConfigTypeModule

type
    LogConfigTypeFactory* = ref object of JObject
        NO_DESCRIPTION*: string
        OS*: LogConfigType
        FACTORYERROR*: LogConfigType

proc newLogConfigTypeFactory*(): LogConfigTypeFactory
proc initLogConfigTypeFactory*(this: LogConfigTypeFactory)
proc getInstance*(t: typedesc[LogConfigTypeFactory]): LogConfigTypeFactory {.discardable.}
import org/allbinary/logic/communication/log/config/type/LogConfigTypes as LogConfigTypesModule
export LogConfigTypesModule

var LogConfigTypeFactory_instanceValue: LogConfigTypeFactory
var LogConfigTypeFactory_instanceSet = false
proc instance*(t: typedesc[LogConfigTypeFactory]): LogConfigTypeFactory =
    if not LogConfigTypeFactory_instanceSet:
        LogConfigTypeFactory_instanceSet = true
        LogConfigTypeFactory_instanceValue = newLogConfigTypeFactory()
    LogConfigTypeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLogConfigTypeFactory(this: LogConfigTypeFactory) =
    this.NO_DESCRIPTION = "No Description"
    this.OS = newLogConfigType("Operating System", this.NO_DESCRIPTION)
    this.FACTORYERROR = newLogConfigType("Factory Error", this.NO_DESCRIPTION)
    discard

proc getInstance*(t: typedesc[LogConfigTypeFactory]): LogConfigTypeFactory {.discardable.} =
        return LogConfigTypeFactory.instance

proc initLogConfigTypeFactory*(this: LogConfigTypeFactory) =
        this.initFieldsLogConfigTypeFactory()
        LogConfigTypes.LOGGING.add(this.OS)
        LogConfigTypes.LOGGING.add(this.FACTORYERROR)

proc newLogConfigTypeFactory*(): LogConfigTypeFactory =
    result = LogConfigTypeFactory()
    initLogConfigTypeFactory(result)

