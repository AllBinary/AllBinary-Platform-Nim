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
    NumberLayersSequenceAI* = ref object of SequenceAI
        numberOfLayersLeft*: int32

proc newNumberLayersSequenceAI*(numberOfEnemiesLeft: int32, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): NumberLayersSequenceAI
proc initNumberLayersSequenceAI*(this: NumberLayersSequenceAI, numberOfEnemiesLeft: int32, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: NumberLayersSequenceAI, allBinaryLayerManager: AllBinaryLayerManager)


# Java field initializers run after the base initializer
proc initFieldsNumberLayersSequenceAI(this: NumberLayersSequenceAI) =
    
    discard

proc initNumberLayersSequenceAI*(this: NumberLayersSequenceAI, numberOfEnemiesLeft: int32, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initSequenceAI(this, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        this.initFieldsNumberLayersSequenceAI()
        this.numberOfLayersLeft = numberOfEnemiesLeft

proc newNumberLayersSequenceAI*(numberOfEnemiesLeft: int32, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): NumberLayersSequenceAI =
    result = NumberLayersSequenceAI()
    initNumberLayersSequenceAI(result, numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

method processAI*(this: NumberLayersSequenceAI, allBinaryLayerManager: AllBinaryLayerManager) =
        if this.getIndex() == 0:
            if allBinaryLayerManager.getSize() < this.numberOfLayersLeft:
                this.setIndex(1)
        jSuperStatement(procCall SequenceAI(this).processAI(allBinaryLayerManager))

when declared(newNumberLayersSequenceAIHook4):
    newNumberLayersSequenceAIHook4 = proc (numberOfEnemiesLeft: int32, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): SequenceAI = newNumberLayersSequenceAI(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

