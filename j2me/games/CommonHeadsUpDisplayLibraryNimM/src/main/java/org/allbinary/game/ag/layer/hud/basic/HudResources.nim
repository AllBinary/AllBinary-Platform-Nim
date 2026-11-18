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
# package org.allbinary.game.ag.layer.hud.basic

{.warning[UnusedImport]: off.}
import allbinary_java

type
    HudResources* = ref object of JObject
        RESOURCE_LIFE*: string
        RESOURCE_HEALTH*: string

proc newHudResources*(): HudResources
proc initHudResources*(this: HudResources)
proc getInstance*(t: typedesc[HudResources]): HudResources {.discardable.}

var HudResources_instanceValue: HudResources
var HudResources_instanceSet = false
proc instance*(t: typedesc[HudResources]): HudResources =
    if not HudResources_instanceSet:
        HudResources_instanceSet = true
        HudResources_instanceValue = newHudResources()
    HudResources_instanceValue

# Java field initializers run after the base initializer
proc initFieldsHudResources(this: HudResources) =
    this.RESOURCE_LIFE = "/hud_life_10_by_10.png"
    this.RESOURCE_HEALTH = "/hud_health_10_by_10.png"
    discard

proc getInstance*(t: typedesc[HudResources]): HudResources {.discardable.} =
        return HudResources.instance

proc initHudResources*(this: HudResources) =
        this.initFieldsHudResources()
        discard

proc newHudResources*(): HudResources =
    result = HudResources()
    initHudResources(result)

