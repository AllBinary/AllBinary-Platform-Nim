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
# package org.allbinary.game.ag.ai.scroller

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
    RandomPatrolFlockingFiringAIFactory* = ref object of ArtificialIntelligenceInterfaceFactoryInterface

proc newRandomPatrolFlockingFiringAIFactory*(): RandomPatrolFlockingFiringAIFactory
method getInstance*(this: RandomPatrolFlockingFiringAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.}
import org/allbinary/game/ag/ai/ArrayAI as ArrayAIModule
export ArrayAIModule
import org/allbinary/game/ag/ai/scroller/RandomPatrolAI as RandomPatrolAIModule
export RandomPatrolAIModule
import org/allbinary/game/ag/ai/scroller/TimedFireAI as TimedFireAIModule
export TimedFireAIModule


proc initRandomPatrolFlockingFiringAIFactory*(this: RandomPatrolFlockingFiringAIFactory) =
    discard

proc newRandomPatrolFlockingFiringAIFactory*(): RandomPatrolFlockingFiringAIFactory =
    result = RandomPatrolFlockingFiringAIFactory()
    initRandomPatrolFlockingFiringAIFactory(result)

method getInstance*(this: RandomPatrolFlockingFiringAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.} =
        let artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface] = newJArray[ArtificialIntelligenceInterface](2, default(ArtificialIntelligenceInterface))
        artificialIntelligenceInterface[0] = newRandomPatrolAI(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface[1] = newTimedFireAI(1800, ownerLayerInterface, gameInput)
        return newArrayAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)

