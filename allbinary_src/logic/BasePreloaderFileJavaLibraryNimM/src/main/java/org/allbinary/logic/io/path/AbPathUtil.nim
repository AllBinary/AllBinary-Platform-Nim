#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.io.path

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/io/path/AbPath as AbPathModule
export AbPathModule

type
    AbPathUtil* = ref object of JObject
        NO_ABPATH*: AbPath

proc newAbPathUtil*(): AbPathUtil
proc getInstance*(t: typedesc[AbPathUtil]): AbPathUtil {.discardable.}

var AbPathUtil_instanceValue: AbPathUtil
var AbPathUtil_instanceSet = false
proc instance*(t: typedesc[AbPathUtil]): AbPathUtil =
    if not AbPathUtil_instanceSet:
        AbPathUtil_instanceSet = true
        AbPathUtil_instanceValue = newAbPathUtil()
    AbPathUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAbPathUtil(this: AbPathUtil) =
    this.NO_ABPATH = AbPath.createAbPath()
    discard

proc initAbPathUtil*(this: AbPathUtil) =
    this.initFieldsAbPathUtil()

proc newAbPathUtil*(): AbPathUtil =
    result = AbPathUtil()
    initAbPathUtil(result)

proc getInstance*(t: typedesc[AbPathUtil]): AbPathUtil {.discardable.} =
        return AbPathUtil.instance

