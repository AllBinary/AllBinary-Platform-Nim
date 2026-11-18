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
# package org.allbinary.game.multiplayer.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/identification/Group as GroupModule
export GroupModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/game/multiplayer/layer/MultiPlayerGameLayerInterface as MultiPlayerGameLayerInterfaceModule
export MultiPlayerGameLayerInterfaceModule
import org/allbinary/game/multiplayer/layer/RemoteInfo as RemoteInfoModule
export RemoteInfoModule
import org/allbinary/game/multiplayer/layer/MultiplayerBehavior as MultiplayerBehaviorModule
export MultiplayerBehaviorModule

type
    MultiPlayerGameLayer* = ref object of CollidableDestroyableDamageableLayer

converter jAsMultiPlayerGameLayerInterface*(value: MultiPlayerGameLayer): MultiPlayerGameLayerInterface = cast[MultiPlayerGameLayerInterface](value)
proc newMultiPlayerGameLayer*(remoteInfo: RemoteInfo, groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): MultiPlayerGameLayer
proc initMultiPlayerGameLayer*(this: MultiPlayerGameLayer, remoteInfo: RemoteInfo, groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase)
method getMultiplayerBehavior*(this: MultiPlayerGameLayer): MultiplayerBehavior {.discardable.}
method setPingInfo*(this: MultiPlayerGameLayer, show: bool) {.base.}
method setFiring*(this: MultiPlayerGameLayer, firing: int16) {.base.}
method getFiring*(this: MultiPlayerGameLayer): int16 {.base, discardable.}


proc initMultiPlayerGameLayer*(this: MultiPlayerGameLayer, remoteInfo: RemoteInfo, groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase) =
        initCollidableDestroyableDamageableLayer(this, groupInterface, name, layerInfo, viewPosition)

proc newMultiPlayerGameLayer*(remoteInfo: RemoteInfo, groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): MultiPlayerGameLayer =
    result = MultiPlayerGameLayer()
    initMultiPlayerGameLayer(result, remoteInfo, groupInterface, name, layerInfo, viewPosition)

method getMultiplayerBehavior*(this: MultiPlayerGameLayer): MultiplayerBehavior {.discardable.} =
        return MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR

method setPingInfo*(this: MultiPlayerGameLayer, show: bool) {.base.} =
        discard

method setFiring*(this: MultiPlayerGameLayer, firing: int16) {.base.} =
        discard

method getFiring*(this: MultiPlayerGameLayer): int16 {.base, discardable.} =
        return 0

when declared(newMultiPlayerGameLayerHook5):
    newMultiPlayerGameLayerHook5 = proc (remoteInfo: RemoteInfo, groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): CollidableDestroyableDamageableLayer = newMultiPlayerGameLayer(remoteInfo, groupInterface, name, layerInfo, viewPosition)

