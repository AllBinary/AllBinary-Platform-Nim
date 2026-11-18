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
    SpecialStrafeRightGameInputProcessor* = ref object of SpecialGameInputProcessor

proc newSpecialStrafeRightGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialStrafeRightGameInputProcessor
proc initSpecialStrafeRightGameInputProcessor*(this: SpecialStrafeRightGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)
method processEvent*(this: SpecialStrafeRightGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecialStrafeRightGameInputProcessor*(this: SpecialStrafeRightGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialStrafeRightGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialStrafeRightGameInputProcessor =
    result = SpecialStrafeRightGameInputProcessor()
    initSpecialStrafeRightGameInputProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: SpecialStrafeRightGameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.collidableDestroyableDamageableLayer.strafeRight()

when declared(newSpecialStrafeRightGameInputProcessorHook1):
    newSpecialStrafeRightGameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor = newSpecialStrafeRightGameInputProcessor(collidableDestroyableDamageableLayer)

