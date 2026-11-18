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
    DamageWeaponLayer* = ref object of WeaponLayer

proc newDamageWeaponLayer*(name: string, remoteInfo: RemoteInfo, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, username: string, actorSessionId: int32, id: int32, multiPlayerType: int32): DamageWeaponLayer
proc initDamageWeaponLayer*(this: DamageWeaponLayer, name: string, remoteInfo: RemoteInfo, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, username: string, actorSessionId: int32, id: int32, multiPlayerType: int32)
import org/allbinary/game/layer/weapon/CollidableDamageWeaponBehavior as CollidableDamageWeaponBehaviorModule
export CollidableDamageWeaponBehaviorModule


proc initDamageWeaponLayer*(this: DamageWeaponLayer, name: string, remoteInfo: RemoteInfo, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, username: string, actorSessionId: int32, id: int32, multiPlayerType: int32) =
        initWeaponLayer(this, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        this.setCollidableInferface(newCollidableDamageWeaponBehavior(true))

proc newDamageWeaponLayer*(name: string, remoteInfo: RemoteInfo, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, username: string, actorSessionId: int32, id: int32, multiPlayerType: int32): DamageWeaponLayer =
    result = DamageWeaponLayer()
    initDamageWeaponLayer(result, name, remoteInfo, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition, username, actorSessionId, id, multiPlayerType)

when declared(newDamageWeaponLayerHook11):
    newDamageWeaponLayerHook11 = proc (name: string, remoteInfo: RemoteInfo, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase, username: string, actorSessionId: int32, id: int32, multiPlayerType: int32): WeaponLayer = newDamageWeaponLayer(name, remoteInfo, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition, username, actorSessionId, id, multiPlayerType)

