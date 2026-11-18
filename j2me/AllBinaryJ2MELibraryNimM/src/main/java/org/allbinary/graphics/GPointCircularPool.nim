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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/cache/BaseCircularPool as BaseCircularPoolModule
export BaseCircularPoolModule

type
    GPointCircularPool* = ref object of BaseCircularPool

proc newGPointCircularPool*(size: int32): GPointCircularPool
proc initGPointCircularPool*(this: GPointCircularPool, size: int32)
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/graphics/CustomGPoint as CustomGPointModule
export CustomGPointModule


proc initGPointCircularPool*(this: GPointCircularPool, size: int32) =
        initBaseCircularPool(this)
        this.circularIndexUtil = CircularIndexUtil.createInstance(size)
        this.OBJECT_ARRAY = newJArray[JObject](size, default(JObject))
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                this.OBJECT_ARRAY[index] = CustomGPoint.getInstance3(0, 0)

proc newGPointCircularPool*(size: int32): GPointCircularPool =
    result = GPointCircularPool()
    initGPointCircularPool(result, size)

when declared(newGPointCircularPoolHook1):
    newGPointCircularPoolHook1 = proc (size: int32): BaseCircularPool = newGPointCircularPool(size)

