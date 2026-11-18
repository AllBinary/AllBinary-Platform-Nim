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
    SpecialStrafeRightGameInputInterfaceProcessor* = ref object of SpecialGameInputInterfaceProcessor

proc newSpecialStrafeRightGameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialStrafeRightGameInputInterfaceProcessor
proc initSpecialStrafeRightGameInputInterfaceProcessor*(this: SpecialStrafeRightGameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface)
method processEvent*(this: SpecialStrafeRightGameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)


proc initSpecialStrafeRightGameInputInterfaceProcessor*(this: SpecialStrafeRightGameInputInterfaceProcessor, collidableDestroyableDamageableLayer: SpecialGameInputInterface) =
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)

proc newSpecialStrafeRightGameInputInterfaceProcessor*(collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialStrafeRightGameInputInterfaceProcessor =
    result = SpecialStrafeRightGameInputInterfaceProcessor()
    initSpecialStrafeRightGameInputInterfaceProcessor(result, collidableDestroyableDamageableLayer)

method processEvent*(this: SpecialStrafeRightGameInputInterfaceProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        this.specialGameInputInterface.strafeRight()

when declared(newSpecialStrafeRightGameInputInterfaceProcessorHook1):
    newSpecialStrafeRightGameInputInterfaceProcessorHook1 = proc (collidableDestroyableDamageableLayer: SpecialGameInputInterface): SpecialGameInputInterfaceProcessor = newSpecialStrafeRightGameInputInterfaceProcessor(collidableDestroyableDamageableLayer)

