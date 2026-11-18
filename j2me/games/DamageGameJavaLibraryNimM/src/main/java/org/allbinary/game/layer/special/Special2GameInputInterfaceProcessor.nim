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
    Special2GameInputInterfaceProcessor* = ref object of SpecialGameInputInterfaceProcessor

proc newSpecial2GameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): Special2GameInputInterfaceProcessor
proc initSpecial2GameInputInterfaceProcessor*(this: Special2GameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface)
method processEvent*(this: Special2GameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecial2GameInputInterfaceProcessor*(this: Special2GameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface) =
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecial2GameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): Special2GameInputInterfaceProcessor =
    result = Special2GameInputInterfaceProcessor()
    initSpecial2GameInputInterfaceProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: Special2GameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.specialGameInputInterface.special2(allbinaryLayerManager, gameKeyEvent)

when declared(newSpecial2GameInputInterfaceProcessorHook1):
    newSpecial2GameInputInterfaceProcessorHook1 = proc (collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialGameInputInterfaceProcessor = newSpecial2GameInputInterfaceProcessor(collidableDestroyableDamageableLayer)

