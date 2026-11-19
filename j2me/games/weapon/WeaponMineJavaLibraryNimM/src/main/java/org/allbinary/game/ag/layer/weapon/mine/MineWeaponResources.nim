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
# package org.allbinary.game.ag.layer.weapon.mine

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/resources/BasicGameResources as BasicGameResourcesModule
export BasicGameResourcesModule

type
    MineWeaponResources* = ref object of BasicGameResources
        DROP_TEXT_RESOURCE*: string
        DROP_RESOURCE*: string
        DROP_ICON_RESOURCE*: string

proc newMineWeaponResources*(): MineWeaponResources
proc initMineWeaponResources*(this: MineWeaponResources)
proc getInstance*(t: typedesc[MineWeaponResources]): MineWeaponResources {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var MineWeaponResources_instanceValue: JObject
var MineWeaponResources_instanceSet = false
proc instance*(t: typedesc[MineWeaponResources]): JObject =
    if not MineWeaponResources_instanceSet:
        MineWeaponResources_instanceSet = true
        MineWeaponResources_instanceValue = NullUtil.getInstance().NULL_OBJECT
    MineWeaponResources_instanceValue
proc `instance=`*(t: typedesc[MineWeaponResources], value: JObject) =
    MineWeaponResources_instanceSet = true
    MineWeaponResources_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsMineWeaponResources(this: MineWeaponResources) =
    this.DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png"
    this.DROP_RESOURCE = "/mine_drop_20_by_20.png"
    this.DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png"
    discard

proc getInstance*(t: typedesc[MineWeaponResources]): MineWeaponResources {.discardable.} =
        if MineWeaponResources.instance == NullUtil.getInstance().NULL_OBJECT:
            MineWeaponResources.instance = newMineWeaponResources()
        return MineWeaponResources(JObject(MineWeaponResources.instance))

proc initMineWeaponResources*(this: MineWeaponResources) =
        initBasicGameResources(this)
        this.initFieldsMineWeaponResources()
        let ROOT: string = "/mine"
        let SMALL: string = "_20_by_20.png"
        let MEDIUM: string = SMALL
        let SIZE_FOUR: string = SMALL
        let SIZE_FIVE: string = SMALL
        let SIZE_SIX: string = SMALL
        let SIZE: JArray[string] = newJArrayFrom[string]([SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX])
        jSuperStatement(procCall BasicGameResources(this).init(ROOT, SIZE))

proc newMineWeaponResources*(): MineWeaponResources =
    result = MineWeaponResources()
    initMineWeaponResources(result)

when declared(newMineWeaponResourcesHook0):
    newMineWeaponResourcesHook0 = proc (): BasicGameResources = newMineWeaponResources()

