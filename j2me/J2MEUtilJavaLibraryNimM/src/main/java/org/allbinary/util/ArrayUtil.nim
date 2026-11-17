# Generated Code Do Not Modify
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule

type
    ArrayUtil* = ref object of JObject
        mathUtil*: MathUtil

proc newArrayUtil*(): ArrayUtil
proc getInstance*(t: typedesc[ArrayUtil]): ArrayUtil {.discardable.}
method copyOf*(this: ArrayUtil, original: JArray[JObject], newLength: int32): JArray[JObject] {.base, discardable.}
method copyOfType*(this: ArrayUtil, original: JArray[JObject], newLength: int32, newType: string): JArray[JObject] {.base, discardable.}
method copyOfbyte*(this: ArrayUtil, original: JArray[int8], newLength: int32): JArray[int8] {.base, discardable.}
method copyOfshort*(this: ArrayUtil, original: JArray[int16], newLength: int32): JArray[int16] {.base, discardable.}
method copyOfint*(this: ArrayUtil, original: JArray[int32], newLength: int32): JArray[int32] {.base, discardable.}
method copyOflong*(this: ArrayUtil, original: JArray[int64], newLength: int32): JArray[int64] {.base, discardable.}
method copyOfchar*(this: ArrayUtil, original: JArray[uint16], newLength: int32): JArray[uint16] {.base, discardable.}
method copyOffloat*(this: ArrayUtil, original: JArray[float32], newLength: int32): JArray[float32] {.base, discardable.}
method copyOfdouble*(this: ArrayUtil, original: JArray[float64], newLength: int32): JArray[float64] {.base, discardable.}
method copyOfboolean*(this: ArrayUtil, original: JArray[bool], newLength: int32): JArray[bool] {.base, discardable.}
method reverse*(this: ArrayUtil, intArray: JArray[int32]) {.base.}
method flip*(this: ArrayUtil, intArray: JArray[int32], width: int32, height: int32) {.base.}
method toStringFromTwoDimensionaArray*(this: ArrayUtil, twoDimensionalIntArray: JArray[JArray[int32]]): string {.base, discardable.}
method toStringFromObjectArray*(this: ArrayUtil, objectArray: JArray[JObject]): string {.base, discardable.}
method toStringFromByteArray*(this: ArrayUtil, byteArray: JArray[int8]): string {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var ArrayUtil_instanceValue: ArrayUtil
var ArrayUtil_instanceSet = false
proc instance*(t: typedesc[ArrayUtil]): ArrayUtil =
    if not ArrayUtil_instanceSet:
        ArrayUtil_instanceSet = true
        ArrayUtil_instanceValue = newArrayUtil()
    ArrayUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsArrayUtil(this: ArrayUtil) =
    this.mathUtil = MathUtil.getInstance()
    discard

proc initArrayUtil*(this: ArrayUtil) =
    this.initFieldsArrayUtil()

proc newArrayUtil*(): ArrayUtil =
    result = ArrayUtil()
    initArrayUtil(result)

proc getInstance*(t: typedesc[ArrayUtil]): ArrayUtil {.discardable.} =
        return ArrayUtil.instance

method copyOf*(this: ArrayUtil, original: JArray[JObject], newLength: int32): JArray[JObject] {.base, discardable.} =
        return this.copyOfType(original, newLength, jClassName(original))

method copyOfType*(this: ArrayUtil, original: JArray[JObject], newLength: int32, newType: string): JArray[JObject] {.base, discardable.} =
        let copy: JArray[JObject] = newJArray[JObject](newLength, default(JObject))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method copyOfbyte*(this: ArrayUtil, original: JArray[int8], newLength: int32): JArray[int8] {.base, discardable.} =
        let copy: JArray[int8] = newJArray[int8](newLength, default(int8))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method copyOfshort*(this: ArrayUtil, original: JArray[int16], newLength: int32): JArray[int16] {.base, discardable.} =
        let copy: JArray[int16] = newJArray[int16](newLength, default(int16))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method copyOfint*(this: ArrayUtil, original: JArray[int32], newLength: int32): JArray[int32] {.base, discardable.} =
        let copy: JArray[int32] = newJArray[int32](newLength, default(int32))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method copyOflong*(this: ArrayUtil, original: JArray[int64], newLength: int32): JArray[int64] {.base, discardable.} =
        let copy: JArray[int64] = newJArray[int64](newLength, default(int64))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method copyOfchar*(this: ArrayUtil, original: JArray[uint16], newLength: int32): JArray[uint16] {.base, discardable.} =
        let copy: JArray[uint16] = newJArray[uint16](newLength, default(uint16))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method copyOffloat*(this: ArrayUtil, original: JArray[float32], newLength: int32): JArray[float32] {.base, discardable.} =
        let copy: JArray[float32] = newJArray[float32](newLength, default(float32))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method copyOfdouble*(this: ArrayUtil, original: JArray[float64], newLength: int32): JArray[float64] {.base, discardable.} =
        let copy: JArray[float64] = newJArray[float64](newLength, default(float64))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method copyOfboolean*(this: ArrayUtil, original: JArray[bool], newLength: int32): JArray[bool] {.base, discardable.} =
        let copy: JArray[bool] = newJArray[bool](newLength, default(bool))
        jArraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength))
        return copy

