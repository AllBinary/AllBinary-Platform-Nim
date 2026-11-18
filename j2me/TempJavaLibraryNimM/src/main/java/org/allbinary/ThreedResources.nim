#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ThreedResources* = ref object of JObject

proc newThreedResources*(): ThreedResources
proc getThreedResources*(t: typedesc[ThreedResources]): ThreedResources {.discardable.}
method add*(this: ThreedResources) {.base.}

var ThreedResources_threedResourcesValue: ThreedResources
var ThreedResources_threedResourcesSet = false
proc threedResources*(t: typedesc[ThreedResources]): ThreedResources =
    if not ThreedResources_threedResourcesSet:
        ThreedResources_threedResourcesSet = true
        ThreedResources_threedResourcesValue = newThreedResources()
    ThreedResources_threedResourcesValue

proc initThreedResources*(this: ThreedResources) =
    discard

proc newThreedResources*(): ThreedResources =
    result = ThreedResources()
    initThreedResources(result)

proc getThreedResources*(t: typedesc[ThreedResources]): ThreedResources {.discardable.} =
        return ThreedResources.threedResources

method add*(this: ThreedResources) {.base.} =
        discard

