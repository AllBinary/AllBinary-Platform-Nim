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
    NextUnremoveableProcessor* = ref object of Processor
        updateMeasurementProcessor*: PlayerGameNotificationHud

proc newNextUnremoveableProcessor*(updateMeasurementProcessor: PlayerGameNotificationHud): NextUnremoveableProcessor
proc initNextUnremoveableProcessor*(this: NextUnremoveableProcessor, updateMeasurementProcessor: PlayerGameNotificationHud)
method process*(this: NextUnremoveableProcessor)


# Java field initializers run after the base initializer
proc initFieldsNextUnremoveableProcessor(this: NextUnremoveableProcessor) =
    
    discard

proc initNextUnremoveableProcessor*(this: NextUnremoveableProcessor, updateMeasurementProcessor: PlayerGameNotificationHud) =
        initProcessor(this)
        this.initFieldsNextUnremoveableProcessor()
        this.updateMeasurementProcessor = updateMeasurementProcessor

proc newNextUnremoveableProcessor*(updateMeasurementProcessor: PlayerGameNotificationHud): NextUnremoveableProcessor =
    result = NextUnremoveableProcessor()
    initNextUnremoveableProcessor(result, updateMeasurementProcessor)

method process*(this: NextUnremoveableProcessor) =
        this.updateMeasurementProcessor.setNextUnremoveableProcess()

when declared(newNextUnremoveableProcessorHook1):
    newNextUnremoveableProcessorHook1 = proc (updateMeasurementProcessor: PlayerGameNotificationHud): Processor = newNextUnremoveableProcessor(updateMeasurementProcessor)

