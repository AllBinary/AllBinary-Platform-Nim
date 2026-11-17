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
# package org.allbinary.logic.math

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PrimitiveLongSingleton* = ref object of JObject
        UNK*: JArray[uint16]
        NUMBER_ARRAY*: JArray[int8]
        NUMBER_CHAR_ARRAY*: JArray[uint16]
        NUMBER_CHAR_ARRAYS*: JArray[JArray[uint16]]
        ZERO*: JArray[uint16]

proc newPrimitiveLongSingleton*(): PrimitiveLongSingleton
proc getInstance*(t: typedesc[PrimitiveLongSingleton]): PrimitiveLongSingleton {.discardable.}
method getNumberFromChar*(this: PrimitiveLongSingleton, numberAsChar: uint16): int8 {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var PrimitiveLongSingleton_instanceValue: PrimitiveLongSingleton
var PrimitiveLongSingleton_instanceSet = false
proc instance*(t: typedesc[PrimitiveLongSingleton]): PrimitiveLongSingleton =
    if not PrimitiveLongSingleton_instanceSet:
        PrimitiveLongSingleton_instanceSet = true
        PrimitiveLongSingleton_instanceValue = newPrimitiveLongSingleton()
    PrimitiveLongSingleton_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPrimitiveLongSingleton(this: PrimitiveLongSingleton) =
    this.UNK = newJArrayFrom[uint16]([uint16(ord('U')), uint16(ord('n')), uint16(ord('k'))])
    this.NUMBER_ARRAY = newJArrayFromInts[int8]([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    this.NUMBER_CHAR_ARRAY = newJArrayFrom[uint16]([uint16(ord('0')), uint16(ord('1')), uint16(ord('2')), uint16(ord('3')), uint16(ord('4')), uint16(ord('5')), uint16(ord('6')), uint16(ord('7')), uint16(ord('8')), uint16(ord('9'))])
    this.NUMBER_CHAR_ARRAYS = newJArrayFrom[JArray[uint16]]([newJArrayFrom[uint16]([uint16(ord('0'))]), newJArrayFrom[uint16]([uint16(ord('1'))]), newJArrayFrom[uint16]([uint16(ord('2'))]), newJArrayFrom[uint16]([uint16(ord('3'))]), newJArrayFrom[uint16]([uint16(ord('4'))]), newJArrayFrom[uint16]([uint16(ord('5'))]), newJArrayFrom[uint16]([uint16(ord('6'))]), newJArrayFrom[uint16]([uint16(ord('7'))]), newJArrayFrom[uint16]([uint16(ord('8'))]), newJArrayFrom[uint16]([uint16(ord('9'))])])
    this.ZERO = newJArrayFrom[uint16]([this.NUMBER_CHAR_ARRAY[0]])
    discard

proc initPrimitiveLongSingleton*(this: PrimitiveLongSingleton) =
    this.initFieldsPrimitiveLongSingleton()

proc newPrimitiveLongSingleton*(): PrimitiveLongSingleton =
    result = PrimitiveLongSingleton()
    initPrimitiveLongSingleton(result)

proc getInstance*(t: typedesc[PrimitiveLongSingleton]): PrimitiveLongSingleton {.discardable.} =
        return PrimitiveLongSingleton.instance

method getNumberFromChar*(this: PrimitiveLongSingleton, numberAsChar: uint16): int8 {.base, discardable.} =
        let size: int32 = this.NUMBER_CHAR_ARRAY.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                if this.NUMBER_CHAR_ARRAY[index] == numberAsChar:
                    return this.NUMBER_ARRAY[index]
        raise newJException("Exception", newStringMaker().append("numberAsChar was not in array: ").appendchar(numberAsChar).toString())

