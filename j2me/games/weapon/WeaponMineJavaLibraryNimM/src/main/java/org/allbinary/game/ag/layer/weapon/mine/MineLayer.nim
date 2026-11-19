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
import org/allbinary/game/layer/weapon/SimpleWeaponLayer as SimpleWeaponLayerModule
export SimpleWeaponLayerModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/view/event/ViewPositionEventHandler as ViewPositionEventHandlerModule
export ViewPositionEventHandlerModule

type
    MineLayer* = ref object of SimpleWeaponLayer
        viewPositionEventHandler*: ViewPositionEventHandler

proc newMineLayer*(viewPosition: ViewPositionBase): MineLayer
proc initMineLayer*(this: MineLayer, viewPosition: ViewPositionBase)
method initXYZ*(this: MineLayer, x: int32, y: int32, z: int32)
method damage*(this: MineLayer, damage: int32, damageType: int32)
method getDamage*(this: MineLayer, damageType: int32): int32 {.discardable.}
method setDestroyed*(this: MineLayer, destroyed: bool)
import org/allbinary/ag/weapon/media/audio/DropWeaponSound as DropWeaponSoundModule
export DropWeaponSoundModule
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/game/multiplayer/layer/RemoteInfo as RemoteInfoModule
export RemoteInfoModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/media/audio/SecondaryPlayerQueueFactory as SecondaryPlayerQueueFactoryModule
export SecondaryPlayerQueueFactoryModule
import org/allbinary/physics/movement/NoMovementFactory as NoMovementFactoryModule
export NoMovementFactoryModule
import org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources as MineWeaponResourcesModule
export MineWeaponResourcesModule

var MineLayer_NAMEValue: string
var MineLayer_NAMESet = false
proc NAME*(t: typedesc[MineLayer]): string =
    if not MineLayer_NAMESet:
        MineLayer_NAMESet = true
        MineLayer_NAMEValue = "MineLayer"
    MineLayer_NAMEValue

# Java field initializers run after the base initializer
proc initFieldsMineLayer(this: MineLayer) =
    this.viewPositionEventHandler = ViewPositionEventHandler.getInstance()
    discard

proc initMineLayer*(this: MineLayer, viewPosition: ViewPositionBase) =
        initSimpleWeaponLayer(this, MineLayer.NAME, RemoteInfo.REMOTE_INFOStatic, -1, NoMovementFactory.getInstance().getMovmentInstance(), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().RESOURCE).getInstance(0), SimpleWeaponLayer.createDestroyed(), newRectangle(PointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition)
        this.initFieldsMineLayer()

proc newMineLayer*(viewPosition: ViewPositionBase): MineLayer =
    result = MineLayer()
    initMineLayer(result, viewPosition)

method initXYZ*(this: MineLayer, x: int32, y: int32, z: int32) =
        this.setPosition(x +% 5, y +% 5, z)
        this.viewPositionEventHandler.addListener(AllBinaryLayer(JObject(this)))
        SecondaryPlayerQueueFactory.getInstance().add(DropWeaponSound.getInstance())

method damage*(this: MineLayer, damage: int32, damageType: int32) =
        this.totalDamage = this.getInitDamage() +% 1

method getDamage*(this: MineLayer, damageType: int32): int32 {.discardable.} =
        jSuperStatement(procCall SimpleWeaponLayer(this).getDamage(damageType))
        return this.getInitDamage()

method setDestroyed*(this: MineLayer, destroyed: bool) =
        jSuperStatement(procCall SimpleWeaponLayer(this).setDestroyed(destroyed))
        if this.isDestroyed():
            this.viewPositionEventHandler.removeListener(this)

when declared(newMineLayerHook1):
    newMineLayerHook1 = proc (viewPosition: ViewPositionBase): SimpleWeaponLayer = newMineLayer(viewPosition)

