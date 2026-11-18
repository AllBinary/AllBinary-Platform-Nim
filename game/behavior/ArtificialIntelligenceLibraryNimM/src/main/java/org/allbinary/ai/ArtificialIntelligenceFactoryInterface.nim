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
import org/allbinary/ai/ArtificialIntelligence as ArtificialIntelligenceModule
export ArtificialIntelligenceModule

type
    ArtificialIntelligenceFactoryInterface* = ref object of JObject


method getInstance*(this: ArtificialIntelligenceFactoryInterface, anyType: JObject): ArtificialIntelligence {.base, discardable.} =
        raise newJException("AbstractMethodError", "getInstance")

