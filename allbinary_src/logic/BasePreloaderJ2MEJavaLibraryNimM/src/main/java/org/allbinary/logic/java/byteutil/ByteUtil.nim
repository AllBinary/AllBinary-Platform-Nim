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
# package org.allbinary.logic.java.byteutil

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ByteUtil* = ref object of JObject

proc newByteUtil*(): ByteUtil
proc initByteUtil*(this: ByteUtil)
proc getInstance*(t: typedesc[ByteUtil]): ByteUtil {.discardable.}
method `xor`*(this: ByteUtil, array: JArray[int8], mask: int8): JArray[int8] {.base, discardable.}
method `not`*(this: ByteUtil, array: JArray[int8]): JArray[int8] {.base, discardable.}
method xorByte*(this: ByteUtil, array: JArray[int8], index: int32): JArray[int8] {.base, discardable.}
method compare*(this: ByteUtil, newByteArray: JArray[int8], oldByteArray: JArray[int8]): bool {.base, discardable.}
method compareWithStats*(this: ByteUtil, newByteArray: JArray[int8], newSize: int32, oldByteArray: JArray[int8], stats: JArray[int32]): bool {.base, discardable.}

var ByteUtil_instanceValue: ByteUtil
var ByteUtil_instanceSet = false
proc instance*(t: typedesc[ByteUtil]): ByteUtil =
    if not ByteUtil_instanceSet:
        ByteUtil_instanceSet = true
        ByteUtil_instanceValue = newByteUtil()
    ByteUtil_instanceValue

proc getInstance*(t: typedesc[ByteUtil]): ByteUtil {.discardable.} =
        return ByteUtil.instance

proc initByteUtil*(this: ByteUtil) =
        discard
        discard

proc newByteUtil*(): ByteUtil =
    result = ByteUtil()
    initByteUtil(result)

method `xor`*(this: ByteUtil, array: JArray[int8], mask: int8): JArray[int8] {.base, discardable.} =
        let bytes: JArray[int8] = newJArray[int8](array.length, default(int8))
        let size: int32 = array.length
        var index: int32 = 0
        var currentByte: int8 = 0
        while index < size:
            currentByte = array[index]
            bytes[index] = jToInt8((currentByte xor mask))
            index = index +% 1
        return bytes

method `not`*(this: ByteUtil, array: JArray[int8]): JArray[int8] {.base, discardable.} =
        let bytes: JArray[int8] = newJArray[int8](array.length, default(int8))
        let size: int32 = array.length
        var index: int32 = 0
        while index < size:
            bytes[index] = jToInt8((not array[index]))
            index = index +% 1
        return bytes

method xorByte*(this: ByteUtil, array: JArray[int8], index: int32): JArray[int8] {.base, discardable.} =
        var mask: int8 = 0
        if index == 0:
            mask = 1
        if index == 1:
            mask = 2
        if index == 2:
            mask = 4
        if index == 3:
            mask = 8
        if index == 4:
            mask = 16
        if index == 5:
            mask = 32
        if index == 6:
            mask = 64
        if index == 7:
            mask = jToInt8(-127)
        return this.`xor`(array, mask)

method compare*(this: ByteUtil, newByteArray: JArray[int8], oldByteArray: JArray[int8]): bool {.base, discardable.} =
        if newByteArray.length != oldByteArray.length:
            return false
        else:
            discard
        let size: int32 = newByteArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                if newByteArray[index] != oldByteArray[index]:
                    return false
        return true

method compareWithStats*(this: ByteUtil, newByteArray: JArray[int8], newSize: int32, oldByteArray: JArray[int8], stats: JArray[int32]): bool {.base, discardable.} =
        if newSize != oldByteArray.length:
            stats[0] = -1
            stats[2] = newSize
            stats[3] = oldByteArray.length
            return false
        else:
            stats[0] = newSize
        stats[1] = 0
        let size: int32 = newSize
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                if newByteArray[index] != oldByteArray[index]:
                    return false
                stats[1] = stats[1] +% 1
        return true

