# Generated Code Do Not Modify
# package org.allbinary.game.layer.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/combat/weapon/WeaponProperties as WeaponPropertiesModule
export WeaponPropertiesModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/physics/movement/Movement as MovementModule
export MovementModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/game/layer/weapon/SimpleWeaponLayer as SimpleWeaponLayerModule
export SimpleWeaponLayerModule

type
    TempExplosionWeaponLayer* = ref object of SimpleWeaponLayer
        weaponPropertiesOfTempExplosionWeaponLayer*: WeaponProperties
        timeDelayHelper*: TimeDelayHelper

proc newTempExplosionWeaponLayer*(name: string, movement: Movement, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, timeDelay: int32): TempExplosionWeaponLayer
proc initTempExplosionWeaponLayer*(this: TempExplosionWeaponLayer, name: string, movement: Movement, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, timeDelay: int32)
method processTick*(this: TempExplosionWeaponLayer, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/game/multiplayer/layer/RemoteInfo as RemoteInfoModule
export RemoteInfoModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsTempExplosionWeaponLayer(this: TempExplosionWeaponLayer) =
    this.weaponPropertiesOfTempExplosionWeaponLayer = newWeaponProperties(-1'i64, -1'i64, 0, 1000, jToInt16(0))
    this.timeDelayHelper = newTimeDelayHelper(0)
    discard

proc initTempExplosionWeaponLayer*(this: TempExplosionWeaponLayer, name: string, movement: Movement, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, timeDelay: int32) =
        initSimpleWeaponLayer(this, name, RemoteInfo.REMOTE_INFOStatic, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition)
        this.initFieldsTempExplosionWeaponLayer()
        this.timeDelayHelper.delay = timeDelay

proc newTempExplosionWeaponLayer*(name: string, movement: Movement, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, timeDelay: int32): TempExplosionWeaponLayer =
    result = TempExplosionWeaponLayer()
    initTempExplosionWeaponLayer(result, name, movement, animationInterface, rectangle, viewPosition, timeDelay)

method processTick*(this: TempExplosionWeaponLayer, allBinaryLayerManager: AllBinaryLayerManager) =
        if this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime):
            this.getCollidableInferface().collide(this, this)
            this.totalDamage = this.getInitDamage() +% 1
        procCall SimpleWeaponLayer(this).processTick(allBinaryLayerManager)

when declared(newTempExplosionWeaponLayerHook6):
    newTempExplosionWeaponLayerHook6 = proc (name: string, movement: Movement, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, timeDelay: int32): SimpleWeaponLayer = newTempExplosionWeaponLayer(name, movement, animationInterface, rectangle, viewPosition, timeDelay)

