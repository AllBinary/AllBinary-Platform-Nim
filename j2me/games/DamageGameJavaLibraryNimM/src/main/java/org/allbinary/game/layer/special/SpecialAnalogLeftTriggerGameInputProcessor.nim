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
    SpecialAnalogLeftTriggerGameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecialAnalogLeftTriggerGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialAnalogLeftTriggerGameInputProcessor
proc initSpecialAnalogLeftTriggerGameInputProcessor*(this: SpecialAnalogLeftTriggerGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processAnalog*(this: SpecialAnalogLeftTriggerGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, yAnalogValue: int32)


proc initSpecialAnalogLeftTriggerGameInputProcessor*(this: SpecialAnalogLeftTriggerGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialAnalogLeftTriggerGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialAnalogLeftTriggerGameInputProcessor =
    result = SpecialAnalogLeftTriggerGameInputProcessor()
    initSpecialAnalogLeftTriggerGameInputProcessor(result, collidableDestroyableDamageableLayer)

method processAnalog*(this: SpecialAnalogLeftTriggerGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, yAnalogValue: int32) =
        this.collidableDestroyableDamageableLayer.leftTrigger(allbinaryLayerManager, gameKeyEvent, yAnalogValue)

when declared(newSpecialAnalogLeftTriggerGameInputProcessorHook1):
    newSpecialAnalogLeftTriggerGameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecialAnalogLeftTriggerGameInputProcessor(collidableDestroyableDamageableLayer)

