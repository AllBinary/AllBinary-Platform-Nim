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
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CircularIndexUtil* = ref object of JObject
        index*: int32
        lastIndex*: int32
        size*: int32

proc newCircularIndexUtil*(index: int32, size: int32): CircularIndexUtil
proc initCircularIndexUtil*(this: CircularIndexUtil, index: int32, size: int32)
method next*(this: CircularIndexUtil): int32 {.base, discardable.}
method previous*(this: CircularIndexUtil): int32 {.base, discardable.}
method setIndex*(this: CircularIndexUtil, index: int32) {.base.}
method getIndex*(this: CircularIndexUtil): int32 {.base, discardable.}
proc createInstance*(t: typedesc[CircularIndexUtil], max: int32): CircularIndexUtil {.discardable.}
proc createInstanceAt*(t: typedesc[CircularIndexUtil], index: int32, max: int32): CircularIndexUtil {.discardable.}
method setSize*(this: CircularIndexUtil, size: int32) {.base.}
method getSize*(this: CircularIndexUtil): int32 {.base, discardable.}
method toString*(this: CircularIndexUtil): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule

var CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILValue: CircularIndexUtil
var CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILSet = false
proc NULL_CIRCULAR_INDEX_UTIL*(t: typedesc[CircularIndexUtil]): CircularIndexUtil =
    if not CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILSet:
        CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILSet = true
        CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILValue = newCircularIndexUtil(0, 0)
    CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILValue

# Java field initializers run after the base initializer
proc initFieldsCircularIndexUtil(this: CircularIndexUtil) =
    this.index = 0
    this.lastIndex = 0
    this.size = 0
    discard

proc initCircularIndexUtil*(this: CircularIndexUtil, index: int32, size: int32) =
        this.initFieldsCircularIndexUtil()
        this.setSize(size)
        this.setIndex(index)

proc newCircularIndexUtil*(index: int32, size: int32): CircularIndexUtil =
    result = CircularIndexUtil()
    initCircularIndexUtil(result, index, size)

method next*(this: CircularIndexUtil): int32 {.base, discardable.} =
        if this.index >= this.lastIndex:
            this.index = 0
        else:
            this.index = this.index +% 1
        return this.index

method previous*(this: CircularIndexUtil): int32 {.base, discardable.} =
        if this.index < 1:
            this.index = this.lastIndex
        else:
            this.index = this.index -% 1
        return this.index

method setIndex*(this: CircularIndexUtil, index: int32) {.base.} =
        if index > this.lastIndex:
            return
        this.index = index

method getIndex*(this: CircularIndexUtil): int32 {.base, discardable.} =
        return this.index

proc createInstance*(t: typedesc[CircularIndexUtil], max: int32): CircularIndexUtil {.discardable.} =
        return newCircularIndexUtil(0, max)

proc createInstanceAt*(t: typedesc[CircularIndexUtil], index: int32, max: int32): CircularIndexUtil {.discardable.} =
        return newCircularIndexUtil(index, max)

method setSize*(this: CircularIndexUtil, size: int32) {.base.} =
        this.size = size
        this.lastIndex = size -% 1
        this.index = 0

method getSize*(this: CircularIndexUtil): int32 {.base, discardable.} =
        return this.size

method toString*(this: CircularIndexUtil): string {.discardable.} =
        return newStringMaker().append(CommonLabels.getInstance().INDEX_LABEL).appendint(this.index).append("lastIndex: ").appendint(this.lastIndex).append("size: ").appendint(this.size).toString()

