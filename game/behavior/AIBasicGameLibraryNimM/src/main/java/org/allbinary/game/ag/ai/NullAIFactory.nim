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
import org/allbinary/game/ag/ai/NullAI as NullAIModule
export NullAIModule

type
    NullAIFactory* = ref object of ArtificialIntelligenceInterfaceFactoryInterface

proc newNullAIFactory*(): NullAIFactory
method getInstance*(this: NullAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.}
proc getInstance*(t: typedesc[NullAIFactory]): ArtificialIntelligenceInterface {.discardable.}

var NullAIFactory_NULL_AIValue: NullAI
var NullAIFactory_NULL_AISet = false
proc NULL_AI*(t: typedesc[NullAIFactory]): NullAI =
    if not NullAIFactory_NULL_AISet:
        NullAIFactory_NULL_AISet = true
        NullAIFactory_NULL_AIValue = newNullAI()
    NullAIFactory_NULL_AIValue
proc `NULL_AI=`*(t: typedesc[NullAIFactory], value: NullAI) =
    NullAIFactory_NULL_AISet = true
    NullAIFactory_NULL_AIValue = value

proc initNullAIFactory*(this: NullAIFactory) =
    discard

proc newNullAIFactory*(): NullAIFactory =
    result = NullAIFactory()
    initNullAIFactory(result)

method getInstance*(this: NullAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.} =
        return NullAIFactory.NULL_AI

proc getInstance*(t: typedesc[NullAIFactory]): ArtificialIntelligenceInterface {.discardable.} =
        return NullAIFactory.NULL_AI

