# Generated Code Do Not Modify
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import org/allbinary/util/ArrayUtil as ArrayUtilModule
export ArrayUtilModule

#This is a very fast and simple resizable list.
type
    BasicArrayList* = ref object of JObject
        arrayUtil*: ArrayUtil
        objectArray*: JArray[JObject]
        currentIndex*: int32

proc newBasicArrayList*(objectArray: JArray[JObject]): BasicArrayList
proc initBasicArrayList*(this: BasicArrayList, objectArray: JArray[JObject])
method addAt*(this: BasicArrayList, index: int32, element: JObject) {.base.}
method add*(this: BasicArrayList, anyType: JObject): bool {.base, discardable.}
method removeAt*(this: BasicArrayList, index: int32): JObject {.base, discardable.}
method remove*(this: BasicArrayList, anyType: JObject): bool {.base, discardable.}
method removeAll2*(this: BasicArrayList, list: BasicArrayList): bool {.base, discardable.}
method addAll2*(this: BasicArrayList, list: BasicArrayList): bool {.base, discardable.}
method addAllList*(this: BasicArrayList, list: BasicArrayList): bool {.base, discardable.}
method addAll*(this: BasicArrayList, newObjectArray: JArray[JObject]): bool {.base, discardable.}
method ensureCapacity*(this: BasicArrayList, minSize: int32) {.base.}
method trimToSize*(this: BasicArrayList) {.base.}
method indexOf*(this: BasicArrayList, anyType: JObject): int32 {.base, discardable.}
method lastIndexOf*(this: BasicArrayList, anyType: JObject): int32 {.base, discardable.}
method get*(this: BasicArrayList, index: int32): JObject {.base, discardable.}
method set*(this: BasicArrayList, index: int32, element: JObject): JObject {.base, discardable.}
method clear*(this: BasicArrayList) {.base.}
method size*(this: BasicArrayList): int32 {.base, discardable.}
method isEmpty*(this: BasicArrayList): bool {.base, discardable.}
method contains*(this: BasicArrayList, anyType: JObject): bool {.base, discardable.}
method toArray*(this: BasicArrayList): JArray[JObject] {.base, discardable.}
method toArrayType*(this: BasicArrayList, objectArray: JArray[JObject]): JArray[JObject] {.base, discardable.}
method clone*(this: BasicArrayList): JObject {.base, discardable.}
method toString*(this: BasicArrayList): string {.discardable.}

var newBasicArrayListSHook1*: proc (a0: int32): BasicArrayList
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var BasicArrayList_SIZEValue: string
var BasicArrayList_SIZESet = false
proc SIZE*(t: typedesc[BasicArrayList]): string =
    if not BasicArrayList_SIZESet:
        BasicArrayList_SIZESet = true
        BasicArrayList_SIZEValue = ", Size: "
    BasicArrayList_SIZEValue

# Java field initializers run after the base initializer
proc initFieldsBasicArrayList(this: BasicArrayList) =
    this.arrayUtil = ArrayUtil.getInstance()
    
    this.currentIndex = 0
    discard

proc initBasicArrayList*(this: BasicArrayList, objectArray: JArray[JObject]) =
        this.initFieldsBasicArrayList()
        this.objectArray = objectArray

proc newBasicArrayList*(objectArray: JArray[JObject]): BasicArrayList =
    result = BasicArrayList()
    initBasicArrayList(result, objectArray)

method addAt*(this: BasicArrayList, index: int32, element: JObject) {.base.} =
        if index > this.currentIndex or index < 0:
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(this.currentIndex)
            raise newJException("IndexOutOfBoundsException", stringBuffer.toString())
        this.ensureCapacity(this.currentIndex +% 1)
        jArraycopy(this.objectArray, index, this.objectArray, index +% 1, this.currentIndex -% index)
        this.objectArray[index] = element
        this.currentIndex = this.currentIndex +% 1

method add*(this: BasicArrayList, anyType: JObject): bool {.base, discardable.} =
        this.ensureCapacity(this.currentIndex +% 1)
        this.objectArray[jPostIncrement(this.currentIndex)] = anyType
        return true

method removeAt*(this: BasicArrayList, index: int32): JObject {.base, discardable.} =
        if index >= this.currentIndex:
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(this.currentIndex)
            raise newJException("IndexOutOfBoundsException", stringBuffer.toString())
        var oldValue: JObject = this.objectArray[index]
        let numMoved: int32 = this.currentIndex -% index -% 1
        if numMoved > 0:
            jArraycopy(this.objectArray, index +% 1, this.objectArray, index, numMoved)
        this.objectArray[jPreDecrement(this.currentIndex)] = nil
        return oldValue

method remove*(this: BasicArrayList, anyType: JObject): bool {.base, discardable.} =
        if (jIsNil(anyType)):
            block:
                var index: int32 = 0
                while index < this.currentIndex:
                    defer: index = index +% 1
                    if (jIsNil(this.objectArray[index])):
                        let numMoved: int32 = this.currentIndex -% index -% 1
                        if numMoved > 0:
                            jArraycopy(this.objectArray, index +% 1, this.objectArray, index, numMoved)
                        this.objectArray[jPreDecrement(this.currentIndex)] = nil
                        return true
        else:
            block:
                var index: int32 = 0
                while index < this.currentIndex:
                    defer: index = index +% 1
                    if (jSame(anyType, this.objectArray[index])) or anyType.equals(this.objectArray[index]):
                        let numMoved: int32 = this.currentIndex -% index -% 1
                        if numMoved > 0:
                            jArraycopy(this.objectArray, index +% 1, this.objectArray, index, numMoved)
                        this.objectArray[jPreDecrement(this.currentIndex)] = nil
                        return true
        return false

