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
import java/util/Arrays as ArraysModule
export ArraysModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule

type
    OrderedObjectArrayPermutationUtil* = ref object of JObject
        TOTAL_ITERATIONS_TABLE*: string
        FINISHED*: string

proc newOrderedObjectArrayPermutationUtil*(): OrderedObjectArrayPermutationUtil
proc initOrderedObjectArrayPermutationUtil*(this: OrderedObjectArrayPermutationUtil)
proc getInstance*(t: typedesc[OrderedObjectArrayPermutationUtil]): OrderedObjectArrayPermutationUtil {.discardable.}
method getNext*(this: OrderedObjectArrayPermutationUtil, data: JArray[JObject]) {.base.}
method swap*(this: OrderedObjectArrayPermutationUtil, data: JArray[JObject], a: int32, b: int32) {.base.}
method factorial*(this: OrderedObjectArrayPermutationUtil, dataLength: int32): int64 {.base, discardable.}
method generate*(this: OrderedObjectArrayPermutationUtil, data: JArray[JObject], visitor: Visitor) {.base.}
proc main*(t: typedesc[OrderedObjectArrayPermutationUtil], args: JArray[string])
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/math/permutations/ComparableObject as ComparableObjectModule
export ComparableObjectModule
import org/allbinary/logic/math/permutations/ObjectPermutationVisitor as ObjectPermutationVisitorModule
export ObjectPermutationVisitorModule

var OrderedObjectArrayPermutationUtil_instanceValue: OrderedObjectArrayPermutationUtil
var OrderedObjectArrayPermutationUtil_instanceSet = false
proc instance*(t: typedesc[OrderedObjectArrayPermutationUtil]): OrderedObjectArrayPermutationUtil =
    if not OrderedObjectArrayPermutationUtil_instanceSet:
        OrderedObjectArrayPermutationUtil_instanceSet = true
        OrderedObjectArrayPermutationUtil_instanceValue = newOrderedObjectArrayPermutationUtil()
    OrderedObjectArrayPermutationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOrderedObjectArrayPermutationUtil(this: OrderedObjectArrayPermutationUtil) =
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: "
    this.FINISHED = "\nFINISHED"
    discard

proc getInstance*(t: typedesc[OrderedObjectArrayPermutationUtil]): OrderedObjectArrayPermutationUtil {.discardable.} =
        return OrderedObjectArrayPermutationUtil.instance

proc initOrderedObjectArrayPermutationUtil*(this: OrderedObjectArrayPermutationUtil) =
        this.initFieldsOrderedObjectArrayPermutationUtil()
        discard

proc newOrderedObjectArrayPermutationUtil*(): OrderedObjectArrayPermutationUtil =
    result = OrderedObjectArrayPermutationUtil()
    initOrderedObjectArrayPermutationUtil(result)

method getNext*(this: OrderedObjectArrayPermutationUtil, data: JArray[JObject]) {.base.} =
        var length: int32 = data.length
        var i: int32 = length -% 1
        let tsUtil: TsUtil = TsUtil.getInstance()
        while tsUtil.hashCode(data[i -% 1]) >= tsUtil.hashCode(data[i]):
            i = i -% 1
        var j: int32 = length
        while tsUtil.hashCode(data[j -% 1]) <= tsUtil.hashCode(data[i -% 1]):
            j = j -% 1
        this.swap(data, i -% 1, j -% 1)
        i = i +% 1
        j = length
        while i < j:
            this.swap(data, i -% 1, j -% 1)
            i = i +% 1
            j = j -% 1

method swap*(this: OrderedObjectArrayPermutationUtil, data: JArray[JObject], a: int32, b: int32) {.base.} =
        var temp: JObject = data[a]
        data[a] = data[b]
        data[b] = temp

method factorial*(this: OrderedObjectArrayPermutationUtil, dataLength: int32): int64 {.base, discardable.} =
        var temp: int64 = 1'i64
        if dataLength > 1:
            block:
                var i: int32 = 1
                while i <= dataLength:
                    defer: i = i +% 1
                    temp = temp *% int64(i)
        return temp

method generate*(this: OrderedObjectArrayPermutationUtil, data: JArray[JObject], visitor: Visitor) {.base.} =
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

proc main*(t: typedesc[OrderedObjectArrayPermutationUtil], args: JArray[string]) =
        let TOTAL: int32 = 7
        let data: JArray[JObject] = newJArray[JObject](TOTAL, default(JObject))
        block:
            var i: int32 = 0
            while i < TOTAL:
                defer: i = i +% 1
                data[i] = newComparableObject()
        Arrays.sort(data)
        let permutationVisitor: ObjectPermutationVisitor = newObjectPermutationVisitor(data)
        let ORIGINAL_DATA_LABEL: string = "Original Data: "
        echo jstr(ORIGINAL_DATA_LABEL)
        permutationVisitor.visit(data)
        OrderedObjectArrayPermutationUtil.getInstance().generate(data, permutationVisitor)

