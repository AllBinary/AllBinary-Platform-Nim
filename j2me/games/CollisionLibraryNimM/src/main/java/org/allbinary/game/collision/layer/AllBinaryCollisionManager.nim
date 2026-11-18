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
# package org.allbinary.game.collision.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/collision/CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterfaceModule
export CollidableInterfaceCompositeInterfaceModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule

type
    AllBinaryCollisionManager* = ref object of JObject

proc newAllBinaryCollisionManager*(): AllBinaryCollisionManager
proc initAllBinaryCollisionManager*(this: AllBinaryCollisionManager)
proc getInstance*(t: typedesc[AllBinaryCollisionManager]): AllBinaryCollisionManager {.discardable.}
method process*(this: AllBinaryCollisionManager, layerManager: LayerManager, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface, startIndex: int32) {.base.}
method collide*(this: AllBinaryCollisionManager, layerManager: LayerManager, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2: CollidableInterfaceCompositeInterface) {.base.}
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule

var AllBinaryCollisionManager_allBinaryCollisionManagerValue: AllBinaryCollisionManager
var AllBinaryCollisionManager_allBinaryCollisionManagerSet = false
proc allBinaryCollisionManager*(t: typedesc[AllBinaryCollisionManager]): AllBinaryCollisionManager =
    if not AllBinaryCollisionManager_allBinaryCollisionManagerSet:
        AllBinaryCollisionManager_allBinaryCollisionManagerSet = true
        AllBinaryCollisionManager_allBinaryCollisionManagerValue = newAllBinaryCollisionManager()
    AllBinaryCollisionManager_allBinaryCollisionManagerValue
proc `allBinaryCollisionManager=`*(t: typedesc[AllBinaryCollisionManager], value: AllBinaryCollisionManager) =
    AllBinaryCollisionManager_allBinaryCollisionManagerSet = true
    AllBinaryCollisionManager_allBinaryCollisionManagerValue = value

proc initAllBinaryCollisionManager*(this: AllBinaryCollisionManager) =
        discard
        discard

proc newAllBinaryCollisionManager*(): AllBinaryCollisionManager =
    result = AllBinaryCollisionManager()
    initAllBinaryCollisionManager(result)

proc getInstance*(t: typedesc[AllBinaryCollisionManager]): AllBinaryCollisionManager {.discardable.} =
        return AllBinaryCollisionManager.allBinaryCollisionManager

method process*(this: AllBinaryCollisionManager, layerManager: LayerManager, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface, startIndex: int32) {.base.} =
        var size: int32 = layerManager.getSize()
        block:
            var index: int32 = startIndex +% 1
            while index < size:
                defer: index = index +% 1
                var collidableInterfaceCompositeInterface2: CollidableInterfaceCompositeInterface = CollidableInterfaceCompositeInterface(JObject(layerManager.getLayerAt(index)))
                this.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)

method collide*(this: AllBinaryCollisionManager, layerManager: LayerManager, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2: CollidableInterfaceCompositeInterface) {.base.} =
        var collidableBase2: CollidableBaseBehavior = collidableInterfaceCompositeInterface2.getCollidableInferface()
        var collidableBase: CollidableBaseBehavior = collidableInterfaceCompositeInterface.getCollidableInferface()
        if collidableBase2.isCollidable(CollidableCompositeLayer(JObject(collidableInterfaceCompositeInterface))):
            if collidableBase.isCollisionInterface(CollidableCompositeLayer(JObject(collidableInterfaceCompositeInterface)), collidableInterfaceCompositeInterface2):
                collidableBase.collideInterface(CollidableCompositeLayer(JObject(collidableInterfaceCompositeInterface)), collidableInterfaceCompositeInterface2)
                collidableBase2.collideInterface(CollidableCompositeLayer(JObject(collidableInterfaceCompositeInterface)), collidableInterfaceCompositeInterface)

