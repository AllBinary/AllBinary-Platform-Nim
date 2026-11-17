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
# package org.allbinary.game.rand

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import java/lang/Integer as IntegerModule
export IntegerModule
import java/util/Random as RandomModule
export RandomModule
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule

#Do not use in client code for money related things.
type
    MyRandomFactory* = ref object of JObject
        mathUtil*: MathUtil
        rand*: Random

proc newMyRandomFactory*(): MyRandomFactory
proc initMyRandomFactory*(this: MyRandomFactory)
proc getInstance*(t: typedesc[MyRandomFactory]): MyRandomFactory {.discardable.}
method setSeed*(this: MyRandomFactory, seed: int64) {.base.}
method getNextInt*(this: MyRandomFactory, range: int32): int32 {.base, discardable.}
method getAbsoluteNextInt*(this: MyRandomFactory, range: int32): int32 {.base, discardable.}
method getAbsoluteNextIntAllowZero*(this: MyRandomFactory, range: int32): int32 {.base, discardable.}
method shuffle*(this: MyRandomFactory, intArray: JArray[int32]) {.base.}
method shuffleTotal*(this: MyRandomFactory, intArray: JArray[int32], shuffleTotal: int32) {.base.}
method shuffle2*(this: MyRandomFactory, intArray: JArray[int32], intArray2: JArray[int32]) {.base.}
method shuffle2Total*(this: MyRandomFactory, intArray: JArray[int32], intArray2: JArray[int32], shuffleTotal: int32) {.base.}
proc main*(t: typedesc[MyRandomFactory], args: JArray[string])
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var MyRandomFactory_instanceValue: MyRandomFactory
var MyRandomFactory_instanceSet = false
proc instance*(t: typedesc[MyRandomFactory]): MyRandomFactory =
    if not MyRandomFactory_instanceSet:
        MyRandomFactory_instanceSet = true
        MyRandomFactory_instanceValue = newMyRandomFactory()
    MyRandomFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMyRandomFactory(this: MyRandomFactory) =
    this.mathUtil = MathUtil.getInstance()
    
    discard

proc getInstance*(t: typedesc[MyRandomFactory]): MyRandomFactory {.discardable.} =
        return MyRandomFactory.instance

proc initMyRandomFactory*(this: MyRandomFactory) =
        this.initFieldsMyRandomFactory()
        this.rand = newRandom(jCurrentTimeMillis())

proc newMyRandomFactory*(): MyRandomFactory =
    result = MyRandomFactory()
    initMyRandomFactory(result)

method setSeed*(this: MyRandomFactory, seed: int64) {.base.} =
        this.rand = newRandom(seed)

method getNextInt*(this: MyRandomFactory, range: int32): int32 {.base, discardable.} =
        var `div`: int32 = (Integer.MAX_VALUE div range) +% 1
        return (this.rand.nextInt() div `div`)

method getAbsoluteNextInt*(this: MyRandomFactory, range: int32): int32 {.base, discardable.} =
        return this.mathUtil.abs(this.getNextInt(range))

method getAbsoluteNextIntAllowZero*(this: MyRandomFactory, range: int32): int32 {.base, discardable.} =
        if range == 0:
            return 0
        else:
            return this.mathUtil.abs(this.getNextInt(range))

method shuffle*(this: MyRandomFactory, intArray: JArray[int32]) {.base.} =
        this.shuffleTotal(intArray, intArray.length *% 7)

method shuffleTotal*(this: MyRandomFactory, intArray: JArray[int32], shuffleTotal: int32) {.base.} =
        let size: int32 = intArray.length
        var randomIndex: int32 = 0
        var randomIndex2: int32 = 0
        var value: int32 = 0
        block:
            var index: int32 = 0
            while index < shuffleTotal:
                defer: index = index +% 1
                randomIndex = this.getAbsoluteNextIntAllowZero(size)
                randomIndex2 = this.getAbsoluteNextIntAllowZero(size)
                value = intArray[randomIndex]
                intArray[randomIndex] = intArray[randomIndex2]
                intArray[randomIndex2] = value

method shuffle2*(this: MyRandomFactory, intArray: JArray[int32], intArray2: JArray[int32]) {.base.} =
        this.shuffle2Total(intArray, intArray2, intArray.length *% 7)

method shuffle2Total*(this: MyRandomFactory, intArray: JArray[int32], intArray2: JArray[int32], shuffleTotal: int32) {.base.} =
        let size: int32 = intArray.length
        var randomIndex: int32 = 0
        var randomIndex2: int32 = 0
        var value: int32 = 0
        var value2: int32 = 0
        block:
            var index: int32 = 0
            while index < shuffleTotal:
                defer: index = index +% 1
                randomIndex = this.getAbsoluteNextIntAllowZero(size)
                randomIndex2 = this.getAbsoluteNextIntAllowZero(size)
                value = intArray[randomIndex]
                value2 = intArray2[randomIndex]
                intArray[randomIndex] = intArray[randomIndex2]
                intArray[randomIndex2] = value
                intArray2[randomIndex] = intArray2[randomIndex2]
                intArray2[randomIndex2] = value2

proc main*(t: typedesc[MyRandomFactory], args: JArray[string]) =
        let randomFactory: MyRandomFactory = MyRandomFactory.getInstance()
        let stringBuilder: StringMaker = newStringMaker()
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let size2: int32 = 100
        block:
            var index: int32 = 0
            while index < size2:
                defer: index = index +% 1
                stringBuilder.appendint(randomFactory.getAbsoluteNextInt(3)).append(commonSeps.COMMA)
        echo jstr(stringBuilder.toString())
        stringBuilder.delete(0, stringBuilder.length())
        let intArray: JArray[int32] = newJArray[int32](52, default(int32))
        let intArray2: JArray[int32] = newJArray[int32](52, default(int32))
        let size: int32 = intArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                intArray[index] = index
                intArray2[index] = index
        randomFactory.shuffle2(intArray, intArray2)
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                stringBuilder.appendint(intArray[index]).append(commonSeps.COMMA)
        echo jstr(stringBuilder.toString())
        stringBuilder.delete(0, stringBuilder.length())
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                stringBuilder.appendint(intArray2[index]).append(commonSeps.COMMA)
        echo jstr(stringBuilder.toString())
        var found: bool = false
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                found = false
                block:
                    var index2: int32 = 0
                    while index2 < size:
                        defer: index2 = index2 +% 1
                        if intArray[index2] == index:
                            found = true
                if (not found):
                    raise newJException("RuntimeException", "")

