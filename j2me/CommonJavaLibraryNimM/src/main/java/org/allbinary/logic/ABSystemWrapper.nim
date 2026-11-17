#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
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
import java/lang/System as SystemModule
export SystemModule

type
    ABSystemWrapper* = ref object of JObject

proc newABSystemWrapper*(): ABSystemWrapper
proc getInstance*(t: typedesc[ABSystemWrapper]): ABSystemWrapper {.discardable.}
method arraycopy*(this: ABSystemWrapper, src: JObject, srcPos: int32, dest: JObject, destPos: int32, length: int32) {.base.}
method currentTimeMillis*(this: ABSystemWrapper): int64 {.base, discardable.}

var ABSystemWrapper_instanceValue: ABSystemWrapper
var ABSystemWrapper_instanceSet = false
proc instance*(t: typedesc[ABSystemWrapper]): ABSystemWrapper =
    if not ABSystemWrapper_instanceSet:
        ABSystemWrapper_instanceSet = true
        ABSystemWrapper_instanceValue = newABSystemWrapper()
    ABSystemWrapper_instanceValue

proc initABSystemWrapper*(this: ABSystemWrapper) =
    discard

proc newABSystemWrapper*(): ABSystemWrapper =
    result = ABSystemWrapper()
    initABSystemWrapper(result)

proc getInstance*(t: typedesc[ABSystemWrapper]): ABSystemWrapper {.discardable.} =
        return ABSystemWrapper.instance

method arraycopy*(this: ABSystemWrapper, src: JObject, srcPos: int32, dest: JObject, destPos: int32, length: int32) {.base.} =
        jArraycopy(src, srcPos, dest, destPos, length)

method currentTimeMillis*(this: ABSystemWrapper): int64 {.base, discardable.} =
        return jCurrentTimeMillis()

