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
# package org.allbinary.game.combat.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/game/combat/weapon/SimpleWeaponProperties as SimpleWeaponPropertiesModule
export SimpleWeaponPropertiesModule

type
    WeaponProperties* = ref object of SimpleWeaponProperties
        reloadTime*: int64
        targetingTime*: int64
        speed*: BasicDecimal
        MAX*: int64
        ZERO*: int16

proc newWeaponProperties*(reloadTime: int64, targetingTime: int64, speed: int64, damage: int32, dissipation: int16): WeaponProperties
proc initWeaponProperties*(this: WeaponProperties, reloadTime: int64, targetingTime: int64, speed: int64, damage: int32, dissipation: int16)
method setReloadTime*(this: WeaponProperties, reloadTime: int64) {.base.}
method getReloadTime*(this: WeaponProperties): int64 {.base, discardable.}
method setTargetingTime*(this: WeaponProperties, targetingTime: int64) {.base.}
method getTargetingTime*(this: WeaponProperties): int64 {.base, discardable.}
method getSpeed*(this: WeaponProperties): BasicDecimal {.base, discardable.}
method setSpeed*(this: WeaponProperties, speed: BasicDecimal) {.base.}
method getDamageI*(this: WeaponProperties, range: int32): int32 {.base, discardable.}
method toStringArray*(this: WeaponProperties): JArray[string] {.base, discardable.}
method toString*(this: WeaponProperties): string {.discardable.}
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var WeaponProperties_NULL_WEAPON_PROPERTIESValue: WeaponProperties
var WeaponProperties_NULL_WEAPON_PROPERTIESSet = false
proc NULL_WEAPON_PROPERTIES*(t: typedesc[WeaponProperties]): WeaponProperties =
    if not WeaponProperties_NULL_WEAPON_PROPERTIESSet:
        WeaponProperties_NULL_WEAPON_PROPERTIESSet = true
        WeaponProperties_NULL_WEAPON_PROPERTIESValue = newWeaponProperties(0'i64, 0'i64, 0'i64, 0, jToInt16(0))
    WeaponProperties_NULL_WEAPON_PROPERTIESValue
var WeaponProperties_messageSentValue: bool
var WeaponProperties_messageSentSet = false
proc messageSent*(t: typedesc[WeaponProperties]): bool =
    if not WeaponProperties_messageSentSet:
        WeaponProperties_messageSentSet = true
        WeaponProperties_messageSentValue = false
    WeaponProperties_messageSentValue
proc `messageSent=`*(t: typedesc[WeaponProperties], value: bool) =
    WeaponProperties_messageSentSet = true
    WeaponProperties_messageSentValue = value
var WeaponProperties_DAMAGEValue: string
var WeaponProperties_DAMAGESet = false
proc DAMAGE*(t: typedesc[WeaponProperties]): string =
    if not WeaponProperties_DAMAGESet:
        WeaponProperties_DAMAGESet = true
        WeaponProperties_DAMAGEValue = "Damage: "
    WeaponProperties_DAMAGEValue
var WeaponProperties_RANGEValue: string
var WeaponProperties_RANGESet = false
proc RANGE*(t: typedesc[WeaponProperties]): string =
    if not WeaponProperties_RANGESet:
        WeaponProperties_RANGESet = true
        WeaponProperties_RANGEValue = "Range: "
    WeaponProperties_RANGEValue
var WeaponProperties_RELOADValue: string
var WeaponProperties_RELOADSet = false
proc RELOAD*(t: typedesc[WeaponProperties]): string =
    if not WeaponProperties_RELOADSet:
        WeaponProperties_RELOADSet = true
        WeaponProperties_RELOADValue = "Reload: "
    WeaponProperties_RELOADValue

# Java field initializers run after the base initializer
proc initFieldsWeaponProperties(this: WeaponProperties) =
    this.reloadTime = 0
    this.targetingTime = 0
    this.speed = BasicDecimal.ZERO_BIGDECIMAL
    this.MAX = 10240'i64
    this.ZERO = 0
    discard

proc initWeaponProperties*(this: WeaponProperties, reloadTime: int64, targetingTime: int64, speed: int64, damage: int32, dissipation: int16) =
        initSimpleWeaponProperties(this)
        this.initFieldsWeaponProperties()
        if speed < this.MAX and speed != 0'i64 and (not WeaponProperties.messageSent):
            let MESSAGE: string = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            PreLogUtil.put(newStringMaker().append(MESSAGE).appendlong(speed).toString(), this, commonStrings.CONSTRUCTOR)
            WeaponProperties.messageSent = true
        this.setReloadTime(reloadTime)
        this.setTargetingTime(targetingTime)
        this.setDamage(damage)
        this.setDissipation(dissipation)
        this.setSpeed(newBasicDecimal(speed))
        if dissipation != this.ZERO:
            let unscaledDamage: int64 = this.speed.getUnscaled() *% int64(damage)
            let scaledDissipation: int32 = int32(dissipation) *% this.speed.getScaledFactorValue()
            let value: int64 = (unscaledDamage div int64(scaledDissipation))
            this.setRange(jToInt32((value *% 9'i64)) div 10)

proc newWeaponProperties*(reloadTime: int64, targetingTime: int64, speed: int64, damage: int32, dissipation: int16): WeaponProperties =
    result = WeaponProperties()
    initWeaponProperties(result, reloadTime, targetingTime, speed, damage, dissipation)

method setReloadTime*(this: WeaponProperties, reloadTime: int64) {.base.} =
        this.reloadTime = reloadTime

method getReloadTime*(this: WeaponProperties): int64 {.base, discardable.} =
        return this.reloadTime

method setTargetingTime*(this: WeaponProperties, targetingTime: int64) {.base.} =
        this.targetingTime = targetingTime

method getTargetingTime*(this: WeaponProperties): int64 {.base, discardable.} =
        return this.targetingTime

method getSpeed*(this: WeaponProperties): BasicDecimal {.base, discardable.} =
        return this.speed

method setSpeed*(this: WeaponProperties, speed: BasicDecimal) {.base.} =
        this.speed = speed

method getDamageI*(this: WeaponProperties, range: int32): int32 {.base, discardable.} =
        return this.getDamage() -% ((int32(this.getDissipation()) *% range) div this.speed.getScaled())

method toStringArray*(this: WeaponProperties): JArray[string] {.base, discardable.} =
        var index: int32 = 0
        let stringArray: JArray[string] = newJArray[string](3, default(string))
        let stringBuffer: StringMaker = newStringMaker()
        stringArray[jPostIncrement(index)] = stringBuffer.append(WeaponProperties.DAMAGE).appendint(this.getDamage()).toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[jPostIncrement(index)] = stringBuffer.append(WeaponProperties.RANGE).appendint(this.getRange()).toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[jPostIncrement(index)] = stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime()).toString()
        return stringArray

method toString*(this: WeaponProperties): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(WeaponProperties.DAMAGE).appendint(this.getDamage())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(WeaponProperties.RANGE).appendint(this.getRange())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime())
        return stringBuffer.toString()

when declared(newWeaponPropertiesHook5):
    newWeaponPropertiesHook5 = proc (reloadTime: int64, targetingTime: int64, speed: int64, damage: int32, dissipation: int16): SimpleWeaponProperties = newWeaponProperties(reloadTime, targetingTime, speed, damage, dissipation)

