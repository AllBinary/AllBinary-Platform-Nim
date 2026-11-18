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
    SpecialAnalogRightTriggerGameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecialAnalogRightTriggerGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialAnalogRightTriggerGameInputProcessor
proc initSpecialAnalogRightTriggerGameInputProcessor*(this: SpecialAnalogRightTriggerGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processAnalog*(this: SpecialAnalogRightTriggerGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, yAnalogValue: int32)


proc initSpecialAnalogRightTriggerGameInputProcessor*(this: SpecialAnalogRightTriggerGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialAnalogRightTriggerGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialAnalogRightTriggerGameInputProcessor =
    result = SpecialAnalogRightTriggerGameInputProcessor()
    initSpecialAnalogRightTriggerGameInputProcessor(result, collidableDestroyableDamageableLayer)

method processAnalog*(this: SpecialAnalogRightTriggerGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, yAnalogValue: int32) =
        this.collidableDestroyableDamageableLayer.rightTrigger(allbinaryLayerManager, gameKeyEvent, yAnalogValue)

when declared(newSpecialAnalogRightTriggerGameInputProcessorHook1):
    newSpecialAnalogRightTriggerGameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecialAnalogRightTriggerGameInputProcessor(collidableDestroyableDamageableLayer)

