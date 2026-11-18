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
# package org.allbinary.game.ag.layer.pickup.life

{.warning[UnusedImport]: off.}
import allbinary_java

type
    LifeResources* = ref object of JObject
        RESOURCE*: string

proc newLifeResources*(): LifeResources
proc initLifeResources*(this: LifeResources)
proc getInstance*(t: typedesc[LifeResources]): LifeResources {.discardable.}

var LifeResources_SINGLETONValue: LifeResources
var LifeResources_SINGLETONSet = false
proc SINGLETON*(t: typedesc[LifeResources]): LifeResources =
    if not LifeResources_SINGLETONSet:
        LifeResources_SINGLETONSet = true
        LifeResources_SINGLETONValue = newLifeResources()
    LifeResources_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsLifeResources(this: LifeResources) =
    this.RESOURCE = "life_drop_20_by_20.png"
    discard

proc initLifeResources*(this: LifeResources) =
        this.initFieldsLifeResources()
        discard

proc newLifeResources*(): LifeResources =
    result = LifeResources()
    initLifeResources(result)

proc getInstance*(t: typedesc[LifeResources]): LifeResources {.discardable.} =
        return LifeResources.SINGLETON

