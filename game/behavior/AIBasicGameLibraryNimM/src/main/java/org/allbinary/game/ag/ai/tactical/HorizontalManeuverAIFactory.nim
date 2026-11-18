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
    HorizontalManeuverAIFactory* = ref object of ArtificialIntelligenceInterfaceFactoryInterface

proc newHorizontalManeuverAIFactory*(): HorizontalManeuverAIFactory
method getInstance*(this: HorizontalManeuverAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.}
import org/allbinary/game/ag/ai/tactical/HorizontalManeuverAI as HorizontalManeuverAIModule
export HorizontalManeuverAIModule


proc initHorizontalManeuverAIFactory*(this: HorizontalManeuverAIFactory) =
    discard

proc newHorizontalManeuverAIFactory*(): HorizontalManeuverAIFactory =
    result = HorizontalManeuverAIFactory()
    initHorizontalManeuverAIFactory(result)

method getInstance*(this: HorizontalManeuverAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.} =
        return newHorizontalManeuverAI(ownerLayerInterface, gameInput)

