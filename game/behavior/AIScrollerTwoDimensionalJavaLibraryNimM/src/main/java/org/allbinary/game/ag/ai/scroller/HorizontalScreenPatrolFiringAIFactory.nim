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
    HorizontalScreenPatrolFiringAIFactory* = ref object of ArtificialIntelligenceInterfaceFactoryInterface

proc newHorizontalScreenPatrolFiringAIFactory*(): HorizontalScreenPatrolFiringAIFactory
method getInstance*(this: HorizontalScreenPatrolFiringAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.}
import org/allbinary/game/ag/ai/scroller/HorizontalScreenPatrolAI as HorizontalScreenPatrolAIModule
export HorizontalScreenPatrolAIModule


proc initHorizontalScreenPatrolFiringAIFactory*(this: HorizontalScreenPatrolFiringAIFactory) =
    discard

proc newHorizontalScreenPatrolFiringAIFactory*(): HorizontalScreenPatrolFiringAIFactory =
    result = HorizontalScreenPatrolFiringAIFactory()
    initHorizontalScreenPatrolFiringAIFactory(result)

method getInstance*(this: HorizontalScreenPatrolFiringAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.} =
        return newHorizontalScreenPatrolAI(hashtable, ownerLayerInterface, gameInput)

