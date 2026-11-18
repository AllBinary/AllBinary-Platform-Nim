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
import org/allbinary/game/layer/weapon/WeaponLayerCircularPool as WeaponLayerCircularPoolModule
export WeaponLayerCircularPoolModule
import org/allbinary/view/ViewPositionFactoryInterface as ViewPositionFactoryInterfaceModule
export ViewPositionFactoryInterfaceModule

type
    MineLayerCircularStaticPool* = ref object of JObject

proc newMineLayerCircularStaticPool*(): MineLayerCircularStaticPool
proc init*(t: typedesc[MineLayerCircularStaticPool], viewPositionFactoryInterface: ViewPositionFactoryInterface)
proc getInstance*(t: typedesc[MineLayerCircularStaticPool]): WeaponLayerCircularPool {.discardable.}
import org/allbinary/game/ag/layer/weapon/mine/MineCountedPickedUpLayerInterfaceFactory as MineCountedPickedUpLayerInterfaceFactoryModule
export MineCountedPickedUpLayerInterfaceFactoryModule
import org/allbinary/game/ag/layer/weapon/mine/MineLayerFactory as MineLayerFactoryModule
export MineLayerFactoryModule

var MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLValue: WeaponLayerCircularPool
var MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLSet = false
proc WEAPON_LAYER_CIRCULAR_STATIC_POOL*(t: typedesc[MineLayerCircularStaticPool]): WeaponLayerCircularPool =
    if not MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLSet:
        MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLSet = true
        MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLValue = newWeaponLayerCircularPool()
    MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLValue
proc `WEAPON_LAYER_CIRCULAR_STATIC_POOL=`*(t: typedesc[MineLayerCircularStaticPool], value: WeaponLayerCircularPool) =
    MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLSet = true
    MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLValue = value

proc initMineLayerCircularStaticPool*(this: MineLayerCircularStaticPool) =
    discard

proc newMineLayerCircularStaticPool*(): MineLayerCircularStaticPool =
    result = MineLayerCircularStaticPool()
    initMineLayerCircularStaticPool(result)

proc init*(t: typedesc[MineLayerCircularStaticPool], viewPositionFactoryInterface: ViewPositionFactoryInterface) =
        MineCountedPickedUpLayerInterfaceFactory.init()
        MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL.initAllBinaryLayerCircularPool(newMineLayerFactory(viewPositionFactoryInterface), 20)

proc getInstance*(t: typedesc[MineLayerCircularStaticPool]): WeaponLayerCircularPool {.discardable.} =
        return MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL

