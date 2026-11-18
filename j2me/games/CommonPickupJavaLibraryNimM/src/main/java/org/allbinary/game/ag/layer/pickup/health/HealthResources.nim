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
# package org.allbinary.game.ag.layer.pickup.health

{.warning[UnusedImport]: off.}
import allbinary_java

type
    HealthResources* = ref object of JObject
        RESOURCE*: string

proc newHealthResources*(): HealthResources
proc initHealthResources*(this: HealthResources)
proc getInstance*(t: typedesc[HealthResources]): HealthResources {.discardable.}

var HealthResources_SINGLETONValue: HealthResources
var HealthResources_SINGLETONSet = false
proc SINGLETON*(t: typedesc[HealthResources]): HealthResources =
    if not HealthResources_SINGLETONSet:
        HealthResources_SINGLETONSet = true
        HealthResources_SINGLETONValue = newHealthResources()
    HealthResources_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsHealthResources(this: HealthResources) =
    this.RESOURCE = "health_drop_20_by_20.png"
    discard

proc initHealthResources*(this: HealthResources) =
        this.initFieldsHealthResources()
        discard

proc newHealthResources*(): HealthResources =
    result = HealthResources()
    initHealthResources(result)

proc getInstance*(t: typedesc[HealthResources]): HealthResources {.discardable.} =
        return HealthResources.SINGLETON

