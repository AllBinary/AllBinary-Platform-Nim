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
# package org.allbinary.game.layer.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/game/layer/weapon/WeaponLayer as WeaponLayerModule
export WeaponLayerModule

type
    WeaponLayerArrayLayerCircularStaticPool* = ref object of JObject
        MAX*: int32
        circularIndexUtil*: CircularIndexUtil
        WEAPONLAYER_ARRAY*: JArray[JArray[WeaponLayer]]
        TWO_WEAPONLAYER_ARRAY*: JArray[JArray[WeaponLayer]]
        THREE_WEAPONLAYER_ARRAY*: JArray[JArray[WeaponLayer]]

proc newWeaponLayerArrayLayerCircularStaticPool*(): WeaponLayerArrayLayerCircularStaticPool
proc getInstance*(t: typedesc[WeaponLayerArrayLayerCircularStaticPool]): WeaponLayerArrayLayerCircularStaticPool {.discardable.}
method init*(this: WeaponLayerArrayLayerCircularStaticPool) {.base.}
method getWeaponLayerArrays*(this: WeaponLayerArrayLayerCircularStaticPool, size: int32): JArray[JArray[WeaponLayer]] {.base, discardable.}
method getInstanceArray*(this: WeaponLayerArrayLayerCircularStaticPool, size: int32): JArray[WeaponLayer] {.base, discardable.}

var WeaponLayerArrayLayerCircularStaticPool_instanceValue: WeaponLayerArrayLayerCircularStaticPool
var WeaponLayerArrayLayerCircularStaticPool_instanceSet = false
proc instance*(t: typedesc[WeaponLayerArrayLayerCircularStaticPool]): WeaponLayerArrayLayerCircularStaticPool =
    if not WeaponLayerArrayLayerCircularStaticPool_instanceSet:
        WeaponLayerArrayLayerCircularStaticPool_instanceSet = true
        WeaponLayerArrayLayerCircularStaticPool_instanceValue = newWeaponLayerArrayLayerCircularStaticPool()
    WeaponLayerArrayLayerCircularStaticPool_instanceValue

# Java field initializers run after the base initializer
proc initFieldsWeaponLayerArrayLayerCircularStaticPool(this: WeaponLayerArrayLayerCircularStaticPool) =
    this.MAX = 5
    this.circularIndexUtil = CircularIndexUtil.createInstance(this.MAX)
    
    
    
    discard

proc initWeaponLayerArrayLayerCircularStaticPool*(this: WeaponLayerArrayLayerCircularStaticPool) =
    this.initFieldsWeaponLayerArrayLayerCircularStaticPool()

proc newWeaponLayerArrayLayerCircularStaticPool*(): WeaponLayerArrayLayerCircularStaticPool =
    result = WeaponLayerArrayLayerCircularStaticPool()
    initWeaponLayerArrayLayerCircularStaticPool(result)

proc getInstance*(t: typedesc[WeaponLayerArrayLayerCircularStaticPool]): WeaponLayerArrayLayerCircularStaticPool {.discardable.} =
        return WeaponLayerArrayLayerCircularStaticPool.instance

method init*(this: WeaponLayerArrayLayerCircularStaticPool) {.base.} =
        let WEAPONLAYER_ARRAY: JArray[JArray[WeaponLayer]] = newJArray[JArray[WeaponLayer]](this.MAX *% 2, nil)
        let TWO_WEAPONLAYER_ARRAY: JArray[JArray[WeaponLayer]] = newJArray[JArray[WeaponLayer]](this.MAX, nil)
        let THREE_WEAPONLAYER_ARRAY: JArray[JArray[WeaponLayer]] = newJArray[JArray[WeaponLayer]](this.MAX, nil)
        block:
            var index: int32 = 0
            while index < this.MAX:
                defer: index = index +% 1
                WEAPONLAYER_ARRAY[index] = newJArray[WeaponLayer](1, default(WeaponLayer))
                TWO_WEAPONLAYER_ARRAY[index] = newJArray[WeaponLayer](2, default(WeaponLayer))
                THREE_WEAPONLAYER_ARRAY[index] = newJArray[WeaponLayer](3, default(WeaponLayer))
        this.WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY
        this.TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY
        this.THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY

method getWeaponLayerArrays*(this: WeaponLayerArrayLayerCircularStaticPool, size: int32): JArray[JArray[WeaponLayer]] {.base, discardable.} =
        if size == 1:
            return this.WEAPONLAYER_ARRAY
        elif size == 2:
            return this.TWO_WEAPONLAYER_ARRAY
        elif size == 3:
            return this.THREE_WEAPONLAYER_ARRAY
        raise newJException("RuntimeException", "")

method getInstanceArray*(this: WeaponLayerArrayLayerCircularStaticPool, size: int32): JArray[WeaponLayer] {.base, discardable.} =
        let weaponLayerArray: JArray[WeaponLayer] = this.getWeaponLayerArrays(size)[this.circularIndexUtil.getIndex()]
        this.circularIndexUtil.next()
        return weaponLayerArray

