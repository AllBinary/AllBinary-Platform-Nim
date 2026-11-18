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
    InGameFeatureChoiceGroups* = ref object of JObject
        hashtable*: ABHashtable

proc newInGameFeatureChoiceGroups*(): InGameFeatureChoiceGroups
proc initInGameFeatureChoiceGroups*(this: InGameFeatureChoiceGroups)
proc getExclusiveInstance*(t: typedesc[InGameFeatureChoiceGroups]): InGameFeatureChoiceGroups {.discardable.}
proc getMultipleInstance*(t: typedesc[InGameFeatureChoiceGroups]): InGameFeatureChoiceGroups {.discardable.}
method get*(this: InGameFeatureChoiceGroups): ABHashtable {.base, discardable.}
method add*(this: InGameFeatureChoiceGroups, name: string, list: BasicArrayList) {.base.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule

var InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue: InGameFeatureChoiceGroups
var InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet = false
proc gameFeatureChoiceGroupsExclusive*(t: typedesc[InGameFeatureChoiceGroups]): InGameFeatureChoiceGroups =
    if not InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet:
        InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet = true
        InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue = newInGameFeatureChoiceGroups()
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue
proc `gameFeatureChoiceGroupsExclusive=`*(t: typedesc[InGameFeatureChoiceGroups], value: InGameFeatureChoiceGroups) =
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet = true
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue = value
var InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue: InGameFeatureChoiceGroups
var InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet = false
proc gameFeatureChoiceGroupsMultiple*(t: typedesc[InGameFeatureChoiceGroups]): InGameFeatureChoiceGroups =
    if not InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet:
        InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet = true
        InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue = newInGameFeatureChoiceGroups()
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue
proc `gameFeatureChoiceGroupsMultiple=`*(t: typedesc[InGameFeatureChoiceGroups], value: InGameFeatureChoiceGroups) =
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet = true
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue = value

# Java field initializers run after the base initializer
proc initFieldsInGameFeatureChoiceGroups(this: InGameFeatureChoiceGroups) =
    this.hashtable = StdUtil.getInstance().createHashtable()
    discard

proc initInGameFeatureChoiceGroups*(this: InGameFeatureChoiceGroups) =
        this.initFieldsInGameFeatureChoiceGroups()
        discard

proc newInGameFeatureChoiceGroups*(): InGameFeatureChoiceGroups =
    result = InGameFeatureChoiceGroups()
    initInGameFeatureChoiceGroups(result)

proc getExclusiveInstance*(t: typedesc[InGameFeatureChoiceGroups]): InGameFeatureChoiceGroups {.discardable.} =
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive

proc getMultipleInstance*(t: typedesc[InGameFeatureChoiceGroups]): InGameFeatureChoiceGroups {.discardable.} =
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple

method get*(this: InGameFeatureChoiceGroups): ABHashtable {.base, discardable.} =
        return this.hashtable

method add*(this: InGameFeatureChoiceGroups, name: string, list: BasicArrayList) {.base.} =
        this.hashtable.put(name, list)

