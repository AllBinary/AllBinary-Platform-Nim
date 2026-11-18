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
# package org.allbinary.game.health

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/health/HealthInterface as HealthInterfaceModule
export HealthInterfaceModule
import org/allbinary/game/health/HealthListenerInterface as HealthListenerInterfaceModule
export HealthListenerInterfaceModule

type
    Health* = ref object of HealthInterface
        health*: int32
        maxHealth*: int32
        healthListenerInterface*: HealthListenerInterface

proc newHealth*(maxHealth: int32): Health
proc initHealth*(this: Health, maxHealth: int32)
method heal*(this: Health, ahealth: int32)
method healMax*(this: Health)
method isDamaged*(this: Health): bool {.base, discardable.}
method damage*(this: Health, ahealth: int32)
method isAlive*(this: Health): bool {.discardable.}
method getMaxHealth*(this: Health): int32 {.discardable.}
method setMaxHealth*(this: Health, maxHealth: int32)
method setHealth*(this: Health, health: int32) {.base.}
method getHealth*(this: Health): int32 {.discardable.}
method addListener*(this: Health, healthGraphic: HealthListenerInterface)
method toString*(this: Health): string {.discardable.}
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/game/health/NullHealthListener as NullHealthListenerModule
export NullHealthListenerModule

var Health_NULL_HEALTHValue: Health
var Health_NULL_HEALTHSet = false
proc NULL_HEALTH*(t: typedesc[Health]): Health =
    if not Health_NULL_HEALTHSet:
        Health_NULL_HEALTHSet = true
        Health_NULL_HEALTHValue = newHealth(0)
    Health_NULL_HEALTHValue
var Health_NAMEValue: string
var Health_NAMESet = false
proc NAME*(t: typedesc[Health]): string =
    if not Health_NAMESet:
        Health_NAMESet = true
        Health_NAMEValue = "Health Resource"
    Health_NAMEValue
var Health_HEALTH_LABELValue: string
var Health_HEALTH_LABELSet = false
proc HEALTH_LABEL*(t: typedesc[Health]): string =
    if not Health_HEALTH_LABELSet:
        Health_HEALTH_LABELSet = true
        Health_HEALTH_LABELValue = "Health: "
    Health_HEALTH_LABELValue
var Health_MAX_HEALTH_LABELValue: string
var Health_MAX_HEALTH_LABELSet = false
proc MAX_HEALTH_LABEL*(t: typedesc[Health]): string =
    if not Health_MAX_HEALTH_LABELSet:
        Health_MAX_HEALTH_LABELSet = true
        Health_MAX_HEALTH_LABELValue = " Max: "
    Health_MAX_HEALTH_LABELValue

# Java field initializers run after the base initializer
proc initFieldsHealth(this: Health) =
    this.health = 0
    this.maxHealth = 0
    this.healthListenerInterface = NullHealthListener.NULL_HEALTH_LISTENERStatic
    discard

proc initHealth*(this: Health, maxHealth: int32) =
        this.initFieldsHealth()
        this.setMaxHealth(maxHealth)
        this.setHealth(maxHealth)

proc newHealth*(maxHealth: int32): Health =
    result = Health()
    initHealth(result, maxHealth)

method heal*(this: Health, ahealth: int32) =
        var newHealth: int32 = this.getHealth() +% ahealth
        if newHealth > this.getMaxHealth():
            this.setHealth(this.getMaxHealth())
        else:
            this.setHealth(newHealth)

method healMax*(this: Health) =
        this.setHealth(this.getMaxHealth())

method isDamaged*(this: Health): bool {.base, discardable.} =
        if this.getHealth() != this.getMaxHealth():
            return true
        else:
            return false

method damage*(this: Health, ahealth: int32) =
        if ahealth < 0:
            var stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append("******* Trying to heal when damaging. Damage: ")
            stringBuffer.appendint(ahealth)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(this.toString())
            ForcedLogUtil.log(stringBuffer.toString(), this)
            return
        var health: int32 = this.getHealth() -% ahealth
        this.setHealth(health)

method isAlive*(this: Health): bool {.discardable.} =
        if this.getHealth() <= 0:
            return false
        else:
            return true

method getMaxHealth*(this: Health): int32 {.discardable.} =
        return this.maxHealth

method setMaxHealth*(this: Health, maxHealth: int32) =
        this.maxHealth = maxHealth

method setHealth*(this: Health, health: int32) {.base.} =
        if health > this.getMaxHealth():
            this.health = this.getMaxHealth()
        elif health < 0:
            this.health = 0
        else:
            this.health = health
        if (not jIsNil(this.healthListenerInterface)):
            this.healthListenerInterface.onHealthChange()

method getHealth*(this: Health): int32 {.discardable.} =
        return this.health

method addListener*(this: Health, healthGraphic: HealthListenerInterface) =
        this.healthListenerInterface = healthGraphic

method toString*(this: Health): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(Health.HEALTH_LABEL)
        stringBuffer.appendint(this.health)
        stringBuffer.append(Health.MAX_HEALTH_LABEL)
        stringBuffer.appendint(this.maxHealth)
        return stringBuffer.toString()

