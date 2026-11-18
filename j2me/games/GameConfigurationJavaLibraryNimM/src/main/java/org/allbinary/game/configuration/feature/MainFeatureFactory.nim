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
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule

type
    MainFeatureFactory* = ref object of JObject
        FULL_SCREEN*: Feature
        TITLE_BAR*: Feature
        STATIC*: Feature
        LOAD_ONDEMAND*: Feature
        LOAD_ALL*: Feature

proc newMainFeatureFactory*(): MainFeatureFactory
proc getInstance*(t: typedesc[MainFeatureFactory]): MainFeatureFactory {.discardable.}

var MainFeatureFactory_instanceValue: MainFeatureFactory
var MainFeatureFactory_instanceSet = false
proc instance*(t: typedesc[MainFeatureFactory]): MainFeatureFactory =
    if not MainFeatureFactory_instanceSet:
        MainFeatureFactory_instanceSet = true
        MainFeatureFactory_instanceValue = newMainFeatureFactory()
    MainFeatureFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMainFeatureFactory(this: MainFeatureFactory) =
    this.FULL_SCREEN = newFeature("Full Screen")
    this.TITLE_BAR = newFeature("Title Bar")
    this.STATIC = newFeature("Static Dependent Feature")
    this.LOAD_ONDEMAND = newFeature("Load OnDemand")
    this.LOAD_ALL = newFeature("Load All")
    discard

proc initMainFeatureFactory*(this: MainFeatureFactory) =
    this.initFieldsMainFeatureFactory()

proc newMainFeatureFactory*(): MainFeatureFactory =
    result = MainFeatureFactory()
    initMainFeatureFactory(result)

proc getInstance*(t: typedesc[MainFeatureFactory]): MainFeatureFactory {.discardable.} =
        return MainFeatureFactory.instance

