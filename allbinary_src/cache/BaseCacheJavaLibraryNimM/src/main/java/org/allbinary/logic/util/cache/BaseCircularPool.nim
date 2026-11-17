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
# package org.allbinary.logic.util.cache

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/logic/util/cache/AllBinaryObjectFactoryInterface as AllBinaryObjectFactoryInterfaceModule
export AllBinaryObjectFactoryInterfaceModule

type
    BaseCircularPool* = ref object of JObject
        circularIndexUtil*: CircularIndexUtil
        OBJECT_ARRAY*: JArray[JObject]

proc newBaseCircularPool*(): BaseCircularPool
method getNextInstance*(this: BaseCircularPool): JObject {.base, discardable.}
method init*(this: BaseCircularPool, allBinaryObjectFactoryInterface: AllBinaryObjectFactoryInterface) {.base.}
method getInstance*(this: BaseCircularPool, index: int32): JObject {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule


# Java field initializers run after the base initializer
proc initFieldsBaseCircularPool(this: BaseCircularPool) =
    this.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL
    this.OBJECT_ARRAY = NullUtil.getInstance().NULL_OBJECT_ARRAY
    discard

proc initBaseCircularPool*(this: BaseCircularPool) =
    this.initFieldsBaseCircularPool()

proc newBaseCircularPool*(): BaseCircularPool =
    result = BaseCircularPool()
    initBaseCircularPool(result)

method getNextInstance*(this: BaseCircularPool): JObject {.base, discardable.} =
        var anyType: JObject = this.OBJECT_ARRAY[this.circularIndexUtil.getIndex()]
        this.circularIndexUtil.next()
        return anyType

method init*(this: BaseCircularPool, allBinaryObjectFactoryInterface: AllBinaryObjectFactoryInterface) {.base.} =
        this.circularIndexUtil.setIndex(0)
        var size: int32 = this.circularIndexUtil.getSize()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.OBJECT_ARRAY[index] = allBinaryObjectFactoryInterface.getInstance()

method getInstance*(this: BaseCircularPool, index: int32): JObject {.base, discardable.} =
        return this.OBJECT_ARRAY[index]

