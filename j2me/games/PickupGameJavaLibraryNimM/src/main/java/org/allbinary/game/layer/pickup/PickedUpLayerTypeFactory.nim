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
# package org.allbinary.game.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/pickup/PickedUpLayerType as PickedUpLayerTypeModule
export PickedUpLayerTypeModule

type
    PickedUpLayerTypeFactory* = ref object of JObject
        NONE*: PickedUpLayerType
        BEAM*: PickedUpLayerType
        MINE*: PickedUpLayerType
        PROJECTILE*: PickedUpLayerType
        ENHANCEMENT*: PickedUpLayerType
        MORPH*: PickedUpLayerType
        PART*: PickedUpLayerType
        HEAL*: PickedUpLayerType
        LIFE*: PickedUpLayerType
        POINTS*: PickedUpLayerType

proc newPickedUpLayerTypeFactory*(): PickedUpLayerTypeFactory
proc getInstance*(t: typedesc[PickedUpLayerTypeFactory]): PickedUpLayerTypeFactory {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var PickedUpLayerTypeFactory_instanceValue: PickedUpLayerTypeFactory
var PickedUpLayerTypeFactory_instanceSet = false
proc instance*(t: typedesc[PickedUpLayerTypeFactory]): PickedUpLayerTypeFactory =
    if not PickedUpLayerTypeFactory_instanceSet:
        PickedUpLayerTypeFactory_instanceSet = true
        PickedUpLayerTypeFactory_instanceValue = newPickedUpLayerTypeFactory()
    PickedUpLayerTypeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPickedUpLayerTypeFactory(this: PickedUpLayerTypeFactory) =
    this.NONE = newPickedUpLayerType(StringUtil.getInstance().NULL_STRING)
    this.BEAM = newPickedUpLayerType("BEAM")
    this.MINE = newPickedUpLayerType("MINE")
    this.PROJECTILE = newPickedUpLayerType("PROJECTILE")
    this.ENHANCEMENT = newPickedUpLayerType("Enhancement")
    this.MORPH = newPickedUpLayerType("Morph")
    this.PART = newPickedUpLayerType("Part")
    this.HEAL = newPickedUpLayerType("Heal")
    this.LIFE = newPickedUpLayerType("Life")
    this.POINTS = newPickedUpLayerType("Points")
    discard

proc initPickedUpLayerTypeFactory*(this: PickedUpLayerTypeFactory) =
    this.initFieldsPickedUpLayerTypeFactory()

proc newPickedUpLayerTypeFactory*(): PickedUpLayerTypeFactory =
    result = PickedUpLayerTypeFactory()
    initPickedUpLayerTypeFactory(result)

proc getInstance*(t: typedesc[PickedUpLayerTypeFactory]): PickedUpLayerTypeFactory {.discardable.} =
        return PickedUpLayerTypeFactory.instance

