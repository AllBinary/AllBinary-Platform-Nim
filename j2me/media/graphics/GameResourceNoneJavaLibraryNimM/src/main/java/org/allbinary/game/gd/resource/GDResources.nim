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
# package org.allbinary.game.gd.resource

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GDResources* = ref object of JObject
        resourceStringArray*: JArray[string]
        currentLayoutRequiredTotal*: int32

proc newGDResources*(): GDResources
proc getInstance*(t: typedesc[GDResources]): GDResources {.discardable.}

var GDResources_instanceValue: GDResources
var GDResources_instanceSet = false
proc instance*(t: typedesc[GDResources]): GDResources =
    if not GDResources_instanceSet:
        GDResources_instanceSet = true
        GDResources_instanceValue = newGDResources()
    GDResources_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGDResources(this: GDResources) =
    this.resourceStringArray = newJArrayFrom[string]([])
    this.currentLayoutRequiredTotal = 0
    discard

proc initGDResources*(this: GDResources) =
    this.initFieldsGDResources()

proc newGDResources*(): GDResources =
    result = GDResources()
    initGDResources(result)

proc getInstance*(t: typedesc[GDResources]): GDResources {.discardable.} =
        return GDResources.instance

