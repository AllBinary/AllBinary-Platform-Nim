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
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/game/input/PlayerGameInputCompositeInterface as PlayerGameInputCompositeInterfaceModule
export PlayerGameInputCompositeInterfaceModule

type
    FormPlayerGameInputProcessor* = ref object of Processor
        playerGameInputCompositeInterface*: PlayerGameInputCompositeInterface

proc newFormPlayerGameInputProcessor*(playerGameInputCompositeInterface: PlayerGameInputCompositeInterface): FormPlayerGameInputProcessor
proc initFormPlayerGameInputProcessor*(this: FormPlayerGameInputProcessor, playerGameInputCompositeInterface: PlayerGameInputCompositeInterface)
method process*(this: FormPlayerGameInputProcessor)


# Java field initializers run after the base initializer
proc initFieldsFormPlayerGameInputProcessor(this: FormPlayerGameInputProcessor) =
    
    discard

proc initFormPlayerGameInputProcessor*(this: FormPlayerGameInputProcessor, playerGameInputCompositeInterface: PlayerGameInputCompositeInterface) =
        initProcessor(this)
        this.initFieldsFormPlayerGameInputProcessor()
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface

proc newFormPlayerGameInputProcessor*(playerGameInputCompositeInterface: PlayerGameInputCompositeInterface): FormPlayerGameInputProcessor =
    result = FormPlayerGameInputProcessor()
    initFormPlayerGameInputProcessor(result, playerGameInputCompositeInterface)

method process*(this: FormPlayerGameInputProcessor) =
        this.playerGameInputCompositeInterface.getPlayerGameInput().update()

when declared(newFormPlayerGameInputProcessorHook1):
    newFormPlayerGameInputProcessorHook1 = proc (playerGameInputCompositeInterface: PlayerGameInputCompositeInterface): Processor = newFormPlayerGameInputProcessor(playerGameInputCompositeInterface)