method removeAll2*(this: BasicArrayList, list: BasicArrayList): bool {.base, discardable.} =
        var `result`: bool = true
        let size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                if this.remove(list.get(index)):
                    discard
                else:
                    `result` = false
        return `result`

method addAll2*(this: BasicArrayList, list: BasicArrayList): bool {.base, discardable.} =
        this.ensureCapacity(this.currentIndex +% list.currentIndex)
        var listSize: int32 = list.currentIndex
        block:
            var index: int32 = 0
            while index < listSize:
                defer: index = index +% 1
                this.objectArray[jPostIncrement(this.currentIndex)] = list.objectArray[index]
        return true

method addAllList*(this: BasicArrayList, list: BasicArrayList): bool {.base, discardable.} =
        let newObjectArray: JArray[JObject] = list.toArray()
        return this.addAll(newObjectArray)

method addAll*(this: BasicArrayList, newObjectArray: JArray[JObject]): bool {.base, discardable.} =
        let numSize: int32 = newObjectArray.length
        this.ensureCapacity(this.currentIndex +% numSize)
        jArraycopy(newObjectArray, 0, this.objectArray, this.currentIndex, numSize)
        this.currentIndex = this.currentIndex +% numSize
        return numSize != 0

method ensureCapacity*(this: BasicArrayList, minSize: int32) {.base.} =
        let oldCapacity: int32 = this.objectArray.length
        if minSize > oldCapacity:
            var newCapacity: int32 = (ashr((oldCapacity *% 3), 1)) +% 1
            if newCapacity < minSize:
                newCapacity = minSize
            this.objectArray = this.arrayUtil.copyOf(this.objectArray, newCapacity)

method trimToSize*(this: BasicArrayList) {.base.} =
        let oldCapacity: int32 = this.objectArray.length
        if this.currentIndex < oldCapacity:
            this.objectArray = this.arrayUtil.copyOf(this.objectArray, this.currentIndex)

method indexOf*(this: BasicArrayList, anyType: JObject): int32 {.base, discardable.} =
        if (jIsNil(anyType)):
            block:
                var i: int32 = 0
                while i < this.currentIndex:
                    defer: i = i +% 1
                    if (jIsNil(this.objectArray[i])):
                        return i
        else:
            block:
                var i: int32 = 0
                while i < this.currentIndex:
                    defer: i = i +% 1
                    if anyType.equals(this.objectArray[i]):
                        return i
        return -1

method lastIndexOf*(this: BasicArrayList, anyType: JObject): int32 {.base, discardable.} =
        if (jIsNil(anyType)):
            block:
                var i: int32 = this.currentIndex -% 1
                while i >= 0:
                    defer: i = i -% 1
                    if (jIsNil(this.objectArray[i])):
                        return i
        else:
            block:
                var i: int32 = this.currentIndex -% 1
                while i >= 0:
                    defer: i = i -% 1
                    if anyType.equals(this.objectArray[i]):
                        return i
        return -1

method get*(this: BasicArrayList, index: int32): JObject {.base, discardable.} =
        if index >= this.currentIndex:
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(this.currentIndex)
            raise newJException("IndexOutOfBoundsException", stringBuffer.toString())
        return this.objectArray[index]

method set*(this: BasicArrayList, index: int32, element: JObject): JObject {.base, discardable.} =
        if index >= this.currentIndex:
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(this.currentIndex)
            raise newJException("IndexOutOfBoundsException", stringBuffer.toString())
        let oldValue: JObject = this.objectArray[index]
        this.objectArray[index] = element
        return oldValue

method clear*(this: BasicArrayList) {.base.} =
        block:
            var i: int32 = 0
            while i < this.currentIndex:
                defer: i = i +% 1
                this.objectArray[i] = nil
        this.currentIndex = 0

method size*(this: BasicArrayList): int32 {.base, discardable.} =
        return this.currentIndex

method isEmpty*(this: BasicArrayList): bool {.base, discardable.} =
        return this.currentIndex == 0

method contains*(this: BasicArrayList, anyType: JObject): bool {.base, discardable.} =
        return this.indexOf(anyType) >= 0

method toArray*(this: BasicArrayList): JArray[JObject] {.base, discardable.} =
        return this.arrayUtil.copyOf(this.objectArray, this.currentIndex)

method toArrayType*(this: BasicArrayList, objectArray: JArray[JObject]): JArray[JObject] {.base, discardable.} =
        if objectArray.length < this.currentIndex:
            return this.arrayUtil.copyOfType(this.objectArray, this.currentIndex, jClassName(objectArray))
        jArraycopy(this.objectArray, 0, objectArray, 0, this.currentIndex)
        if objectArray.length > this.currentIndex:
            objectArray[this.currentIndex] = nil
        return objectArray

method clone*(this: BasicArrayList): JObject {.base, discardable.} =
        let size: int32 = this.size()
        let list: BasicArrayList = newBasicArrayListSHook1(size)
        var anyType: JObject = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                anyType = this.objectArray[index]
                list.add(anyType)
        return list

method toString*(this: BasicArrayList): string {.discardable.} =
        let COMMA_SEP: string = CommonSeps.getInstance().COMMA_SEP
        let stringBuffer: StringMaker = newStringMaker()
        block:
            var index: int32 = 0
            while index < this.currentIndex:
                defer: index = index +% 1
                stringBuffer.append(this.objectArray[index].toString())
                stringBuffer.append(COMMA_SEP)
        return stringBuffer.toString()

