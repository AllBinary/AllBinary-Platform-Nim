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
# package org.allbinary.game.ag.layer.hud.basic

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/game/ag/layer/hud/basic/PlayerGameNotificationHud as PlayerGameNotificationHudModule
export PlayerGameNotificationHudModule

type
    SetAndRemoveProcessor* = ref object of Processor
        updateMeasurementProcessor*: PlayerGameNotificationHud

proc newSetAndRemoveProcessor*(updateMeasurementProcessor: PlayerGameNotificationHud): SetAndRemoveProcessor
proc initSetAndRemoveProcessor*(this: SetAndRemoveProcessor, updateMeasurementProcessor: PlayerGameNotificationHud)
method process*(this: SetAndRemoveProcessor)


# Java field initializers run after the base initializer
proc initFieldsSetAndRemoveProcessor(this: SetAndRemoveProcessor) =
    
    discard

proc initSetAndRemoveProcessor*(this: SetAndRemoveProcessor, updateMeasurementProcessor: PlayerGameNotificationHud) =
        initProcessor(this)
        this.initFieldsSetAndRemoveProcessor()
        this.updateMeasurementProcessor = updateMeasurementProcessor

proc newSetAndRemoveProcessor*(updateMeasurementProcessor: PlayerGameNotificationHud): SetAndRemoveProcessor =
    result = SetAndRemoveProcessor()
    initSetAndRemoveProcessor(result, updateMeasurementProcessor)

method process*(this: SetAndRemoveProcessor) =
        this.updateMeasurementProcessor.setAndRemoveProcess()

when declared(newSetAndRemoveProcessorHook1):
    newSetAndRemoveProcessorHook1 = proc (updateMeasurementProcessor: PlayerGameNotificationHud): Processor = newSetAndRemoveProcessor(updateMeasurementProcessor)

