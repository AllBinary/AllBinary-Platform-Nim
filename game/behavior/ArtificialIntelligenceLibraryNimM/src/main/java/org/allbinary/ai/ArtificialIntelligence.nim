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
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/ai/ArtificialIntelligenceInterface as ArtificialIntelligenceInterfaceModule
export ArtificialIntelligenceInterfaceModule

type
    ArtificialIntelligence* = ref object of ArtificialIntelligenceInterface

proc newArtificialIntelligence*(): ArtificialIntelligence
proc initArtificialIntelligence*(this: ArtificialIntelligence)
proc getInstance*(t: typedesc[ArtificialIntelligence]): ArtificialIntelligence {.discardable.}
method processAI*(this: ArtificialIntelligence, layerManager: AllBinaryLayerManager)
method getId*(this: ArtificialIntelligence): int32 {.discardable.}

var ArtificialIntelligence_AI_IDValue: int32
var ArtificialIntelligence_AI_IDSet = false
proc AI_ID*(t: typedesc[ArtificialIntelligence]): int32 =
    if not ArtificialIntelligence_AI_IDSet:
        ArtificialIntelligence_AI_IDSet = true
        ArtificialIntelligence_AI_IDValue = 2
    ArtificialIntelligence_AI_IDValue
var ArtificialIntelligence_instanceValue: ArtificialIntelligence
var ArtificialIntelligence_instanceSet = false
proc instance*(t: typedesc[ArtificialIntelligence]): ArtificialIntelligence =
    if not ArtificialIntelligence_instanceSet:
        ArtificialIntelligence_instanceSet = true
        ArtificialIntelligence_instanceValue = newArtificialIntelligence()
    ArtificialIntelligence_instanceValue

proc getInstance*(t: typedesc[ArtificialIntelligence]): ArtificialIntelligence {.discardable.} =
        return ArtificialIntelligence.instance

proc initArtificialIntelligence*(this: ArtificialIntelligence) =
        discard
        discard

proc newArtificialIntelligence*(): ArtificialIntelligence =
    result = ArtificialIntelligence()
    initArtificialIntelligence(result)

method processAI*(this: ArtificialIntelligence, layerManager: AllBinaryLayerManager) =
        discard

method getId*(this: ArtificialIntelligence): int32 {.discardable.} =
        return 1

