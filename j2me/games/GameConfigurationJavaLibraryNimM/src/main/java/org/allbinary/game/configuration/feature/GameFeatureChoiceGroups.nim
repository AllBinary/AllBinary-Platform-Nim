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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    GameFeatureChoiceGroups* = ref object of JObject
        hashtable*: ABHashtable

proc newGameFeatureChoiceGroups*(): GameFeatureChoiceGroups
proc initGameFeatureChoiceGroups*(this: GameFeatureChoiceGroups)
proc getExclusiveInstance*(t: typedesc[GameFeatureChoiceGroups]): GameFeatureChoiceGroups {.discardable.}
proc getMultipleInstance*(t: typedesc[GameFeatureChoiceGroups]): GameFeatureChoiceGroups {.discardable.}
method get*(this: GameFeatureChoiceGroups): ABHashtable {.base, discardable.}
method add*(this: GameFeatureChoiceGroups, name: string, list: BasicArrayList) {.base.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule

var GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue: GameFeatureChoiceGroups
var GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet = false
proc gameFeatureChoiceGroupsExclusive*(t: typedesc[GameFeatureChoiceGroups]): GameFeatureChoiceGroups =
    if not GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet:
        GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet = true
        GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue = newGameFeatureChoiceGroups()
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue
proc `gameFeatureChoiceGroupsExclusive=`*(t: typedesc[GameFeatureChoiceGroups], value: GameFeatureChoiceGroups) =
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet = true
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue = value
var GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue: GameFeatureChoiceGroups
var GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet = false
proc gameFeatureChoiceGroupsMultiple*(t: typedesc[GameFeatureChoiceGroups]): GameFeatureChoiceGroups =
    if not GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet:
        GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet = true
        GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue = newGameFeatureChoiceGroups()
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue
proc `gameFeatureChoiceGroupsMultiple=`*(t: typedesc[GameFeatureChoiceGroups], value: GameFeatureChoiceGroups) =
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet = true
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue = value

# Java field initializers run after the base initializer
proc initFieldsGameFeatureChoiceGroups(this: GameFeatureChoiceGroups) =
    this.hashtable = StdUtil.getInstance().createHashtable()
    discard

proc initGameFeatureChoiceGroups*(this: GameFeatureChoiceGroups) =
        this.initFieldsGameFeatureChoiceGroups()
        discard

proc newGameFeatureChoiceGroups*(): GameFeatureChoiceGroups =
    result = GameFeatureChoiceGroups()
    initGameFeatureChoiceGroups(result)

proc getExclusiveInstance*(t: typedesc[GameFeatureChoiceGroups]): GameFeatureChoiceGroups {.discardable.} =
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive

proc getMultipleInstance*(t: typedesc[GameFeatureChoiceGroups]): GameFeatureChoiceGroups {.discardable.} =
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple

method get*(this: GameFeatureChoiceGroups): ABHashtable {.base, discardable.} =
        return this.hashtable

method add*(this: GameFeatureChoiceGroups, name: string, list: BasicArrayList) {.base.} =
        this.hashtable.put(name, list)

