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
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule

type
    ArrayAI* = ref object of BasicAI
        artificialIntelligenceInterfaceArray*: JArray[ArtificialIntelligenceInterface]

proc newArrayAI*(artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArrayAI
proc initArrayAI*(this: ArrayAI, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: ArrayAI, allBinaryLayerManager: AllBinaryLayerManager)
method getArtificialIntelligenceInterface*(this: ArrayAI): JArray[ArtificialIntelligenceInterface] {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsArrayAI(this: ArrayAI) =
    
    discard

proc initArrayAI*(this: ArrayAI, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsArrayAI()
        this.artificialIntelligenceInterfaceArray = artificialIntelligenceInterface

proc newArrayAI*(artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArrayAI =
    result = ArrayAI()
    initArrayAI(result, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

method processAI*(this: ArrayAI, allBinaryLayerManager: AllBinaryLayerManager) =
        var size: int32 = this.artificialIntelligenceInterfaceArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.artificialIntelligenceInterfaceArray[index].processAI(allBinaryLayerManager)

method getArtificialIntelligenceInterface*(this: ArrayAI): JArray[ArtificialIntelligenceInterface] {.base, discardable.} =
        return this.artificialIntelligenceInterfaceArray

when declared(newArrayAIHook3):
    newArrayAIHook3 = proc (artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newArrayAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)

