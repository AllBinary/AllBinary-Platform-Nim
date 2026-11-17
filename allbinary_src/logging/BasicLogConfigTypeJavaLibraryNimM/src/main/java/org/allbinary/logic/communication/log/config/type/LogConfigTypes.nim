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
# package org.allbinary.logic.communication.log.config.type

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    LogConfigTypes* = ref object of JObject

proc newLogConfigTypes*(): LogConfigTypes
proc initLogConfigTypes*(this: LogConfigTypes)
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var LogConfigTypes_LOGGINGValue: BasicArrayList
var LogConfigTypes_LOGGINGSet = false
proc LOGGING*(t: typedesc[LogConfigTypes]): BasicArrayList =
    if not LogConfigTypes_LOGGINGSet:
        LogConfigTypes_LOGGINGSet = true
        LogConfigTypes_LOGGINGValue = newBasicArrayListD()
    LogConfigTypes_LOGGINGValue
proc `LOGGING=`*(t: typedesc[LogConfigTypes], value: BasicArrayList) =
    LogConfigTypes_LOGGINGSet = true
    LogConfigTypes_LOGGINGValue = value

proc initLogConfigTypes*(this: LogConfigTypes) =
        discard
        discard

proc newLogConfigTypes*(): LogConfigTypes =
    result = LogConfigTypes()
    initLogConfigTypes(result)