method reverse*(this: ArrayUtil, intArray: JArray[int32]) {.base.} =
        let length: int32 = intArray.length -% 1
        var temp: int32 = 0
        let size: int32 = length div 2
        block:
            var index: int32 = 0
            while index <= size:
                defer: index = index +% 1
                temp = intArray[index]
                intArray[index] = intArray[length -% index]
                intArray[length -% index] = temp

method flip*(this: ArrayUtil, intArray: JArray[int32], width: int32, height: int32) {.base.} =
        let length: int32 = height -% 1
        var temp: int32 = 0
        var index: int32 = 0
        var rowIndex: int32 = 0
        block:
            var y: int32 = 0
            while y <= length div 2:
                defer: y = y +% 1
                block:
                    var x: int32 = 0
                    while x < width:
                        defer: x = x +% 1
                        rowIndex = ((length -% y) *% width)
                        index = x +% (y *% width)
                        temp = intArray[index]
                        intArray[index] = intArray[rowIndex +% x]
                        intArray[rowIndex +% x] = temp

method toStringFromTwoDimensionaArray*(this: ArrayUtil, twoDimensionalIntArray: JArray[JArray[int32]]): string {.base, discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let endIndex: int32 = twoDimensionalIntArray.length
        let endIndex2: int32 = twoDimensionalIntArray[0].length
        block:
            var index: int32 = 0
            while index < endIndex:
                defer: index = index +% 1
                stringBuffer.append(commonSeps.BRACE_OPEN)
                block:
                    var index2: int32 = 0
                    while index2 < endIndex2:
                        defer: index2 = index2 +% 1
                        stringBuffer.appendint(int32(twoDimensionalIntArray[index][index2]))
                        stringBuffer.append(commonSeps.COMMA_SEP)
                stringBuffer.append(commonSeps.BRACE_CLOSE)
                stringBuffer.append(commonSeps.NEW_LINE)
        return stringBuffer.toString()

method toStringFromObjectArray*(this: ArrayUtil, objectArray: JArray[JObject]): string {.base, discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        block:
            var index: int32 = 0
            while index < objectArray.length:
                defer: index = index +% 1
                stringBuffer.append(StringUtil.getInstance().toString(objectArray[index]))
                stringBuffer.append(commonSeps.COMMA_SEP)
        return stringBuffer.toString()

method toStringFromByteArray*(this: ArrayUtil, byteArray: JArray[int8]): string {.base, discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        block:
            var index: int32 = 0
            while index < byteArray.length:
                defer: index = index +% 1
                stringBuffer.appendbyte(byteArray[index])
                stringBuffer.append(commonSeps.COMMA_SEP)
        return stringBuffer.toString()

