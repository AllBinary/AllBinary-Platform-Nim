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
# package org.allbinary.game.input.mapping

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule

type
    InputMapping* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        hashtable*: ABHashtable
        mappedList*: BasicArrayList

proc newInputMapping*(): InputMapping
proc initInputMapping*(this: InputMapping)
method getTotalMapped*(this: InputMapping): int32 {.base, discardable.}
method isDefaultNew*(this: InputMapping): bool {.base, discardable.}
method getDefault*(this: InputMapping): InputToGameKeyMapping {.base, discardable.}
method removeAll*(this: InputMapping) {.base.}
method remove*(this: InputMapping, input: Input, mappedToInput: Input) {.base.}
method addMapping*(this: InputMapping, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
method add*(this: InputMapping, input: Input, mappedToInput: Input) {.base.}
method isMapped*(this: InputMapping, input: Input): bool {.base, discardable.}
method getMappedInput*(this: InputMapping, id: Input): BasicArrayList {.base, discardable.}
method getHashtable*(this: InputMapping): ABHashtable {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule


# Java field initializers run after the base initializer
proc initFieldsInputMapping(this: InputMapping) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.hashtable = StdUtil.getInstance().createHashtable()
    this.mappedList = newBasicArrayListD()
    discard

proc initInputMapping*(this: InputMapping) =
        this.initFieldsInputMapping()
        discard

proc newInputMapping*(): InputMapping =
    result = InputMapping()
    initInputMapping(result)

method getTotalMapped*(this: InputMapping): int32 {.base, discardable.} =
        return this.hashtable.size()

method isDefaultNew*(this: InputMapping): bool {.base, discardable.} =
        return false

method getDefault*(this: InputMapping): InputToGameKeyMapping {.base, discardable.} =
        return InputToGameKeyMapping.getNullInstance()

method removeAll*(this: InputMapping) {.base.} =
        this.hashtable.clear()
        this.mappedList.clear()

method remove*(this: InputMapping, input: Input, mappedToInput: Input) {.base.} =
        let stringBuffer: StringMaker = newStringMaker()
        let stringUtil: StringUtil = StringUtil.getInstance()
        stringBuffer.append(CommonLabels.getInstance().START_LABEL)
        stringBuffer.append(stringUtil.toString(input))
        stringBuffer.append(" == ")
        stringBuffer.append(stringUtil.toString(mappedToInput))
        this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove")
        let list: BasicArrayList = this.getMappedInput(input)
        if list.contains(mappedToInput):
            list.remove(mappedToInput)
            this.mappedList.remove(mappedToInput)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Removed: ")
            stringBuffer.append(stringUtil.toString(input))
            stringBuffer.append(" == ")
            stringBuffer.append(stringUtil.toString(mappedToInput))
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove")
        else:
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Not Deleted: ")
            stringBuffer.append(stringUtil.toString(input))
            stringBuffer.append(" == ")
            stringBuffer.append(stringUtil.toString(mappedToInput))
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove")

method addMapping*(this: InputMapping, inputToGameKeyMapping: InputToGameKeyMapping) {.base.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method add*(this: InputMapping, input: Input, mappedToInput: Input) {.base.} =
        var list: BasicArrayList = this.getMappedInput(input)
        if (not list.contains(mappedToInput)):
            list.add(mappedToInput)
            this.mappedList.add(mappedToInput)

method isMapped*(this: InputMapping, input: Input): bool {.base, discardable.} =
        return this.mappedList.contains(input)

method getMappedInput*(this: InputMapping, id: Input): BasicArrayList {.base, discardable.} =
        let mappingInputCanBeNullList: JObject = this.hashtable.get(id)
        if (jIsNil(mappingInputCanBeNullList)):
            let list: BasicArrayList = newBasicArrayListD()
            this.hashtable.put(id, list)
            return list
        return BasicArrayList(JObject(mappingInputCanBeNullList))

method getHashtable*(this: InputMapping): ABHashtable {.base, discardable.} =
        return this.hashtable

