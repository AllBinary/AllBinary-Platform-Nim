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
    Special5GameInputInterfaceProcessor* = ref object of SpecialGameInputInterfaceProcessor

proc newSpecial5GameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): Special5GameInputInterfaceProcessor
proc initSpecial5GameInputInterfaceProcessor*(this: Special5GameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface)
method processEvent*(this: Special5GameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecial5GameInputInterfaceProcessor*(this: Special5GameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface) =
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecial5GameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): Special5GameInputInterfaceProcessor =
    result = Special5GameInputInterfaceProcessor()
    initSpecial5GameInputInterfaceProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: Special5GameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.specialGameInputInterface.special5(allbinaryLayerManager, gameKeyEvent)

when declared(newSpecial5GameInputInterfaceProcessorHook1):
    newSpecial5GameInputInterfaceProcessorHook1 = proc (collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialGameInputInterfaceProcessor = newSpecial5GameInputInterfaceProcessor(collidableDestroyableDamageableLayer)

