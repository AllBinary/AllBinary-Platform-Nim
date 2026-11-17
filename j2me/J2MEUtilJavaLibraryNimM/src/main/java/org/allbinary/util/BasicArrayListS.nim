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
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    BasicArrayListS* = ref object of BasicArrayList

proc newBasicArrayListS*(size: int32): BasicArrayListS
proc initBasicArrayListS*(this: BasicArrayListS, size: int32)
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


proc initBasicArrayListS*(this: BasicArrayListS, size: int32) =
        initBasicArrayList(this, NullUtil.getInstance().NULL_OBJECT_ARRAY)
        if size < 0:
            raise newJException("IllegalArgumentException", newStringMaker().append("Init Size Exception: ").appendint(size).toString())
        this.objectArray = newJArray[JObject](size, default(JObject))

proc newBasicArrayListS*(size: int32): BasicArrayListS =
    result = BasicArrayListS()
    initBasicArrayListS(result, size)

when declared(newBasicArrayListSHook1):
    newBasicArrayListSHook1 = proc (size: int32): BasicArrayList = newBasicArrayListS(size)

