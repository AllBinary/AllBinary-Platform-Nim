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
# package org.allbinary.game.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer as MultiPlayerGameLayerModule
export MultiPlayerGameLayerModule
import org/allbinary/game/multiplayer/layer/RemoteInfo as RemoteInfoModule
export RemoteInfoModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterface as PickedUpLayerInterfaceModule
export PickedUpLayerInterfaceModule
import org/allbinary/game/layer/pickup/PickupableInterface as PickupableInterfaceModule
export PickupableInterfaceModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule

type
    PickupLayer* = ref object of MultiPlayerGameLayer
        pickedUpLayerInterfaceFactoryInterface*: PickedUpLayerInterfaceFactoryInterface
        destroyed*: bool
        animationInterface*: Animation

converter jAsPickedUpLayerInterface*(value: PickupLayer): PickedUpLayerInterface = cast[PickedUpLayerInterface](value)
converter jAsPickupableInterface*(value: PickupLayer): PickupableInterface = cast[PickupableInterface](value)
proc newPickupLayer*(name: string, remoteInfo: RemoteInfo, total: int32, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): PickupLayer
proc initPickupLayer*(this: PickupLayer, name: string, remoteInfo: RemoteInfo, total: int32, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase)
method init*(this: PickupLayer, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, animationInterface: Animation) {.base.}
method initXYZ*(this: PickupLayer, x: int32, y: int32, z: int32) {.base.}
method paint*(this: PickupLayer, graphics: Graphics)
method paintThreed*(this: PickupLayer, graphics: Graphics)
method getPickedUpLayerInterfaceFactoryInterface*(this: PickupLayer): PickedUpLayerInterfaceFactoryInterface {.discardable.}
method setPickedUp*(this: PickupLayer)
method isDestroyed*(this: PickupLayer): bool {.discardable.}
method setDestroyed*(this: PickupLayer, destroyed: bool) {.base.}
method damage*(this: PickupLayer, damage: int32, damageType: int32)
method getDamage*(this: PickupLayer, damageType: int32): int32 {.discardable.}
method set*(this: PickupLayer, gl: GL)
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory as CollidableAlwaysPickupNeverCollideBehaviorFactoryModule
export CollidableAlwaysPickupNeverCollideBehaviorFactoryModule
import org/allbinary/game/combat/destroy/DestroyedLayerProcessor as DestroyedLayerProcessorModule
export DestroyedLayerProcessorModule
import org/allbinary/game/identification/BasicGroupFactory as BasicGroupFactoryModule
export BasicGroupFactoryModule
import org/allbinary/image/opengles/OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterfaceModule
export OpenGLSurfaceChangedInterfaceModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule


# Java field initializers run after the base initializer
proc initFieldsPickupLayer(this: PickupLayer) =
    this.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    this.destroyed = false
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    discard

proc initPickupLayer*(this: PickupLayer, name: string, remoteInfo: RemoteInfo, total: int32, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase) =
        initMultiPlayerGameLayer(this, remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        this.initFieldsPickupLayer()
        this.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior())
        this.setLayerWidth(10)
        this.setLayerHeight(10)
        this.init(pickedUpLayerInterfaceFactoryInterface, animationInterface)

proc newPickupLayer*(name: string, remoteInfo: RemoteInfo, total: int32, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): PickupLayer =
    result = PickupLayer()
    initPickupLayer(result, name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition)

method init*(this: PickupLayer, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, animationInterface: Animation) {.base.} =
        this.pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface
        this.animationInterface = animationInterface
        this.setDestroyed(false)

method initXYZ*(this: PickupLayer, x: int32, y: int32, z: int32) {.base.} =
        this.setPosition(x, y, z)

method paint*(this: PickupLayer, graphics: Graphics) =
        let viewPosition: ViewPositionBase = this.getViewPosition()
        let viewX: int32 = viewPosition.getX()
        let viewY: int32 = viewPosition.getY()
        this.animationInterface.paintXY(graphics, viewX, viewY)

method paintThreed*(this: PickupLayer, graphics: Graphics) =
        let viewPosition: ViewPositionBase = this.getViewPosition()
        let viewX: int32 = viewPosition.getX()
        let viewY: int32 = viewPosition.getY()
        this.animationInterface.paintThreedXYZ(graphics, viewX, viewY, 3)

method getPickedUpLayerInterfaceFactoryInterface*(this: PickupLayer): PickedUpLayerInterfaceFactoryInterface {.discardable.} =
        return this.pickedUpLayerInterfaceFactoryInterface

method setPickedUp*(this: PickupLayer) =
        this.setDestroyed(true)

method isDestroyed*(this: PickupLayer): bool {.discardable.} =
        return this.destroyed

method setDestroyed*(this: PickupLayer, destroyed: bool) {.base.} =
        this.destroyed = destroyed
        if this.isDestroyed():
            DestroyedLayerProcessor.getInstance().add(this)

method damage*(this: PickupLayer, damage: int32, damageType: int32) =
        discard

method getDamage*(this: PickupLayer, damageType: int32): int32 {.discardable.} =
        return 0

method set*(this: PickupLayer, gl: GL) =
        var openGLSurfaceChangedInterface: OpenGLSurfaceChangedInterface = OpenGLSurfaceChangedInterface(JObject(this.animationInterface))
        openGLSurfaceChangedInterface.set(gl)

when declared(newPickupLayerHook7):
    newPickupLayerHook7 = proc (name: string, remoteInfo: RemoteInfo, total: int32, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, animationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): MultiPlayerGameLayer = newPickupLayer(name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition)

