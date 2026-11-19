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
# package org.allbinary.game.ag.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/pickup/PickupLayer as PickupLayerModule
export PickupLayerModule
import org/allbinary/game/multiplayer/layer/RemoteInfo as RemoteInfoModule
export RemoteInfoModule
import org/allbinary/game/tick/TickableInterface as TickableInterfaceModule
export TickableInterfaceModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    FallingPickupLayer* = ref object of PickupLayer

converter jAsTickableInterface*(value: FallingPickupLayer): TickableInterface = cast[TickableInterface](value)
converter jAsNamedInterface*(value: FallingPickupLayer): NamedInterface = cast[NamedInterface](value)
proc newFallingPickupLayer*(remoteInfo: RemoteInfo): FallingPickupLayer
proc initFallingPickupLayer*(this: FallingPickupLayer, remoteInfo: RemoteInfo)
method processTick*(this: FallingPickupLayer, allBinaryLayerManager: AllBinaryLayerManager)
method implmentsTickableInterface*(this: FallingPickupLayer): bool {.discardable.}
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule

var FallingPickupLayer_NAMEValue: string
var FallingPickupLayer_NAMESet = false
proc NAME*(t: typedesc[FallingPickupLayer]): string =
    if not FallingPickupLayer_NAMESet:
        FallingPickupLayer_NAMESet = true
        FallingPickupLayer_NAMEValue = "FallingPickupLayer"
    FallingPickupLayer_NAMEValue

proc initFallingPickupLayer*(this: FallingPickupLayer, remoteInfo: RemoteInfo) =
        initPickupLayer(this, FallingPickupLayer.NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory.getFactoryInstance().getInstance(0), newRectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())

proc newFallingPickupLayer*(remoteInfo: RemoteInfo): FallingPickupLayer =
    result = FallingPickupLayer()
    initFallingPickupLayer(result, remoteInfo)

method processTick*(this: FallingPickupLayer, allBinaryLayerManager: AllBinaryLayerManager) =
        this.setPosition(this.x, this.y +% 1, this.z)

method implmentsTickableInterface*(this: FallingPickupLayer): bool {.discardable.} =
        return true

when declared(newFallingPickupLayerHook1):
    newFallingPickupLayerHook1 = proc (remoteInfo: RemoteInfo): PickupLayer = newFallingPickupLayer(remoteInfo)

