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
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/game/combat/damage/DamageableInterface as DamageableInterfaceModule
export DamageableInterfaceModule

type
    DamageUtil* = ref object of JObject
        logUtil*: LogUtil
        COLLIDE*: string

proc newDamageUtil*(): DamageUtil
proc initDamageUtil*(this: DamageUtil)
proc getInstance*(t: typedesc[DamageUtil]): DamageUtil {.discardable.}
method process*(this: DamageUtil, damageableInterface: DamageableInterface, damageableInterface2: DamageableInterface) {.base.}
method debugDamage*(this: DamageUtil, collidableInterfaceCompositeInterface1: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer) {.base.}
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var DamageUtil_instanceValue: DamageUtil
var DamageUtil_instanceSet = false
proc instance*(t: typedesc[DamageUtil]): DamageUtil =
    if not DamageUtil_instanceSet:
        DamageUtil_instanceSet = true
        DamageUtil_instanceValue = newDamageUtil()
    DamageUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDamageUtil(this: DamageUtil) =
    this.logUtil = LogUtil.getInstance()
    this.COLLIDE = "collide"
    discard

proc getInstance*(t: typedesc[DamageUtil]): DamageUtil {.discardable.} =
        return DamageUtil.instance

proc initDamageUtil*(this: DamageUtil) =
        this.initFieldsDamageUtil()
        discard

proc newDamageUtil*(): DamageUtil =
    result = DamageUtil()
    initDamageUtil(result)

method process*(this: DamageUtil, damageableInterface: DamageableInterface, damageableInterface2: DamageableInterface) {.base.} =
        damageableInterface.damage(damageableInterface2.getDamage(0), 0)

method debugDamage*(this: DamageUtil, collidableInterfaceCompositeInterface1: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer) {.base.} =
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(collidableInterfaceCompositeInterface))
        var damage: int32 = collidableDestroyableDamageableLayer.getDamage(0)
        if damage > 20000:
            var stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append("Collision ")
            stringBuffer.append(collidableInterfaceCompositeInterface1.toString())
            stringBuffer.append(" with: ")
            stringBuffer.append(collidableInterfaceCompositeInterface.toString())
            stringBuffer.append(" damage: ")
            stringBuffer.appendint(damage)
            this.logUtil.putF(stringBuffer.toString(), collidableInterfaceCompositeInterface1, this.COLLIDE)

