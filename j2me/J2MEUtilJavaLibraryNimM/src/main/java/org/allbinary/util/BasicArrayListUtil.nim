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
import java/lang/System as SystemModule
export SystemModule
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    BasicArrayListUtil* = ref object of JObject
        NULL_ARRAY_OF_ARRAY*: JArray[JArray[BasicArrayList]]
        myRandomFactory*: MyRandomFactory
        immutableInstance*: BasicArrayList

proc newBasicArrayListUtil*(): BasicArrayListUtil
proc getInstance*(t: typedesc[BasicArrayListUtil]): BasicArrayListUtil {.discardable.}
method getRandom*(this: BasicArrayListUtil, list: BasicArrayList): JObject {.base, discardable.}
method getRandomIndex*(this: BasicArrayListUtil, list: BasicArrayList): int32 {.base, discardable.}
method reverse*(this: BasicArrayListUtil, list: BasicArrayList) {.base.}
method log*(this: BasicArrayListUtil, list: BasicArrayList): string {.base, discardable.}
method getImmutableInstance*(this: BasicArrayListUtil): BasicArrayList {.base, discardable.}
proc main*(t: typedesc[BasicArrayListUtil], args: JArray[string])
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonPhoneStrings as CommonPhoneStringsModule
export CommonPhoneStringsModule
import org/allbinary/util/ImmutableBasicArrayList as ImmutableBasicArrayListModule
export ImmutableBasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var BasicArrayListUtil_instanceValue: BasicArrayListUtil
var BasicArrayListUtil_instanceSet = false
proc instance*(t: typedesc[BasicArrayListUtil]): BasicArrayListUtil =
    if not BasicArrayListUtil_instanceSet:
        BasicArrayListUtil_instanceSet = true
        BasicArrayListUtil_instanceValue = newBasicArrayListUtil()
    BasicArrayListUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBasicArrayListUtil(this: BasicArrayListUtil) =
    this.NULL_ARRAY_OF_ARRAY = newJArrayOf[JArray[BasicArrayList]](0, proc (): JArray[BasicArrayList] = newJArray[BasicArrayList](0, default(BasicArrayList)))
    this.myRandomFactory = MyRandomFactory.getInstance()
    this.immutableInstance = newImmutableBasicArrayList("Immutable", 0)
    discard

proc initBasicArrayListUtil*(this: BasicArrayListUtil) =
    this.initFieldsBasicArrayListUtil()

proc newBasicArrayListUtil*(): BasicArrayListUtil =
    result = BasicArrayListUtil()
    initBasicArrayListUtil(result)

proc getInstance*(t: typedesc[BasicArrayListUtil]): BasicArrayListUtil {.discardable.} =
        return BasicArrayListUtil.instance

method getRandom*(this: BasicArrayListUtil, list: BasicArrayList): JObject {.base, discardable.} =
        var i_random: int32 = this.getRandomIndex(list)
        return list.objectArray[i_random]

method getRandomIndex*(this: BasicArrayListUtil, list: BasicArrayList): int32 {.base, discardable.} =
        return this.myRandomFactory.getAbsoluteNextInt(list.size())

method reverse*(this: BasicArrayListUtil, list: BasicArrayList) {.base.} =
        let lastMinusOneIndex: int32 = list.size() -% 2
        var temp: JObject = nil
        let size: int32 = lastMinusOneIndex div 2
        var secondSwapIndex: int32 = 0
        block:
            var index: int32 = 0
            while index <= size:
                defer: index = index +% 1
                secondSwapIndex = lastMinusOneIndex -% index
                temp = list.removeAt(index)
                list.addAt(index, list.removeAt(secondSwapIndex))
                list.addAt(secondSwapIndex +% 1, temp)

method log*(this: BasicArrayListUtil, list: BasicArrayList): string {.base, discardable.} =
        let S_LABEL: string = " s: "
        let size: int32 = list.size()
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(size)
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                var usedList: BasicArrayList = BasicArrayList(JObject(list.objectArray[index]))
                stringBuffer.append(S_LABEL)
                stringBuffer.appendint(usedList.size())
        return stringBuffer.toString()

method getImmutableInstance*(this: BasicArrayListUtil): BasicArrayList {.base, discardable.} =
        return this.immutableInstance

proc main*(t: typedesc[BasicArrayListUtil], args: JArray[string]) =
        let commonPhoneStrings: CommonPhoneStrings = CommonPhoneStrings.getInstance()
        let list: BasicArrayList = newBasicArrayListD()
        list.add(commonPhoneStrings.ONE)
        list.add(commonPhoneStrings.TWO)
        list.add(commonPhoneStrings.THREE)
        list.add(commonPhoneStrings.FOUR)
        list.add(commonPhoneStrings.FIVE)
        list.add(commonPhoneStrings.SIX)
        list.add(commonPhoneStrings.SEVEN)
        list.add(commonPhoneStrings.EIGHT)
        list.add(commonPhoneStrings.NINE)
        BasicArrayListUtil.getInstance().reverse(list)
        echo jstr(list.toString())

