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
# package org.allbinary.logic.math.permutations

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule

type
    OrderedIntArrayPermutationUtil* = ref object of JObject
        TOTAL_ITERATIONS_TABLE*: string
        FINISHED*: string

proc newOrderedIntArrayPermutationUtil*(): OrderedIntArrayPermutationUtil
proc initOrderedIntArrayPermutationUtil*(this: OrderedIntArrayPermutationUtil)
proc getInstance*(t: typedesc[OrderedIntArrayPermutationUtil]): OrderedIntArrayPermutationUtil {.discardable.}
method getNext*(this: OrderedIntArrayPermutationUtil, data: JArray[int32]) {.base.}
method swap*(this: OrderedIntArrayPermutationUtil, data: JArray[int32], a: int32, b: int32) {.base.}
method factorial*(this: OrderedIntArrayPermutationUtil, dataLength: int32): int64 {.base, discardable.}
method generate*(this: OrderedIntArrayPermutationUtil, data: JArray[int32], visitor: Visitor) {.base.}
proc main*(t: typedesc[OrderedIntArrayPermutationUtil], args: JArray[string])
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/math/permutations/IntPermutationVisitor as IntPermutationVisitorModule
export IntPermutationVisitorModule

var OrderedIntArrayPermutationUtil_instanceValue: OrderedIntArrayPermutationUtil
var OrderedIntArrayPermutationUtil_instanceSet = false
proc instance*(t: typedesc[OrderedIntArrayPermutationUtil]): OrderedIntArrayPermutationUtil =
    if not OrderedIntArrayPermutationUtil_instanceSet:
        OrderedIntArrayPermutationUtil_instanceSet = true
        OrderedIntArrayPermutationUtil_instanceValue = newOrderedIntArrayPermutationUtil()
    OrderedIntArrayPermutationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOrderedIntArrayPermutationUtil(this: OrderedIntArrayPermutationUtil) =
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: "
    this.FINISHED = "\nFINISHED"
    discard

proc getInstance*(t: typedesc[OrderedIntArrayPermutationUtil]): OrderedIntArrayPermutationUtil {.discardable.} =
        return OrderedIntArrayPermutationUtil.instance

proc initOrderedIntArrayPermutationUtil*(this: OrderedIntArrayPermutationUtil) =
        this.initFieldsOrderedIntArrayPermutationUtil()
        discard

proc newOrderedIntArrayPermutationUtil*(): OrderedIntArrayPermutationUtil =
    result = OrderedIntArrayPermutationUtil()
    initOrderedIntArrayPermutationUtil(result)

method getNext*(this: OrderedIntArrayPermutationUtil, data: JArray[int32]) {.base.} =
        var length: int32 = data.length
        var i: int32 = length -% 1
        while data[i -% 1] >= data[i]:
            i = i -% 1
        var j: int32 = length
        while data[j -% 1] <= data[i -% 1]:
            j = j -% 1
        this.swap(data, i -% 1, j -% 1)
        i = i +% 1
        j = length
        while i < j:
            this.swap(data, i -% 1, j -% 1)
            i = i +% 1
            j = j -% 1

method swap*(this: OrderedIntArrayPermutationUtil, data: JArray[int32], a: int32, b: int32) {.base.} =
        var temp: int32 = data[a]
        data[a] = data[b]
        data[b] = temp

method factorial*(this: OrderedIntArrayPermutationUtil, dataLength: int32): int64 {.base, discardable.} =
        var temp: int64 = 1'i64
        if dataLength > 1:
            block:
                var i: int32 = 1
                while i <= dataLength:
                    defer: i = i +% 1
                    temp = temp *% int64(i)
        return temp

method generate*(this: OrderedIntArrayPermutationUtil, data: JArray[int32], visitor: Visitor) {.base.} =
        var iterations: int64 = this.factorial(data.length)
        echo jstr(this.TOTAL_ITERATIONS_TABLE)
        echo jstr(iterations)
        block:
            var count: int64 = 0'i64
            while count < iterations -% 1'i64:
                defer: count = count +% 1
                this.getNext(data)
                visitor.visit(this)
        echo jstr(this.FINISHED)

proc main*(t: typedesc[OrderedIntArrayPermutationUtil], args: JArray[string]) =
        let TOTAL: int32 = 3
        let data: JArray[int32] = newJArray[int32](TOTAL, default(int32))
        block:
            var i: int32 = 0
            while i < TOTAL:
                defer: i = i +% 1
                data[i] = i
        let permutationVisitor: IntPermutationVisitor = newIntPermutationVisitor(data)
        let ORIGINAL_DATA_LABEL: string = "Original Data: "
        echo jstr(ORIGINAL_DATA_LABEL)
        permutationVisitor.print(data, newStringMaker())
        OrderedIntArrayPermutationUtil.getInstance().generate(data, permutationVisitor)

