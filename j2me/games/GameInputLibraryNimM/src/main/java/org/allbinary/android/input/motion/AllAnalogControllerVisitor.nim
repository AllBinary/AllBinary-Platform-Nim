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
    AllAnalogControllerVisitor* = ref object of AnalogControllerVisitor

proc newAllAnalogControllerVisitor*(): AllAnalogControllerVisitor
method process*(this: AllAnalogControllerVisitor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInputProcessor: AnalogLocationInputProcessor)
import org/allbinary/game/input/analog/AnalogLocationInput as AnalogLocationInputModule
export AnalogLocationInputModule
import org/allbinary/game/input/analog/AnalogLocationInputFactory as AnalogLocationInputFactoryModule
export AnalogLocationInputFactoryModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule


proc initAllAnalogControllerVisitor*(this: AllAnalogControllerVisitor) =
    initAnalogControllerVisitor(this)

proc newAllAnalogControllerVisitor*(): AllAnalogControllerVisitor =
    result = AllAnalogControllerVisitor()
    initAllAnalogControllerVisitor(result)

method process*(this: AllAnalogControllerVisitor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInputProcessor: AnalogLocationInputProcessor) =
        let analogLocationInputList: BasicArrayList = AnalogLocationInputFactory.getInstance().getList()
        var analogLocationInput: AnalogLocationInput = nil
        block:
            var index: int32 = analogLocationInputList.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                analogLocationInput = AnalogLocationInput(JObject(analogLocationInputList.get(index)))
                analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)

when declared(newAllAnalogControllerVisitorHook0):
    newAllAnalogControllerVisitorHook0 = proc (): AnalogControllerVisitor = newAllAnalogControllerVisitor()

