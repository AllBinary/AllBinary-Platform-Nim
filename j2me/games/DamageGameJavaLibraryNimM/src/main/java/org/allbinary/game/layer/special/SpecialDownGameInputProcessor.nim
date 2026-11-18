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
# package org.allbinary.game.layer.special

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/layer/special/SpecialGameInputProcessor as SpecialGameInputProcessorModule
export SpecialGameInputProcessorModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule

type
    SpecialDownGameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecialDownGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialDownGameInputProcessor
proc initSpecialDownGameInputProcessor*(this: SpecialDownGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processEvent*(this: SpecialDownGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecialDownGameInputProcessor*(this: SpecialDownGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialDownGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialDownGameInputProcessor =
    result = SpecialDownGameInputProcessor()
    initSpecialDownGameInputProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: SpecialDownGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.collidableDestroyableDamageableLayer.down()

when declared(newSpecialDownGameInputProcessorHook1):
    newSpecialDownGameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecialDownGameInputProcessor(collidableDestroyableDamageableLayer)

