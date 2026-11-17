# Generated Code Do Not Modify
# package org.allbinary.logic.math

{.warning[UnusedImport]: off.}
import allbinary_java

type
    MathUtil* = ref object of JObject
        ACCURACY*: int32

proc newMathUtil*(): MathUtil
proc getInstance*(t: typedesc[MathUtil]): MathUtil {.discardable.}
method getTotalDigits*(this: MathUtil, digits: int32): int32 {.base, discardable.}
method sqrt*(this: MathUtil, value: int32): int32 {.base, discardable.}
method sqrtd*(this: MathUtil, x: int32): float64 {.base, discardable.}
method abs*(this: MathUtil, value: int32): int32 {.base, discardable.}
method abslong*(this: MathUtil, value: int64): int64 {.base, discardable.}
method min*(this: MathUtil, value: int32, value2: int32): int32 {.base, discardable.}
method max*(this: MathUtil, value: int32, value2: int32): int32 {.base, discardable.}

var MathUtil_instanceValue: MathUtil
var MathUtil_instanceSet = false
proc instance*(t: typedesc[MathUtil]): MathUtil =
    if not MathUtil_instanceSet:
        MathUtil_instanceSet = true
        MathUtil_instanceValue = newMathUtil()
    MathUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMathUtil(this: MathUtil) =
    this.ACCURACY = 100
    discard

proc initMathUtil*(this: MathUtil) =
    this.initFieldsMathUtil()

proc newMathUtil*(): MathUtil =
    result = MathUtil()
    initMathUtil(result)

proc getInstance*(t: typedesc[MathUtil]): MathUtil {.discardable.} =
        return MathUtil.instance

method getTotalDigits*(this: MathUtil, digits: int32): int32 {.base, discardable.} =
        var digits = digits
        var total: int32 = 0
        while digits > 0:
            digits = digits div 10
            total = total +% 1
        return total

method sqrt*(this: MathUtil, value: int32): int32 {.base, discardable.} =
        if value <= 1:
            return value
        var accumulated: int32 = ashr(value, 1)
        var `result`: int32 = ashr((accumulated +% (value div accumulated)), 1)
        while true:
            accumulated = `result`
            `result` = ashr((accumulated +% (value div accumulated)), 1)
            if not (accumulated > `result`): break
        return accumulated

method sqrtd*(this: MathUtil, x: int32): float64 {.base, discardable.} =
        if x == 0:
            return float64(0.0'f32)
        if x < 0:
            return float64(-1.0'f32)
        var `result`: float64 = float64(x)
        block:
            var index: int32 = 0
            while index < this.ACCURACY:
                defer: index = index +% 1
                `result` = (`result` + (float64(x) / `result`)) / 2.0
        return `result`

method abs*(this: MathUtil, value: int32): int32 {.base, discardable.} =
        return (if (value < 0): -value else: value)

method abslong*(this: MathUtil, value: int64): int64 {.base, discardable.} =
        return (if (value < 0'i64): -value else: value)

method min*(this: MathUtil, value: int32, value2: int32): int32 {.base, discardable.} =
        return (if (value <= value2): value else: value2)

method max*(this: MathUtil, value: int32, value2: int32): int32 {.base, discardable.} =
        return (if (value >= value2): value else: value2)

