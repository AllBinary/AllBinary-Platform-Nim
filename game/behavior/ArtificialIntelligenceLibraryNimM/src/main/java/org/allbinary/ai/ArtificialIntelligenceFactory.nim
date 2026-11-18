#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import org/allbinary/ai/ArtificialIntelligenceFactoryInterface as ArtificialIntelligenceFactoryInterfaceModule
export ArtificialIntelligenceFactoryInterfaceModule
import org/allbinary/ai/ArtificialIntelligence as ArtificialIntelligenceModule
export ArtificialIntelligenceModule

type
    ArtificialIntelligenceFactory* = ref object of ArtificialIntelligenceFactoryInterface

proc newArtificialIntelligenceFactory*(): ArtificialIntelligenceFactory
method getInstance*(this: ArtificialIntelligenceFactory, anyType: JObject): ArtificialIntelligence {.discardable.}


proc initArtificialIntelligenceFactory*(this: ArtificialIntelligenceFactory) =
    discard

proc newArtificialIntelligenceFactory*(): ArtificialIntelligenceFactory =
    result = ArtificialIntelligenceFactory()
    initArtificialIntelligenceFactory(result)

method getInstance*(this: ArtificialIntelligenceFactory, anyType: JObject): ArtificialIntelligence {.discardable.} =
        raise newJException("RuntimeException", "")

