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
# package org.allbinary.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/IdentifierInterface as IdentifierInterfaceModule
export IdentifierInterfaceModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    ArtificialIntelligenceInterface* = ref object of IdentifierInterface


method processAI*(this: ArtificialIntelligenceInterface, layerManager: AllBinaryLayerManager) {.base.} =
        raise newJException("AbstractMethodError", "processAI")

