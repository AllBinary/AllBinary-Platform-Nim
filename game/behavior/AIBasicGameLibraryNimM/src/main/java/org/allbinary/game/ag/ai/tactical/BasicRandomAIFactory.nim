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
# package org.allbinary.game.ag.ai.tactical

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/ai/ArtificialIntelligenceInterface as ArtificialIntelligenceInterfaceModule
export ArtificialIntelligenceInterfaceModule
import org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterfaceModule
export ArtificialIntelligenceInterfaceFactoryInterfaceModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    BasicRandomAIFactory* = ref object of ArtificialIntelligenceInterfaceFactoryInterface

proc newBasicRandomAIFactory*(): BasicRandomAIFactory
method getInstance*(this: BasicRandomAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.}
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/ag/ai/InputProbability as InputProbabilityModule
export InputProbabilityModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule
import org/allbinary/game/ag/ai/tactical/BasicRandomAI as BasicRandomAIModule
export BasicRandomAIModule


proc initBasicRandomAIFactory*(this: BasicRandomAIFactory) =
    discard

proc newBasicRandomAIFactory*(): BasicRandomAIFactory =
    result = BasicRandomAIFactory()
    initBasicRandomAIFactory(result)

method getInstance*(this: BasicRandomAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.} =
        var visitor: Visitor = Visitor(JObject(hashtable.get(JObject(JObject(BasicAI.AI_VISITOR)))))
        if (jIsNil(visitor)):
            raise newJException("Exception", "No Visitor Provided")
        let inputProbability: InputProbability = InputProbability(JObject(hashtable.get(JObject(JObject(InputProbability.INPUT_PROBABILITYStatic)))))
        return newBasicRandomAI(ownerLayerInterface, gameInput, inputProbability, visitor)

