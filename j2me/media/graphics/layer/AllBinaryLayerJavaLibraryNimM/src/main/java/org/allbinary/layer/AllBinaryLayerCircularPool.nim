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
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/cache/BaseCircularPool as BaseCircularPoolModule
export BaseCircularPoolModule
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule

type
    AllBinaryLayerCircularPool* = ref object of BaseCircularPool

proc newAllBinaryLayerCircularPool*(): AllBinaryLayerCircularPool
proc initAllBinaryLayerCircularPool*(this: AllBinaryLayerCircularPool)
method initAllBinaryLayerCircularPool*(this: AllBinaryLayerCircularPool, allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32) {.base.}
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


proc initAllBinaryLayerCircularPool*(this: AllBinaryLayerCircularPool) =
        initBaseCircularPool(this)
        discard

proc newAllBinaryLayerCircularPool*(): AllBinaryLayerCircularPool =
    result = AllBinaryLayerCircularPool()
    initAllBinaryLayerCircularPool(result)

method initAllBinaryLayerCircularPool*(this: AllBinaryLayerCircularPool, allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32) {.base.} =
        this.circularIndexUtil = CircularIndexUtil.createInstance(total)
        this.OBJECT_ARRAY = newJArray[JObject](total, default(JObject))
        block:
            var localIndex: int32 = 0
            while localIndex < total:
                defer: localIndex = localIndex +% 1
                this.OBJECT_ARRAY[localIndex] = allbinaryLayerFactoryInterface.getInstance()

when declared(newAllBinaryLayerCircularPoolHook0):
    newAllBinaryLayerCircularPoolHook0 = proc (): BaseCircularPool = newAllBinaryLayerCircularPool()

