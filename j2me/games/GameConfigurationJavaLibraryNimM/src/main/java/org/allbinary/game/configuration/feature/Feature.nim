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

type
    Feature* = ref object of JObject
        name*: string

proc newFeature*(name: string): Feature
proc initFeature*(this: Feature, name: string)
proc getInstance*(t: typedesc[Feature], name: string): Feature {.discardable.}
proc add*(t: typedesc[Feature], name: string, gameFeature: Feature)
method toString*(this: Feature): string {.discardable.}
method getName*(this: Feature): string {.base, discardable.}
import org/allbinary/game/configuration/event/ChangedGameFeatureListener as ChangedGameFeatureListenerModule
export ChangedGameFeatureListenerModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule

var Feature_hashtableValue: ABHashtable
var Feature_hashtableSet = false
proc hashtable*(t: typedesc[Feature]): ABHashtable =
    if not Feature_hashtableSet:
        Feature_hashtableSet = true
        Feature_hashtableValue = StdUtil.getInstance().createHashtable()
    Feature_hashtableValue
proc `hashtable=`*(t: typedesc[Feature], value: ABHashtable) =
    Feature_hashtableSet = true
    Feature_hashtableValue = value

# Java field initializers run after the base initializer
proc initFieldsFeature(this: Feature) =
    
    discard

proc initFeature*(this: Feature, name: string) =
        this.initFieldsFeature()
        this.name = name
        Feature.add(name, this)
        ChangedGameFeatureListener.getInstance().add(this)

proc newFeature*(name: string): Feature =
    result = Feature()
    initFeature(result, name)

proc getInstance*(t: typedesc[Feature], name: string): Feature {.discardable.} =
        return Feature(JObject(Feature.hashtable.get(name)))

proc add*(t: typedesc[Feature], name: string, gameFeature: Feature) =
        Feature.hashtable.put(name, gameFeature)

method toString*(this: Feature): string {.discardable.} =
        return this.getName()

method getName*(this: Feature): string {.base, discardable.} =
        return this.name

