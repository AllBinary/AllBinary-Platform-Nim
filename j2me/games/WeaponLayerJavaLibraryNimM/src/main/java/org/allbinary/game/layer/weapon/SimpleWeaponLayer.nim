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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/multiplayer/layer/RemoteInfo as RemoteInfoModule
export RemoteInfoModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/physics/movement/Movement as MovementModule
export MovementModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/game/layer/weapon/WeaponLayer as WeaponLayerModule
export WeaponLayerModule

type
    SimpleWeaponLayer* = ref object of WeaponLayer

proc newSimpleWeaponLayer*(name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): SimpleWeaponLayer
proc initSimpleWeaponLayer*(this: SimpleWeaponLayer, name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase)
proc createDestroyed*(t: typedesc[SimpleWeaponLayer]): Animation {.discardable.}
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/animation/NullIndexedAnimationFactory as NullIndexedAnimationFactoryModule
export NullIndexedAnimationFactoryModule
import org/allbinary/game/combat/damage/ExplosionResources as ExplosionResourcesModule
export ExplosionResourcesModule
import org/allbinary/game/layer/weapon/CollidableWeaponBehavior as CollidableWeaponBehaviorModule
export CollidableWeaponBehaviorModule


proc createDestroyed*(t: typedesc[SimpleWeaponLayer]): Animation {.discardable.} =
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getProcedural(ExplosionResources.getInstance().THIRD_EXPLOSION_RESOURCE).getInstanceAnimation(NullIndexedAnimationFactory.getFactoryInstance().getInstance(0))

proc initSimpleWeaponLayer*(this: SimpleWeaponLayer, name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase) =
        initWeaponLayer(this, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        this.setCollidableInferface(newCollidableWeaponBehavior(true))

proc newSimpleWeaponLayer*(name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): SimpleWeaponLayer =
    result = SimpleWeaponLayer()
    initSimpleWeaponLayer(result, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)

when declared(newSimpleWeaponLayerHook8):
    newSimpleWeaponLayerHook8 = proc (name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): WeaponLayer = newSimpleWeaponLayer(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)

