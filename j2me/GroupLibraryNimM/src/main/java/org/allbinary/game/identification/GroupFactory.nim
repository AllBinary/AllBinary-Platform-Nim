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
# package org.allbinary.game.identification

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/identification/Group as GroupModule
export GroupModule

type
    GroupFactory* = ref object of JObject
        logUtil*: LogUtil
        NULL_GROUP_ARRAY*: JArray[Group]
        list*: BasicArrayList
        index*: int32

proc newGroupFactory*(): GroupFactory
proc getInstance*(t: typedesc[GroupFactory]): GroupFactory {.discardable.}
method getNextGroup*(this: GroupFactory): Group {.base, discardable.}
method getNextGroupByName*(this: GroupFactory, name: string): Group {.base, discardable.}
method init*(this: GroupFactory, groups: int16, nameArray: JArray[string]) {.base.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var GroupFactory_instanceValue: GroupFactory
var GroupFactory_instanceSet = false
proc instance*(t: typedesc[GroupFactory]): GroupFactory =
    if not GroupFactory_instanceSet:
        GroupFactory_instanceSet = true
        GroupFactory_instanceValue = newGroupFactory()
    GroupFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGroupFactory(this: GroupFactory) =
    this.logUtil = LogUtil.getInstance()
    this.NULL_GROUP_ARRAY = newJArray[Group](0, default(Group))
    this.list = newBasicArrayListD()
    this.index = 0
    discard

proc initGroupFactory*(this: GroupFactory) =
    this.initFieldsGroupFactory()

proc newGroupFactory*(): GroupFactory =
    result = GroupFactory()
    initGroupFactory(result)

proc getInstance*(t: typedesc[GroupFactory]): GroupFactory {.discardable.} =
        return GroupFactory.instance

method getNextGroup*(this: GroupFactory): Group {.base, discardable.} =
        let group: Group = Group(JObject(this.list.objectArray[this.index]))
        this.index = this.index +% 1
        return group

method getNextGroupByName*(this: GroupFactory, name: string): Group {.base, discardable.} =
        let group: Group = this.getNextGroup()
        group.setName(name)
        return group

method init*(this: GroupFactory, groups: int16, nameArray: JArray[string]) {.base.} =
        let stringMaker: StringMaker = newStringMaker()
        let stringUtil: StringUtil = StringUtil.getInstance()
        let TEAM: string = "Team "
        this.list.clear()
        this.index = 0
        var size: int32 = this.list.size()
        var name: string = ""
        while size < int32(groups):
            name = stringUtil.EMPTY_STRING
            if size < nameArray.length:
                name = nameArray[size]
            else:
                stringMaker.delete(0, stringMaker.length())
                name = stringMaker.append(TEAM).appendint(size).toString()
            this.list.add(newGroup(name, jToInt16((size +% 3))))
            size = size +% 1

