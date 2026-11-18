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
    Special3GameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecial3GameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): Special3GameInputProcessor
proc initSpecial3GameInputProcessor*(this: Special3GameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processEvent*(this: Special3GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecial3GameInputProcessor*(this: Special3GameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecial3GameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): Special3GameInputProcessor =
    result = Special3GameInputProcessor()
    initSpecial3GameInputProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: Special3GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.collidableDestroyableDamageableLayer.special3(allbinaryLayerManager, gameKeyEvent)

when declared(newSpecial3GameInputProcessorHook1):
    newSpecial3GameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecial3GameInputProcessor(collidableDestroyableDamageableLayer)

