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
import java/lang/Long as LongModule
export LongModule

type
    SmallLongFactory* = ref object of JObject
        NEGATIVE_MAX*: int32
        POSITIVE_MAX*: int32
        INTEGER_ARRAY*: JArray[int64]
        STRING_ARRAY*: JArray[string]
        MIN*: int32
        lastMin*: int32
        lastNegativeMin*: int32

proc newSmallLongFactory*(): SmallLongFactory
proc initSmallLongFactory*(this: SmallLongFactory)
proc getInstance*(t: typedesc[SmallLongFactory]): SmallLongFactory {.discardable.}
method initWithRange*(this: SmallLongFactory, value: int32, negativeValue: int32) {.base.}
method init*(this: SmallLongFactory) {.base.}
method getInstanceNoThrow*(this: SmallLongFactory, index: int64): int64 {.base, discardable.}
method getString*(this: SmallLongFactory, index: int32): string {.base, discardable.}

var SmallLongFactory_instanceValue: SmallLongFactory
var SmallLongFactory_instanceSet = false
proc instance*(t: typedesc[SmallLongFactory]): SmallLongFactory =
    if not SmallLongFactory_instanceSet:
        SmallLongFactory_instanceSet = true
        SmallLongFactory_instanceValue = newSmallLongFactory()
    SmallLongFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSmallLongFactory(this: SmallLongFactory) =
    this.NEGATIVE_MAX = 500
    this.POSITIVE_MAX = 0x2D1
    this.INTEGER_ARRAY = newJArray[int64](this.NEGATIVE_MAX +% this.POSITIVE_MAX, default(int64))
    this.STRING_ARRAY = newJArray[string](this.NEGATIVE_MAX +% this.POSITIVE_MAX, default(string))
    this.MIN = 0
    this.lastMin = 0
    this.lastNegativeMin = 0
    discard

proc getInstance*(t: typedesc[SmallLongFactory]): SmallLongFactory {.discardable.} =
        return SmallLongFactory.instance

method initWithRange*(this: SmallLongFactory, value: int32, negativeValue: int32) {.base.} =
        block:
            var index: int32 = value -% 1
            while index >= this.lastMin:
                defer: index = index -% 1
                this.INTEGER_ARRAY[index +% this.NEGATIVE_MAX] = index
        block:
            var index: int32 = negativeValue -% 1
            while index >= this.lastNegativeMin:
                defer: index = index -% 1
                this.INTEGER_ARRAY[index] = -index
        if this.lastMin < value:
            this.lastMin = value
            this.MIN = value
        if this.lastNegativeMin < negativeValue:
            this.lastNegativeMin = negativeValue

method init*(this: SmallLongFactory) {.base.} =
        if (jIsNil(this.INTEGER_ARRAY[0])):
            if this.lastMin < this.POSITIVE_MAX or this.lastNegativeMin < this.NEGATIVE_MAX:
                block:
                    var index: int32 = this.POSITIVE_MAX -% 1
                    while index >= this.lastMin:
                        defer: index = index -% 1
                        this.INTEGER_ARRAY[index +% this.NEGATIVE_MAX] = index
                block:
                    var index: int32 = this.NEGATIVE_MAX -% 1
                    while index >= this.lastNegativeMin:
                        defer: index = index -% 1
                        this.INTEGER_ARRAY[index] = -index
                this.lastMin = this.POSITIVE_MAX
                this.lastNegativeMin = this.NEGATIVE_MAX

proc initSmallLongFactory*(this: SmallLongFactory) =
        this.initFieldsSmallLongFactory()
        discard

proc newSmallLongFactory*(): SmallLongFactory =
    result = SmallLongFactory()
    initSmallLongFactory(result)

method getInstanceNoThrow*(this: SmallLongFactory, index: int64): int64 {.base, discardable.} =
        if index +% int64(this.NEGATIVE_MAX) > int64(this.INTEGER_ARRAY.length -% 1):
            return this.INTEGER_ARRAY[-1 +% this.NEGATIVE_MAX]
        return this.INTEGER_ARRAY[(jToInt32(index)) +% this.NEGATIVE_MAX]

method getString*(this: SmallLongFactory, index: int32): string {.base, discardable.} =
        let i: int32 = index +% this.NEGATIVE_MAX
        if (jIsNil(this.STRING_ARRAY[i])):
            this.STRING_ARRAY[i] = this.INTEGER_ARRAY[i].toString()
        return this.STRING_ARRAY[i]

