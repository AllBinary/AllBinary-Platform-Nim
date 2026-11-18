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
# package org.allbinary.game.collision

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/collision/CollidableInterface as CollidableInterfaceModule
export CollidableInterfaceModule
import org/allbinary/game/collision/LayerCollisionUtil as LayerCollisionUtilModule
export LayerCollisionUtilModule
import org/allbinary/game/collision/CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterfaceModule
export CollidableInterfaceCompositeInterfaceModule
import org/allbinary/game/collision/CollisionType as CollisionTypeModule
export CollisionTypeModule

type
    CollidableBaseBehavior* = ref object of CollidableInterface
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        layerCollisionUtil*: LayerCollisionUtil
        collidable*: bool

proc newCollidableBaseBehavior*(collidable: bool): CollidableBaseBehavior
proc initCollidableBaseBehavior*(this: CollidableBaseBehavior, collidable: bool)
method update*(this: CollidableBaseBehavior) {.base.}
method getName*(this: CollidableBaseBehavior): string {.discardable.}
method setCollidable*(this: CollidableBaseBehavior, collidable: bool) {.base.}
method isCollidable*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer): bool {.discardable.}
method collide*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, allbinaryCollidableLayer: CollidableCompositeLayer)
method isCollision*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer): bool {.discardable.}
method isCollisionInterface*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.base, discardable.}
method collideInterface*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface) {.base.}
method paint*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, graphics: Graphics) {.base.}
method getCollisionTypeWith*(this: CollidableBaseBehavior, layerInterface: AllBinaryLayer): CollisionType {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/game/collision/CollisionTypeFactory as CollisionTypeFactoryModule
export CollisionTypeFactoryModule


# Java field initializers run after the base initializer
proc initFieldsCollidableBaseBehavior(this: CollidableBaseBehavior) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.layerCollisionUtil = LayerCollisionUtil.getInstance()
    this.collidable = true
    discard

proc initCollidableBaseBehavior*(this: CollidableBaseBehavior, collidable: bool) =
        this.initFieldsCollidableBaseBehavior()
        this.collidable = collidable

proc newCollidableBaseBehavior*(collidable: bool): CollidableBaseBehavior =
    result = CollidableBaseBehavior()
    initCollidableBaseBehavior(result, collidable)

method update*(this: CollidableBaseBehavior) {.base.} =
        discard

method getName*(this: CollidableBaseBehavior): string {.discardable.} =
        return jClassName(this)

method setCollidable*(this: CollidableBaseBehavior, collidable: bool) {.base.} =
        this.collidable = collidable

method isCollidable*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer): bool {.discardable.} =
        return this.collidable

method collide*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, allbinaryCollidableLayer: CollidableCompositeLayer) =
        raise newJException("Exception", newStringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(CommonLabels.getInstance().COLON_SEP).append(jClassName(this)).toString())

method isCollision*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer): bool {.discardable.} =
        return this.layerCollisionUtil.isCollision(ownerLayer, collisionLayer)

method isCollisionInterface*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.base, discardable.} =
        return this.layerCollisionUtil.isCollision(ownerLayer, AllBinaryLayer(JObject(collidableInterfaceCompositeInterface)))

method collideInterface*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface) {.base.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method paint*(this: CollidableBaseBehavior, ownerLayer: CollidableCompositeLayer, graphics: Graphics) {.base.} =
        discard

method getCollisionTypeWith*(this: CollidableBaseBehavior, layerInterface: AllBinaryLayer): CollisionType {.discardable.} =
        return CollisionTypeFactory.getInstance().NONE

