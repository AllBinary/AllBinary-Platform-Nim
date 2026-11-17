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
import java/lang/Integer as IntegerModule
export IntegerModule

type
    SmallIntegerSingletonFactory* = ref object of JObject
        NEGATIVE_MAX*: int32
        POSITIVE_MAX*: int32
        INTEGER_ARRAY*: JArray[int32]
        STRING_ARRAY*: JArray[string]
        MIN*: int32
        lastMin*: int32
        lastNegativeMin*: int32

proc newSmallIntegerSingletonFactory*(): SmallIntegerSingletonFactory
proc initSmallIntegerSingletonFactory*(this: SmallIntegerSingletonFactory)
proc getInstance*(t: typedesc[SmallIntegerSingletonFactory]): SmallIntegerSingletonFactory {.discardable.}
method getMin*(this: SmallIntegerSingletonFactory): int32 {.base, discardable.}
method getMinAllowed*(this: SmallIntegerSingletonFactory): int32 {.base, discardable.}
method initWithRange*(this: SmallIntegerSingletonFactory, value: int32, negativeValue: int32) {.base.}
method init*(this: SmallIntegerSingletonFactory) {.base.}
method getAt*(this: SmallIntegerSingletonFactory, index: int32): int32 {.base, discardable.}
method getAtNoThrow*(this: SmallIntegerSingletonFactory, index: int32): int32 {.base, discardable.}
method createInstance*(this: SmallIntegerSingletonFactory, index: int32): int32 {.base, discardable.}
method getString*(this: SmallIntegerSingletonFactory, index: int32): string {.base, discardable.}
import org/allbinary/AndroidUtil as AndroidUtilModule
export AndroidUtilModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var SmallIntegerSingletonFactory_instanceValue: SmallIntegerSingletonFactory
var SmallIntegerSingletonFactory_instanceSet = false
proc instance*(t: typedesc[SmallIntegerSingletonFactory]): SmallIntegerSingletonFactory =
    if not SmallIntegerSingletonFactory_instanceSet:
        SmallIntegerSingletonFactory_instanceSet = true
        SmallIntegerSingletonFactory_instanceValue = newSmallIntegerSingletonFactory()
    SmallIntegerSingletonFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSmallIntegerSingletonFactory(this: SmallIntegerSingletonFactory) =
    this.NEGATIVE_MAX = 500
    this.POSITIVE_MAX = 0x2D1
    this.INTEGER_ARRAY = newJArray[int32](this.NEGATIVE_MAX +% this.POSITIVE_MAX, default(int32))
    this.STRING_ARRAY = newJArray[string](this.NEGATIVE_MAX +% this.POSITIVE_MAX, default(string))
    this.MIN = 0
    this.lastMin = 0
    this.lastNegativeMin = 0
    discard

proc getInstance*(t: typedesc[SmallIntegerSingletonFactory]): SmallIntegerSingletonFactory {.discardable.} =
        return SmallIntegerSingletonFactory.instance

method getMin*(this: SmallIntegerSingletonFactory): int32 {.base, discardable.} =
        let minAllowed: int32 = this.getMinAllowed()
        if this.MIN <= minAllowed:
            if J2MEUtil.isJ2ME():
                discard
            elif AndroidUtil.isAndroid():
                let logUtil: LogUtil = LogUtil.getInstance()
                logUtil.putF(newStringMaker().append("Android InputFactory was initialized before GameMidlet: ").appendint(this.MIN).toString(), this, "getMin")
                this.initWithRange(0x291, 6)
            else:
                let logUtil: LogUtil = LogUtil.getInstance()
                logUtil.putF(newStringMaker().append("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ").appendint(this.MIN).toString(), this, "getMin")
                this.initWithRange(0x2D0, 6)
        if this.MIN <= minAllowed:
            let logUtil: LogUtil = LogUtil.getInstance()
            logUtil.put("This means you loaded the InputFactory before determining the platform input size requirements.", this, "getMin", newJException("Exception", ""))
        return this.MIN

method getMinAllowed*(this: SmallIntegerSingletonFactory): int32 {.base, discardable.} =
        if J2MEUtil.isJ2ME():
            return 0
        else:
            if AndroidUtil.isAndroid():
                return 0x101
            else:
                return 23

method initWithRange*(this: SmallIntegerSingletonFactory, value: int32, negativeValue: int32) {.base.} =
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

method init*(this: SmallIntegerSingletonFactory) {.base.} =
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
            this.MIN = this.lastMin
            this.lastNegativeMin = this.NEGATIVE_MAX

proc initSmallIntegerSingletonFactory*(this: SmallIntegerSingletonFactory) =
        this.initFieldsSmallIntegerSingletonFactory()
        this.initWithRange(23, 0)

proc newSmallIntegerSingletonFactory*(): SmallIntegerSingletonFactory =
    result = SmallIntegerSingletonFactory()
    initSmallIntegerSingletonFactory(result)

method getAt*(this: SmallIntegerSingletonFactory, index: int32): int32 {.base, discardable.} =
        return this.INTEGER_ARRAY[index +% this.NEGATIVE_MAX]

method getAtNoThrow*(this: SmallIntegerSingletonFactory, index: int32): int32 {.base, discardable.} =
        if index +% this.NEGATIVE_MAX > this.INTEGER_ARRAY.length -% 1:
            return this.INTEGER_ARRAY[-1 +% this.NEGATIVE_MAX]
        return this.INTEGER_ARRAY[index +% this.NEGATIVE_MAX]

method createInstance*(this: SmallIntegerSingletonFactory, index: int32): int32 {.base, discardable.} =
        var integer: int32 = this.getAt(index)
        if (jIsNil(integer)):
            integer = index
        return integer

method getString*(this: SmallIntegerSingletonFactory, index: int32): string {.base, discardable.} =
        let i: int32 = index +% this.NEGATIVE_MAX
        if (jIsNil(this.STRING_ARRAY[i])):
            this.STRING_ARRAY[i] = this.INTEGER_ARRAY[i].toString()
        return this.STRING_ARRAY[i]

