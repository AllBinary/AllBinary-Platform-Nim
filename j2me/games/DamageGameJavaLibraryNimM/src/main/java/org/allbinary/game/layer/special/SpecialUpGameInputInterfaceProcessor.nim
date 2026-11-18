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
    SpecialUpGameInputInterfaceProcessor* = ref object of SpecialGameInputInterfaceProcessor

proc newSpecialUpGameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialUpGameInputInterfaceProcessor
proc initSpecialUpGameInputInterfaceProcessor*(this: SpecialUpGameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface)
method processEvent*(this: SpecialUpGameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecialUpGameInputInterfaceProcessor*(this: SpecialUpGameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface) =
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialUpGameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialUpGameInputInterfaceProcessor =
    result = SpecialUpGameInputInterfaceProcessor()
    initSpecialUpGameInputInterfaceProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: SpecialUpGameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.specialGameInputInterface.up()

when declared(newSpecialUpGameInputInterfaceProcessorHook1):
    newSpecialUpGameInputInterfaceProcessorHook1 = proc (collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialGameInputInterfaceProcessor = newSpecialUpGameInputInterfaceProcessor(collidableDestroyableDamageableLayer)

