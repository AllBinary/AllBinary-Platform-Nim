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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/ai/ArtificialIntelligenceInterface as ArtificialIntelligenceInterfaceModule
export ArtificialIntelligenceInterfaceModule
import org/allbinary/game/ag/ai/sequence/SequenceAI as SequenceAIModule
export SequenceAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    NumberOnOwnGroupSequenceAI* = ref object of SequenceAI
        numberOnSameTeam*: JArray[int32]

proc newNumberOnOwnGroupSequenceAI*(numberOnSameTeam: JArray[int32], artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): NumberOnOwnGroupSequenceAI
proc initNumberOnOwnGroupSequenceAI*(this: NumberOnOwnGroupSequenceAI, numberOnSameTeam: JArray[int32], artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: NumberOnOwnGroupSequenceAI, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/game/layer/identification/GroupLayerManagerListener as GroupLayerManagerListenerModule
export GroupLayerManagerListenerModule


# Java field initializers run after the base initializer
proc initFieldsNumberOnOwnGroupSequenceAI(this: NumberOnOwnGroupSequenceAI) =
    
    discard

proc initNumberOnOwnGroupSequenceAI*(this: NumberOnOwnGroupSequenceAI, numberOnSameTeam: JArray[int32], artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initSequenceAI(this, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        this.initFieldsNumberOnOwnGroupSequenceAI()
        this.numberOnSameTeam = numberOnSameTeam

proc newNumberOnOwnGroupSequenceAI*(numberOnSameTeam: JArray[int32], artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): NumberOnOwnGroupSequenceAI =
    result = NumberOnOwnGroupSequenceAI()
    initNumberOnOwnGroupSequenceAI(result, numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

method processAI*(this: NumberOnOwnGroupSequenceAI, allBinaryLayerManager: AllBinaryLayerManager) =
        let layerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        var index: int32 = this.getIndex()
        if this.numberOnSameTeam.length > index:
            let size: int32 = GroupLayerManagerListener.getInstance().getGroupSizeFromInterface(layerInterface)
            if this.numberOnSameTeam[index].intValue() > size:
                this.next()
        jSuperStatement(procCall SequenceAI(this).processAI(allBinaryLayerManager))

when declared(newNumberOnOwnGroupSequenceAIHook4):
    newNumberOnOwnGroupSequenceAIHook4 = proc (numberOnSameTeam: JArray[int32], artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): SequenceAI = newNumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

