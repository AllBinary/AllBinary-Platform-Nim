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
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/ag/ai/sequence/SequenceAI as SequenceAIModule
export SequenceAIModule

type
    ComboSequenceAI* = ref object of SequenceAI

proc newComboSequenceAI*(artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ComboSequenceAI
proc initComboSequenceAI*(this: ComboSequenceAI, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: ComboSequenceAI, allBinaryLayerManager: AllBinaryLayerManager)


proc initComboSequenceAI*(this: ComboSequenceAI, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initSequenceAI(this, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

proc newComboSequenceAI*(artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ComboSequenceAI =
    result = ComboSequenceAI()
    initComboSequenceAI(result, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

method processAI*(this: ComboSequenceAI, allBinaryLayerManager: AllBinaryLayerManager) =
        let artificialIntelligenceInterfaceArray: JArray[ArtificialIntelligenceInterface] = this.getArtificialIntelligenceInterface()
        let size: int32 = artificialIntelligenceInterfaceArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.setIndex(index)
                jSuperStatement(procCall SequenceAI(this).processAI(allBinaryLayerManager))

when declared(newComboSequenceAIHook3):
    newComboSequenceAIHook3 = proc (artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): SequenceAI = newComboSequenceAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)

