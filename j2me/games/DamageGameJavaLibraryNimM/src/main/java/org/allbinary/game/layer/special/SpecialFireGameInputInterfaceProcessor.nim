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
import org/allbinary/game/layer/special/SpecialGameInputInterfaceProcessor as SpecialGameInputInterfaceProcessorModule
export SpecialGameInputInterfaceProcessorModule
import org/allbinary/game/layer/special/SpecialGameInputInterface as SpecialGameInputInterfaceModule
export SpecialGameInputInterfaceModule

type
    SpecialFireGameInputInterfaceProcessor* = ref object of SpecialGameInputInterfaceProcessor

proc newSpecialFireGameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialFireGameInputInterfaceProcessor
proc initSpecialFireGameInputInterfaceProcessor*(this: SpecialFireGameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface)
method processEvent*(this: SpecialFireGameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecialFireGameInputInterfaceProcessor*(this: SpecialFireGameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface) =
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialFireGameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialFireGameInputInterfaceProcessor =
    result = SpecialFireGameInputInterfaceProcessor()
    initSpecialFireGameInputInterfaceProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: SpecialFireGameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.specialGameInputInterface.fire(allbinaryLayerManager, gameKeyEvent)

when declared(newSpecialFireGameInputInterfaceProcessorHook1):
    newSpecialFireGameInputInterfaceProcessorHook1 = proc (collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialGameInputInterfaceProcessor = newSpecialFireGameInputInterfaceProcessor(collidableDestroyableDamageableLayer)

