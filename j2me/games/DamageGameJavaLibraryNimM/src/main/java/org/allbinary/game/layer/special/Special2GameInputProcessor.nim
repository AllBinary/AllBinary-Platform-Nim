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
    Special2GameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecial2GameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): Special2GameInputProcessor
proc initSpecial2GameInputProcessor*(this: Special2GameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processEvent*(this: Special2GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecial2GameInputProcessor*(this: Special2GameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecial2GameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): Special2GameInputProcessor =
    result = Special2GameInputProcessor()
    initSpecial2GameInputProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: Special2GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.collidableDestroyableDamageableLayer.special2(allbinaryLayerManager, gameKeyEvent)

when declared(newSpecial2GameInputProcessorHook1):
    newSpecial2GameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecial2GameInputProcessor(collidableDestroyableDamageableLayer)

