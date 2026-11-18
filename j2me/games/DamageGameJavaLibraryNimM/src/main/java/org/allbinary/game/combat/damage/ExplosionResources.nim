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
# package org.allbinary.game.combat.damage

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ExplosionResources* = ref object of JObject
        EXPLOSION_90_RESOURCE*: string
        EXPLOSION_60_RESOURCE*: string
        HALF_EXPLOSION_RESOURCE*: string
        THIRD_EXPLOSION_RESOURCE*: string

proc newExplosionResources*(): ExplosionResources
proc initExplosionResources*(this: ExplosionResources)
proc getInstance*(t: typedesc[ExplosionResources]): ExplosionResources {.discardable.}

var ExplosionResources_instanceValue: ExplosionResources
var ExplosionResources_instanceSet = false
proc instance*(t: typedesc[ExplosionResources]): ExplosionResources =
    if not ExplosionResources_instanceSet:
        ExplosionResources_instanceSet = true
        ExplosionResources_instanceValue = newExplosionResources()
    ExplosionResources_instanceValue

# Java field initializers run after the base initializer
proc initFieldsExplosionResources(this: ExplosionResources) =
    this.EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png"
    this.EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png"
    this.HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png"
    this.THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png"
    discard

proc getInstance*(t: typedesc[ExplosionResources]): ExplosionResources {.discardable.} =
        return ExplosionResources.instance

proc initExplosionResources*(this: ExplosionResources) =
        this.initFieldsExplosionResources()
        discard

proc newExplosionResources*(): ExplosionResources =
    result = ExplosionResources()
    initExplosionResources(result)

