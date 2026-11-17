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
# package org.allbinary.logic.util.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/cache/BaseCircularPool as BaseCircularPoolModule
export BaseCircularPoolModule
import org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface as AllBinaryEventObjectFactoryInterfaceModule
export AllBinaryEventObjectFactoryInterfaceModule

type
    AllBinaryEventCircularPool* = ref object of BaseCircularPool

proc newAllBinaryEventCircularPool*(max: int32): AllBinaryEventCircularPool
proc initAllBinaryEventCircularPool*(this: AllBinaryEventCircularPool, max: int32)
method initAllBinaryEventCircularPool*(this: AllBinaryEventCircularPool, allBinaryEventObjectFactoryInterface: AllBinaryEventObjectFactoryInterface) {.base.}
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


proc initAllBinaryEventCircularPool*(this: AllBinaryEventCircularPool, max: int32) =
        initBaseCircularPool(this)
        this.OBJECT_ARRAY = newJArray[JObject](max, default(JObject))
        this.circularIndexUtil = CircularIndexUtil.createInstance(max)

proc newAllBinaryEventCircularPool*(max: int32): AllBinaryEventCircularPool =
    result = AllBinaryEventCircularPool()
    initAllBinaryEventCircularPool(result, max)

method initAllBinaryEventCircularPool*(this: AllBinaryEventCircularPool, allBinaryEventObjectFactoryInterface: AllBinaryEventObjectFactoryInterface) {.base.} =
        this.circularIndexUtil.setIndex(0)
        var size: int32 = this.circularIndexUtil.getSize()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance()

when declared(newAllBinaryEventCircularPoolHook1):
    newAllBinaryEventCircularPoolHook1 = proc (max: int32): BaseCircularPool = newAllBinaryEventCircularPool(max)

