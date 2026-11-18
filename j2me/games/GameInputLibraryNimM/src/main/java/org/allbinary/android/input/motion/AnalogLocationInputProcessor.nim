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
import org/allbinary/game/input/analog/AnalogLocationInput as AnalogLocationInputModule
export AnalogLocationInputModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    AnalogLocationInputProcessor* = ref object of JObject

proc newAnalogLocationInputProcessor*(): AnalogLocationInputProcessor
method process*(this: AnalogLocationInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInput: AnalogLocationInput) {.base.}


proc initAnalogLocationInputProcessor*(this: AnalogLocationInputProcessor) =
    discard

proc newAnalogLocationInputProcessor*(): AnalogLocationInputProcessor =
    result = AnalogLocationInputProcessor()
    initAnalogLocationInputProcessor(result)

method process*(this: AnalogLocationInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInput: AnalogLocationInput) {.base.} =
        discard

