# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule

type
    IntPermutationVisitor* = ref object of Visitor
        data*: JArray[int32]
        stringBuilder*: StringMaker

proc newIntPermutationVisitor*(data: JArray[int32]): IntPermutationVisitor
proc initIntPermutationVisitor*(this: IntPermutationVisitor, data: JArray[int32])
method visit*(this: IntPermutationVisitor, anyType: JObject): JObject {.discardable.}
method print*(this: IntPermutationVisitor, data: JArray[int32]) {.base.}
method print*(this: IntPermutationVisitor, data: JArray[int32], stringBuilder: StringMaker) {.base.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsIntPermutationVisitor(this: IntPermutationVisitor) =
    
    this.stringBuilder = newStringMaker()
    discard

proc initIntPermutationVisitor*(this: IntPermutationVisitor, data: JArray[int32]) =
        initVisitor(this)
        this.initFieldsIntPermutationVisitor()
        this.data = data

proc newIntPermutationVisitor*(data: JArray[int32]): IntPermutationVisitor =
    result = IntPermutationVisitor()
    initIntPermutationVisitor(result, data)

method visit*(this: IntPermutationVisitor, anyType: JObject): JObject {.discardable.} =
        this.stringBuilder.delete(0, this.stringBuilder.length())
        this.print(this.data, this.stringBuilder)
        return NullUtil.getInstance().NULL_OBJECT

method print*(this: IntPermutationVisitor, data: JArray[int32]) {.base.} =
        let stringBuilder: StringMaker = newStringMaker()
        this.print(data, stringBuilder)

method print*(this: IntPermutationVisitor, data: JArray[int32], stringBuilder: StringMaker) {.base.} =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let size: int32 = data.length
        block:
            var i: int32 = 0
            while i < size:
                defer: i = i +% 1
                stringBuilder.appendint(data[i])
                stringBuilder.append(commonSeps.SPACE)
        echo jstr(stringBuilder.toString())

when declared(newIntPermutationVisitorHook1):
    newIntPermutationVisitorHook1 = proc (data: JArray[int32]): Visitor = newIntPermutationVisitor(data)

