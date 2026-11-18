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
    SpecialAnalogRightGameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecialAnalogRightGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialAnalogRightGameInputProcessor
proc initSpecialAnalogRightGameInputProcessor*(this: SpecialAnalogRightGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processAnalog*(this: SpecialAnalogRightGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, xAnalogValue: int32)


proc initSpecialAnalogRightGameInputProcessor*(this: SpecialAnalogRightGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialAnalogRightGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialAnalogRightGameInputProcessor =
    result = SpecialAnalogRightGameInputProcessor()
    initSpecialAnalogRightGameInputProcessor(result, collidableDestroyableDamageableLayer)

method processAnalog*(this: SpecialAnalogRightGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, xAnalogValue: int32) =
        this.collidableDestroyableDamageableLayer.rightAnalog(xAnalogValue)

when declared(newSpecialAnalogRightGameInputProcessorHook1):
    newSpecialAnalogRightGameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecialAnalogRightGameInputProcessor(collidableDestroyableDamageableLayer)

