#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import java/lang/Integer as IntegerModule
export IntegerModule

type
    GroupCommonFactory* = ref object of JObject
        ID*: int32
        GROUP_NAME_LABEL*: string
        ID_LABEL*: string
        ADDING_LABEL*: string
        TO_LABEL*: string

proc newGroupCommonFactory*(): GroupCommonFactory
proc getInstance*(t: typedesc[GroupCommonFactory]): GroupCommonFactory {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule

var GroupCommonFactory_instanceValue: JObject
var GroupCommonFactory_instanceSet = false
proc instance*(t: typedesc[GroupCommonFactory]): JObject =
    if not GroupCommonFactory_instanceSet:
        GroupCommonFactory_instanceSet = true
        GroupCommonFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    GroupCommonFactory_instanceValue
proc `instance=`*(t: typedesc[GroupCommonFactory], value: JObject) =
    GroupCommonFactory_instanceSet = true
    GroupCommonFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsGroupCommonFactory(this: GroupCommonFactory) =
    this.ID = SmallIntegerSingletonFactory.getInstance().getAt(10)
    this.GROUP_NAME_LABEL = "Group Name: "
    this.ID_LABEL = " Id: "
    this.ADDING_LABEL = "Adding: "
    this.TO_LABEL = " to: "
    discard

proc initGroupCommonFactory*(this: GroupCommonFactory) =
    this.initFieldsGroupCommonFactory()

proc newGroupCommonFactory*(): GroupCommonFactory =
    result = GroupCommonFactory()
    initGroupCommonFactory(result)

proc getInstance*(t: typedesc[GroupCommonFactory]): GroupCommonFactory {.discardable.} =
        if GroupCommonFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            GroupCommonFactory.instance = newGroupCommonFactory()
        return GroupCommonFactory(JObject(GroupCommonFactory.instance))

