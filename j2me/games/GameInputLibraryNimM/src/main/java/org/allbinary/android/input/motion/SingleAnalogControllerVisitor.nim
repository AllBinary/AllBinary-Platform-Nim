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
# package org.allbinary.android.input.motion

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/android/input/motion/AnalogControllerVisitor as AnalogControllerVisitorModule
export AnalogControllerVisitorModule
import org/allbinary/android/input/motion/AnalogLocationInputProcessor as AnalogLocationInputProcessorModule
export AnalogLocationInputProcessorModule

type
    SingleAnalogControllerVisitor* = ref object of AnalogControllerVisitor
        playerInputId*: int32

proc newSingleAnalogControllerVisitor*(playerInputId: int32): SingleAnalogControllerVisitor
proc initSingleAnalogControllerVisitor*(this: SingleAnalogControllerVisitor, playerInputId: int32)
method process*(this: SingleAnalogControllerVisitor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInputProcessor: AnalogLocationInputProcessor)
import org/allbinary/game/input/analog/AnalogLocationInput as AnalogLocationInputModule
export AnalogLocationInputModule
import org/allbinary/game/input/analog/AnalogLocationInputFactory as AnalogLocationInputFactoryModule
export AnalogLocationInputFactoryModule


# Java field initializers run after the base initializer
proc initFieldsSingleAnalogControllerVisitor(this: SingleAnalogControllerVisitor) =
    
    discard

proc initSingleAnalogControllerVisitor*(this: SingleAnalogControllerVisitor, playerInputId: int32) =
        initAnalogControllerVisitor(this)
        this.initFieldsSingleAnalogControllerVisitor()
        this.playerInputId = playerInputId

proc newSingleAnalogControllerVisitor*(playerInputId: int32): SingleAnalogControllerVisitor =
    result = SingleAnalogControllerVisitor()
    initSingleAnalogControllerVisitor(result, playerInputId)

method process*(this: SingleAnalogControllerVisitor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInputProcessor: AnalogLocationInputProcessor) =
        let analogLocationInput: AnalogLocationInput = AnalogLocationInputFactory.getInstance().getInstanceForPlayer(this.playerInputId)
        analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)

when declared(newSingleAnalogControllerVisitorHook1):
    newSingleAnalogControllerVisitorHook1 = proc (playerInputId: int32): AnalogControllerVisitor = newSingleAnalogControllerVisitor(playerInputId)

