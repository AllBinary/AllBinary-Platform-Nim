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
# package org.allbinary.logic

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/ABHashMap as ABHashMapModule
export ABHashMapModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/ABStack as ABStackModule
export ABStackModule
import org/allbinary/util/ABVector as ABVectorModule
export ABVectorModule

#NoPlatform
type
    StdUtil* = ref object of JObject
        EMPTY_VECTOR*: ABVector
        NULL_TABLE*: ABHashtable
        NULL_MAP*: ABHashMap

proc newStdUtil*(): StdUtil
proc getInstance*(t: typedesc[StdUtil]): StdUtil {.discardable.}
method createStack*(this: StdUtil): ABStack {.base, discardable.}
method createVector*(this: StdUtil): ABVector {.base, discardable.}
method createHashtable*(this: StdUtil): ABHashtable {.base, discardable.}
method createHashMap*(this: StdUtil): ABHashMap {.base, discardable.}

var StdUtil_instanceValue: StdUtil
var StdUtil_instanceSet = false
proc instance*(t: typedesc[StdUtil]): StdUtil =
    if not StdUtil_instanceSet:
        StdUtil_instanceSet = true
        StdUtil_instanceValue = newStdUtil()
    StdUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsStdUtil(this: StdUtil) =
    this.EMPTY_VECTOR = this.createVector()
    this.NULL_TABLE = this.createHashtable()
    this.NULL_MAP = this.createHashMap()
    discard

proc initStdUtil*(this: StdUtil) =
    this.initFieldsStdUtil()

proc newStdUtil*(): StdUtil =
    result = StdUtil()
    initStdUtil(result)

proc getInstance*(t: typedesc[StdUtil]): StdUtil {.discardable.} =
        return StdUtil.instance

method createStack*(this: StdUtil): ABStack {.base, discardable.} =
        return newABStack()

method createVector*(this: StdUtil): ABVector {.base, discardable.} =
        return newABVector()

method createHashtable*(this: StdUtil): ABHashtable {.base, discardable.} =
        return newABHashtable()

method createHashMap*(this: StdUtil): ABHashMap {.base, discardable.} =
        return newABHashMap()

