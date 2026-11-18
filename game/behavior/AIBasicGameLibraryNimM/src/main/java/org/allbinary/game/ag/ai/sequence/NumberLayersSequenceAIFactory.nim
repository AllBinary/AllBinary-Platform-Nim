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
# package org.allbinary.game.ag.ai.sequence

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/ai/ArtificialIntelligenceInterface as ArtificialIntelligenceInterfaceModule
export ArtificialIntelligenceInterfaceModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    NumberLayersSequenceAIFactory* = ref object of JObject

proc newNumberLayersSequenceAIFactory*(): NumberLayersSequenceAIFactory
method getInstance*(this: NumberLayersSequenceAIFactory, numberOfEnemiesLeft: int32, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.base, discardable.}
import org/allbinary/game/ag/ai/sequence/NumberLayersSequenceAI as NumberLayersSequenceAIModule
export NumberLayersSequenceAIModule


proc initNumberLayersSequenceAIFactory*(this: NumberLayersSequenceAIFactory) =
    discard

proc newNumberLayersSequenceAIFactory*(): NumberLayersSequenceAIFactory =
    result = NumberLayersSequenceAIFactory()
    initNumberLayersSequenceAIFactory(result)

method getInstance*(this: NumberLayersSequenceAIFactory, numberOfEnemiesLeft: int32, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.base, discardable.} =
        return newNumberLayersSequenceAI(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

