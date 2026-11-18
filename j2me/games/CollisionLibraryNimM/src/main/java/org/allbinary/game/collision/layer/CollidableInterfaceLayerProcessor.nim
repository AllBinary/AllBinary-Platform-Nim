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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule

type
    CollidableInterfaceLayerProcessor* = ref object of LayerProcessor

proc newCollidableInterfaceLayerProcessor*(): CollidableInterfaceLayerProcessor
proc initCollidableInterfaceLayerProcessor*(this: CollidableInterfaceLayerProcessor)
method processAt*(this: CollidableInterfaceLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method isProcessorLayer*(this: CollidableInterfaceLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.}
import org/allbinary/game/collision/CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterfaceModule
export CollidableInterfaceCompositeInterfaceModule
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/game/collision/layer/CollidableInterfaceLayerManager as CollidableInterfaceLayerManagerModule
export CollidableInterfaceLayerManagerModule
import org/allbinary/game/collision/layer/AllBinaryCollisionManager as AllBinaryCollisionManagerModule
export AllBinaryCollisionManagerModule


proc initCollidableInterfaceLayerProcessor*(this: CollidableInterfaceLayerProcessor) =
        initLayerProcessor(this, newCollidableInterfaceLayerManager())

proc newCollidableInterfaceLayerProcessor*(): CollidableInterfaceLayerProcessor =
    result = CollidableInterfaceLayerProcessor()
    initCollidableInterfaceLayerProcessor(result)

method processAt*(this: CollidableInterfaceLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        var collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface = CollidableInterfaceCompositeInterface(JObject(layerInterface))
        if collidableInterfaceCompositeInterface.getCollidableInferface().isCollidable(CollidableCompositeLayer(JObject(collidableInterfaceCompositeInterface))):
            AllBinaryCollisionManager.getInstance().process(this.getLayerManager(), collidableInterfaceCompositeInterface, index)

method isProcessorLayer*(this: CollidableInterfaceLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.} =
        if layerInterface.implmentsCollidableInterface():
            return true
        else:
            return false

when declared(newCollidableInterfaceLayerProcessorHook0):
    newCollidableInterfaceLayerProcessorHook0 = proc (): LayerProcessor = newCollidableInterfaceLayerProcessor()

