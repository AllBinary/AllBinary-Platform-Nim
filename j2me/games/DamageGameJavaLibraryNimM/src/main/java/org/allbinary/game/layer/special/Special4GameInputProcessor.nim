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
    Special4GameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecial4GameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): Special4GameInputProcessor
proc initSpecial4GameInputProcessor*(this: Special4GameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processEvent*(this: Special4GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecial4GameInputProcessor*(this: Special4GameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecial4GameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): Special4GameInputProcessor =
    result = Special4GameInputProcessor()
    initSpecial4GameInputProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: Special4GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.collidableDestroyableDamageableLayer.special4(allbinaryLayerManager, gameKeyEvent)

when declared(newSpecial4GameInputProcessorHook1):
    newSpecial4GameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecial4GameInputProcessor(collidableDestroyableDamageableLayer)

