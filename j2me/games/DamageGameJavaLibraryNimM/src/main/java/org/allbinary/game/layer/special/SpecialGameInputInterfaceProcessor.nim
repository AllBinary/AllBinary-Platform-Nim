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
import org/allbinary/game/layer/special/SpecialGameInputInterface as SpecialGameInputInterfaceModule
export SpecialGameInputInterfaceModule

type
    SpecialGameInputInterfaceProcessor* = ref object of GameInputProcessor
        specialGameInputInterface*: SpecialGameInputInterface

proc newSpecialGameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialGameInputInterfaceProcessor
proc initSpecialGameInputInterfaceProcessor*(this: SpecialGameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface)


# Java field initializers run after the base initializer
proc initFieldsSpecialGameInputInterfaceProcessor(this: SpecialGameInputInterfaceProcessor) =
    
    discard

proc initSpecialGameInputInterfaceProcessor*(this: SpecialGameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface) =
        initGameInputProcessor(this)
        this.initFieldsSpecialGameInputInterfaceProcessor()
        this.specialGameInputInterface = collidableDestroyableDamageableLayer

proc newSpecialGameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialGameInputInterfaceProcessor =
    result = SpecialGameInputInterfaceProcessor()
    initSpecialGameInputInterfaceProcessor(result, collidableDestroyableDamageableLayer)

when declared(newSpecialGameInputInterfaceProcessorHook1):
    newSpecialGameInputInterfaceProcessorHook1 = proc (collidableDestroyableDamageableLayer: SpecialGameInputInterface): GameInputProcessor = newSpecialGameInputInterfaceProcessor(collidableDestroyableDamageableLayer)

