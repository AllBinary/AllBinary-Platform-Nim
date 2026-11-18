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
    SpecialAnalogDownGameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecialAnalogDownGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialAnalogDownGameInputProcessor
proc initSpecialAnalogDownGameInputProcessor*(this: SpecialAnalogDownGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processAnalog*(this: SpecialAnalogDownGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, yAnalogValue: int32)


proc initSpecialAnalogDownGameInputProcessor*(this: SpecialAnalogDownGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialAnalogDownGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialAnalogDownGameInputProcessor =
    result = SpecialAnalogDownGameInputProcessor()
    initSpecialAnalogDownGameInputProcessor(result, collidableDestroyableDamageableLayer)

method processAnalog*(this: SpecialAnalogDownGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, yAnalogValue: int32) =
        this.collidableDestroyableDamageableLayer.downAnalog(yAnalogValue)

when declared(newSpecialAnalogDownGameInputProcessorHook1):
    newSpecialAnalogDownGameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecialAnalogDownGameInputProcessor(collidableDestroyableDamageableLayer)

