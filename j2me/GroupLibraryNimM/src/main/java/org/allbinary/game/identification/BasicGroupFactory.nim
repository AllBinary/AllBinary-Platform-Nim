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
import org/allbinary/game/identification/Group as GroupModule
export GroupModule

type
    BasicGroupFactory* = ref object of JObject
        NAME*: string
        NO_SUCH_GROUP*: string
        GOOD*: Group
        ENEMY*: Group
        ENEMY_ON_LEVEL*: Group
        NONE*: Group
        GOOD_ARRAY*: JArray[Group]
        ENEMY_ARRAY*: JArray[Group]
        ENEMY_ON_LEVEL_ARRAY*: JArray[Group]
        NONE_ARRAY*: JArray[Group]

proc newBasicGroupFactory*(): BasicGroupFactory
proc getInstance*(t: typedesc[BasicGroupFactory]): BasicGroupFactory {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var BasicGroupFactory_instanceValue: JObject
var BasicGroupFactory_instanceSet = false
proc instance*(t: typedesc[BasicGroupFactory]): JObject =
    if not BasicGroupFactory_instanceSet:
        BasicGroupFactory_instanceSet = true
        BasicGroupFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    BasicGroupFactory_instanceValue
proc `instance=`*(t: typedesc[BasicGroupFactory], value: JObject) =
    BasicGroupFactory_instanceSet = true
    BasicGroupFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsBasicGroupFactory(this: BasicGroupFactory) =
    this.NAME = "GROUP_NAME"
    this.NO_SUCH_GROUP = "No Such Group: "
    this.GOOD = newGroup("Good Guys", jToInt16(0))
    this.ENEMY = newGroup("Bad Guys", jToInt16(1))
    this.ENEMY_ON_LEVEL = newGroup("Bad Guys on Level", jToInt16(2))
    this.NONE = newGroup("Not On A Team", jToInt16(3))
    this.GOOD_ARRAY = newJArrayFromRefs[Group](this.GOOD)
    this.ENEMY_ARRAY = newJArrayFromRefs[Group](this.ENEMY)
    this.ENEMY_ON_LEVEL_ARRAY = newJArrayFromRefs[Group](this.ENEMY, this.ENEMY_ON_LEVEL)
    this.NONE_ARRAY = newJArrayFromRefs[Group](this.NONE)
    discard

proc initBasicGroupFactory*(this: BasicGroupFactory) =
    this.initFieldsBasicGroupFactory()

proc newBasicGroupFactory*(): BasicGroupFactory =
    result = BasicGroupFactory()
    initBasicGroupFactory(result)

proc getInstance*(t: typedesc[BasicGroupFactory]): BasicGroupFactory {.discardable.} =
        if BasicGroupFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            BasicGroupFactory.instance = newBasicGroupFactory()
        return BasicGroupFactory(JObject(BasicGroupFactory.instance))

