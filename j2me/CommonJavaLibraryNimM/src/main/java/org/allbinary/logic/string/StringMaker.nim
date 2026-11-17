# Generated Code Do Not Modify
# package org.allbinary.logic.string

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Long as LongModule
export LongModule
import java/lang/Float as FloatModule
export FloatModule

type
    StringMaker* = ref object of JObject
        charArray*: JArray[uint16]
        currentLength*: int32

proc newStringMaker*(): StringMaker
proc initStringMaker*(this: StringMaker)
method append*(this: StringMaker, string: string): StringMaker {.base, discardable.}
method appendchar*(this: StringMaker, c: uint16): StringMaker {.base, discardable.}
method appendCharArray*(this: StringMaker, charArray: JArray[uint16], start: int32, `end`: int32): StringMaker {.base, discardable.}
method appendbyte*(this: StringMaker, b: int8): StringMaker {.base, discardable.}
method appendshort*(this: StringMaker, b: int16): StringMaker {.base, discardable.}
method appendint*(this: StringMaker, i: int32): StringMaker {.base, discardable.}
method appendlong*(this: StringMaker, l: int64): StringMaker {.base, discardable.}
method appendfloat*(this: StringMaker, f: float32): StringMaker {.base, discardable.}
method appendboolean*(this: StringMaker, bool: bool): StringMaker {.base, discardable.}
method ensureCapacity*(this: StringMaker, minSize: int32) {.base.}
method min*(this: StringMaker, value: int32, value2: int32): int32 {.base, discardable.}
method delete*(this: StringMaker, start: int32, `end`: int32): StringMaker {.base, discardable.}
method length*(this: StringMaker): int32 {.base, discardable.}
method toString*(this: StringMaker): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsStringMaker(this: StringMaker) =
    
    this.currentLength = 0
    discard

proc initStringMaker*(this: StringMaker) =
        this.initFieldsStringMaker()
        this.charArray = newJArray[uint16](20, default(uint16))

proc newStringMaker*(): StringMaker =
    result = StringMaker()
    initStringMaker(result)

method append*(this: StringMaker, string: string): StringMaker {.base, discardable.} =
        let stringLength: int32 = jLength(string)
        this.ensureCapacity(this.currentLength +% stringLength)
        jGetChars(string, 0, stringLength, this.charArray, this.currentLength)
        this.currentLength = this.currentLength +% stringLength
        return this

method appendchar*(this: StringMaker, c: uint16): StringMaker {.base, discardable.} =
        this.ensureCapacity(this.currentLength +% 1)
        this.charArray[jPostIncrement(this.currentLength)] = c
        return this

method appendCharArray*(this: StringMaker, charArray: JArray[uint16], start: int32, `end`: int32): StringMaker {.base, discardable.} =
        this.ensureCapacity(this.currentLength +% (`end` -% start))
        block:
            var index: int32 = start
            while index < `end`:
                defer: index = index +% 1
                this.charArray[jPostIncrement(this.currentLength)] = charArray[index]
        return this

method appendbyte*(this: StringMaker, b: int8): StringMaker {.base, discardable.} =
        this.append(jstr(b))
        return this

method appendshort*(this: StringMaker, b: int16): StringMaker {.base, discardable.} =
        this.append(jstr(b))
        return this

method appendint*(this: StringMaker, i: int32): StringMaker {.base, discardable.} =
        this.append(jstr(i))
        return this

method appendlong*(this: StringMaker, l: int64): StringMaker {.base, discardable.} =
        this.append(jstr(l))
        return this

method appendfloat*(this: StringMaker, f: float32): StringMaker {.base, discardable.} =
        this.append(jstr(f))
        return this

method appendboolean*(this: StringMaker, bool: bool): StringMaker {.base, discardable.} =
        if bool:
            this.ensureCapacity(this.currentLength +% 4)
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('t'))
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('r'))
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('u'))
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('e'))
        else:
            this.ensureCapacity(this.currentLength +% 5)
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('f'))
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('a'))
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('l'))
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('s'))
            this.charArray[jPostIncrement(this.currentLength)] = uint16(ord('e'))
        return this

method ensureCapacity*(this: StringMaker, minSize: int32) {.base.} =
        let oldCapacity: int32 = this.charArray.length
        if minSize > oldCapacity:
            var newCapacity: int32 = oldCapacity *% 3
            if newCapacity < minSize:
                newCapacity = minSize
            let copy: JArray[uint16] = newJArray[uint16](newCapacity, default(uint16))
            let min: int32 = this.min(this.charArray.length, newCapacity)
            jArraycopy(this.charArray, 0, copy, 0, min)
            this.charArray = copy

method min*(this: StringMaker, value: int32, value2: int32): int32 {.base, discardable.} =
        return (if (value <= value2): value else: value2)

method delete*(this: StringMaker, start: int32, `end`: int32): StringMaker {.base, discardable.} =
        this.currentLength = this.currentLength -% (`end` -% start)
        return this

method length*(this: StringMaker): int32 {.base, discardable.} =
        return this.currentLength

method toString*(this: StringMaker): string {.discardable.} =
        return jFromChars(this.charArray, 0, this.currentLength)

