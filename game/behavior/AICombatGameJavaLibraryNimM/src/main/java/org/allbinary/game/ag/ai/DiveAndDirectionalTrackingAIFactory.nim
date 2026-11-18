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
# package org.allbinary.game.ag.ai

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
    DiveAndDirectionalTrackingAIFactory* = ref object of ArtificialIntelligenceInterfaceFactoryInterface

proc newDiveAndDirectionalTrackingAIFactory*(): DiveAndDirectionalTrackingAIFactory
method getInstance*(this: DiveAndDirectionalTrackingAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.}
import org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory as BasicRandomAIFactoryModule
export BasicRandomAIFactoryModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule
import org/allbinary/game/ag/ai/ThrustAIVisitorFactory as ThrustAIVisitorFactoryModule
export ThrustAIVisitorFactoryModule
import org/allbinary/game/ag/ai/BasicProbabilityAIDataFactory as BasicProbabilityAIDataFactoryModule
export BasicProbabilityAIDataFactoryModule
import org/allbinary/game/ag/ai/LastKeyAIVisitorFactory as LastKeyAIVisitorFactoryModule
export LastKeyAIVisitorFactoryModule
import org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI as DiveAndDirectionalTrackingAIModule
export DiveAndDirectionalTrackingAIModule


proc initDiveAndDirectionalTrackingAIFactory*(this: DiveAndDirectionalTrackingAIFactory) =
    discard

proc newDiveAndDirectionalTrackingAIFactory*(): DiveAndDirectionalTrackingAIFactory =
    result = DiveAndDirectionalTrackingAIFactory()
    initDiveAndDirectionalTrackingAIFactory(result)

method getInstance*(this: DiveAndDirectionalTrackingAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.} =
        var visitorCanBeNull: JObject = hashtable.get(JObject(JObject(BasicAI.AI_VISITOR)))
        if (jIsNil(visitorCanBeNull)):
            visitorCanBeNull = ThrustAIVisitorFactory.getInstance()
        let hashtable2: ABHashtable = newBasicProbabilityAIDataFactory().getInstance()
        hashtable2.put(BasicAI.AI_VISITOR, LastKeyAIVisitorFactory.getInstance())
        let artificialIntelligenceInterface: ArtificialIntelligenceInterface = newBasicRandomAIFactory().getInstance(hashtable2, ownerLayerInterface, gameInput)
        return newDiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, Visitor(JObject(visitorCanBeNull)))

