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
# package org.allbinary.logic.math.permutations

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ComparableObject* = ref object of Comparable

proc newComparableObject*(): ComparableObject
method compareTo*(this: ComparableObject, anyType: JObject): int32 {.discardable.}
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule


proc initComparableObject*(this: ComparableObject) =
    discard

proc newComparableObject*(): ComparableObject =
    result = ComparableObject()
    initComparableObject(result)

method compareTo*(this: ComparableObject, anyType: JObject): int32 {.discardable.} =
        if TsUtil.getInstance().hashCode(this) < TsUtil.getInstance().hashCode(anyType):
            return -1
        elif TsUtil.getInstance().hashCode(this) > TsUtil.getInstance().hashCode(anyType):
            return 1
        return 0

