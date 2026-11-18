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
    ObjectPermutationVisitor* = ref object of Visitor
        data*: JArray[JObject]
        stringBuilder*: StringMaker

proc newObjectPermutationVisitor*(data: JArray[JObject]): ObjectPermutationVisitor
proc initObjectPermutationVisitor*(this: ObjectPermutationVisitor, data: JArray[JObject])
method visit*(this: ObjectPermutationVisitor, anyType: JObject): JObject {.discardable.}
method print*(this: ObjectPermutationVisitor, data: JArray[JObject]) {.base.}
method print*(this: ObjectPermutationVisitor, data: JArray[JObject], stringBuilder: StringMaker) {.base.}
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsObjectPermutationVisitor(this: ObjectPermutationVisitor) =
    
    this.stringBuilder = newStringMaker()
    discard

proc initObjectPermutationVisitor*(this: ObjectPermutationVisitor, data: JArray[JObject]) =
        initVisitor(this)
        this.initFieldsObjectPermutationVisitor()
        this.data = data

proc newObjectPermutationVisitor*(data: JArray[JObject]): ObjectPermutationVisitor =
    result = ObjectPermutationVisitor()
    initObjectPermutationVisitor(result, data)

method visit*(this: ObjectPermutationVisitor, anyType: JObject): JObject {.discardable.} =
        this.stringBuilder.delete(0, this.stringBuilder.length())
        this.print(this.data, this.stringBuilder)
        return NullUtil.getInstance().NULL_OBJECT

method print*(this: ObjectPermutationVisitor, data: JArray[JObject]) {.base.} =
        let stringBuilder: StringMaker = newStringMaker()
        this.print(data, stringBuilder)

method print*(this: ObjectPermutationVisitor, data: JArray[JObject], stringBuilder: StringMaker) {.base.} =
        let tsUtil: TsUtil = TsUtil.getInstance()
        let size: int32 = data.length
        block:
            var i: int32 = 0
            while i < size:
                defer: i = i +% 1
                stringBuilder.appendint(tsUtil.hashCode(data[i]))
                stringBuilder.append(CommonSeps.getInstance().SPACE)
        echo jstr(stringBuilder.toString())

when declared(newObjectPermutationVisitorHook1):
    newObjectPermutationVisitorHook1 = proc (data: JArray[JObject]): Visitor = newObjectPermutationVisitor(data)

