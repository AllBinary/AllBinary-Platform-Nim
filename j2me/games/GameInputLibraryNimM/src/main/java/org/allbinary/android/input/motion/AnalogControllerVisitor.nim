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
import org/allbinary/android/input/motion/AnalogLocationInputProcessor as AnalogLocationInputProcessorModule
export AnalogLocationInputProcessorModule

type
    AnalogControllerVisitor* = ref object of JObject

proc newAnalogControllerVisitor*(): AnalogControllerVisitor
method process*(this: AnalogControllerVisitor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInputProcessor: AnalogLocationInputProcessor) {.base.}


proc initAnalogControllerVisitor*(this: AnalogControllerVisitor) =
    discard

proc newAnalogControllerVisitor*(): AnalogControllerVisitor =
    result = AnalogControllerVisitor()
    initAnalogControllerVisitor(result)

method process*(this: AnalogControllerVisitor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInputProcessor: AnalogLocationInputProcessor) {.base.} =
        discard

