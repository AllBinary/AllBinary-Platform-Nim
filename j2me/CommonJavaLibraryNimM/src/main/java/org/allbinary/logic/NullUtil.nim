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

#ActualPlatform
type
    NullUtil* = ref object of JObject
        NULL_OBJECT*: JObject
        NULL_CLASS*: string
        NULL_OBJECT_ARRAY*: JArray[JObject]
        NULL_CHAR_ARRAY*: JArray[uint16]
        NULL_BYTE_ARRAY*: JArray[int8]
        NULL_SHORT_ARRAY_ARRAY*: JArray[JArray[int16]]
        NULL_INT_ARRAY*: JArray[int32]
        NULL_INT_ARRAY_ARRAY*: JArray[JArray[int32]]
        NULL_INT_ARRAY_ARRAY_ARRAY*: JArray[JArray[JArray[int32]]]
        NULL_FLOAT_ARRAY*: JArray[float32]

proc newNullUtil*(): NullUtil
proc getInstance*(t: typedesc[NullUtil]): NullUtil {.discardable.}

var NullUtil_instanceValue: NullUtil
var NullUtil_instanceSet = false
proc instance*(t: typedesc[NullUtil]): NullUtil =
    if not NullUtil_instanceSet:
        NullUtil_instanceSet = true
        NullUtil_instanceValue = newNullUtil()
    NullUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsNullUtil(this: NullUtil) =
    this.NULL_OBJECT = JObject()
    this.NULL_CLASS = jClassName(this.NULL_OBJECT)
    this.NULL_OBJECT_ARRAY = newJArray[JObject](0, default(JObject))
    this.NULL_CHAR_ARRAY = newJArray[uint16](0, default(uint16))
    this.NULL_BYTE_ARRAY = newJArray[int8](0, default(int8))
    this.NULL_SHORT_ARRAY_ARRAY = newJArrayOf[JArray[int16]](0, proc (): JArray[int16] = newJArray[int16](0, default(int16)))
    this.NULL_INT_ARRAY = newJArray[int32](0, default(int32))
    this.NULL_INT_ARRAY_ARRAY = newJArrayOf[JArray[int32]](0, proc (): JArray[int32] = newJArray[int32](0, default(int32)))
    this.NULL_INT_ARRAY_ARRAY_ARRAY = newJArrayOf[JArray[JArray[int32]]](0, proc (): JArray[JArray[int32]] = newJArrayOf[JArray[int32]](0, proc (): JArray[int32] = newJArray[int32](0, default(int32))))
    this.NULL_FLOAT_ARRAY = newJArray[float32](0, default(float32))
    discard

proc initNullUtil*(this: NullUtil) =
    this.initFieldsNullUtil()

proc newNullUtil*(): NullUtil =
    result = NullUtil()
    initNullUtil(result)

proc getInstance*(t: typedesc[NullUtil]): NullUtil {.discardable.} =
        return NullUtil.instance

