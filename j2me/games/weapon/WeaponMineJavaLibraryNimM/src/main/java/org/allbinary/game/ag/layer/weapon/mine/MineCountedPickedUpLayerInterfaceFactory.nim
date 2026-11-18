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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/combat/weapon/WeaponProperties as WeaponPropertiesModule
export WeaponPropertiesModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/game/layer/weapon/WeaponLayerCircularPool as WeaponLayerCircularPoolModule
export WeaponLayerCircularPoolModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    MineCountedPickedUpLayerInterfaceFactory* = ref object of CountedPickedUpLayerInterfaceFactory
        weaponLayerCircularStaticPool*: WeaponLayerCircularPool
        weaponProperties*: WeaponProperties
        smallIntegerSingletonFactory*: SmallIntegerSingletonFactory

proc newMineCountedPickedUpLayerInterfaceFactory*(): MineCountedPickedUpLayerInterfaceFactory
proc initMineCountedPickedUpLayerInterfaceFactory*(this: MineCountedPickedUpLayerInterfaceFactory)
proc init*(t: typedesc[MineCountedPickedUpLayerInterfaceFactory])
proc getInstance*(t: typedesc[MineCountedPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.}
method getTotal*(this: MineCountedPickedUpLayerInterfaceFactory): int32 {.discardable.}
method getNextInstance*(this: MineCountedPickedUpLayerInterfaceFactory, hashtable: ABHashtable, x: int32, y: int32, z: int32): AllBinaryLayer {.discardable.}
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/game/layer/pickup/IconLayerFactory as IconLayerFactoryModule
export IconLayerFactoryModule
import org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory as PickedUpLayerTypeFactoryModule
export PickedUpLayerTypeFactoryModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/game/ag/layer/weapon/mine/MineLayerCircularStaticPool as MineLayerCircularStaticPoolModule
export MineLayerCircularStaticPoolModule
import org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources as MineWeaponResourcesModule
export MineWeaponResourcesModule

var MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue: PickedUpLayerInterfaceFactoryInterface
var MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = false
proc pickedUpLayerInterfaceFactoryInterface*(t: typedesc[MineCountedPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface =
    if not MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet:
        MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
        MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue
proc `pickedUpLayerInterfaceFactoryInterface=`*(t: typedesc[MineCountedPickedUpLayerInterfaceFactory], value: PickedUpLayerInterfaceFactoryInterface) =
    MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
    MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = value

# Java field initializers run after the base initializer
proc initFieldsMineCountedPickedUpLayerInterfaceFactory(this: MineCountedPickedUpLayerInterfaceFactory) =
    this.weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance()
    this.weaponProperties = newWeaponProperties(-1'i64, -1'i64, 0, 8000, jToInt16(10))
    this.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
    discard

proc init*(t: typedesc[MineCountedPickedUpLayerInterfaceFactory]) =
        MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = newMineCountedPickedUpLayerInterfaceFactory()

proc initMineCountedPickedUpLayerInterfaceFactory*(this: MineCountedPickedUpLayerInterfaceFactory) =
        initCountedPickedUpLayerInterfaceFactory(this, PickedUpLayerTypeFactory.getInstance().MINE, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_RESOURCE).getInstance(0))
        this.initFieldsMineCountedPickedUpLayerInterfaceFactory()

proc newMineCountedPickedUpLayerInterfaceFactory*(): MineCountedPickedUpLayerInterfaceFactory =
    result = MineCountedPickedUpLayerInterfaceFactory()
    initMineCountedPickedUpLayerInterfaceFactory(result)

proc getInstance*(t: typedesc[MineCountedPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.} =
        return MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface

method getTotal*(this: MineCountedPickedUpLayerInterfaceFactory): int32 {.discardable.} =
        return 3

method getNextInstance*(this: MineCountedPickedUpLayerInterfaceFactory, hashtable: ABHashtable, x: int32, y: int32, z: int32): AllBinaryLayer {.discardable.} =
        let sourceLayerInterface: AllBinaryLayer = AllBinaryLayer(JObject(hashtable.get(JObject(JObject(this.smallIntegerSingletonFactory.getAt(0))))))
        let angle: int32 = jUnboxInteger(hashtable.get(JObject(JObject(this.smallIntegerSingletonFactory.getAt(1)))))
        let scoreableInterface: ScoreableInterface = ScoreableInterface(JObject(sourceLayerInterface))
        return this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, int32(angle.intValue()), 0, this.weaponProperties, scoreableInterface)

when declared(newMineCountedPickedUpLayerInterfaceFactoryHook0):
    newMineCountedPickedUpLayerInterfaceFactoryHook0 = proc (): CountedPickedUpLayerInterfaceFactory = newMineCountedPickedUpLayerInterfaceFactory()

