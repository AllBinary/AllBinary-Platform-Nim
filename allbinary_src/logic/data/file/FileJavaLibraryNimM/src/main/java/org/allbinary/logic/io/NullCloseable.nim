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
# package org.allbinary.logic.io

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/Closeable as CloseableModule
export CloseableModule
import java/io/IOException as IOExceptionModule
export IOExceptionModule

type
    NullCloseable* = ref object of Closeable

proc newNullCloseable*(): NullCloseable
method close*(this: NullCloseable)

var NullCloseable_NULL_CLOSEABLEValue: NullCloseable
var NullCloseable_NULL_CLOSEABLESet = false
proc NULL_CLOSEABLEStatic*(t: typedesc[NullCloseable]): NullCloseable =
    if not NullCloseable_NULL_CLOSEABLESet:
        NullCloseable_NULL_CLOSEABLESet = true
        NullCloseable_NULL_CLOSEABLEValue = newNullCloseable()
    NullCloseable_NULL_CLOSEABLEValue

proc initNullCloseable*(this: NullCloseable) =
    discard

proc newNullCloseable*(): NullCloseable =
    result = NullCloseable()
    initNullCloseable(result)

method close*(this: NullCloseable) =
        discard

