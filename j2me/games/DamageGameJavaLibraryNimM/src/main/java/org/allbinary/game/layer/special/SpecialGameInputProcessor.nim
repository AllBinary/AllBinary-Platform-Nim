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
import org/allbinary/game/input/GameInputProcessor as GameInputProcessorModule
export GameInputProcessorModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule

type
    SpecialGameInputProcessor* = ref object of GameInputProcessor
        collidableDestroyableDamageableLayer*: CollidableDestroyableDamageableLayer

proc newSpecialGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor
proc initSpecialGameInputProcessor*(this: SpecialGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer)


# Java field initializers run after the base initializer
proc initFieldsSpecialGameInputProcessor(this: SpecialGameInputProcessor) =
    
    discard

proc initSpecialGameInputProcessor*(this: SpecialGameInputProcessor, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) =
        initGameInputProcessor(this)
        this.initFieldsSpecialGameInputProcessor()
        this.collidableDestroyableDamageableLayer = collidableDestroyableDamageableLayer

proc newSpecialGameInputProcessor*(collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): SpecialGameInputProcessor =
    result = SpecialGameInputProcessor()
    initSpecialGameInputProcessor(result, collidableDestroyableDamageableLayer)

when declared(newSpecialGameInputProcessorHook1):
    newSpecialGameInputProcessorHook1 = proc (collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer): GameInputProcessor = newSpecialGameInputProcessor(collidableDestroyableDamageableLayer)

