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
import org/allbinary/game/ag/ai/ArrayAI as ArrayAIModule
export ArrayAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    SequenceAI* = ref object of ArrayAI
        index*: int32

proc newSequenceAI*(artificialIntelligenceInterfaceArray: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): SequenceAI
proc initSequenceAI*(this: SequenceAI, artificialIntelligenceInterfaceArray: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: SequenceAI, allBinaryLayerManager: AllBinaryLayerManager)
method next*(this: SequenceAI) {.base.}
method getIndex*(this: SequenceAI): int32 {.base, discardable.}
method setIndex*(this: SequenceAI, index: int32) {.base.}
method getSelectedArtificialIntelligenceInterface*(this: SequenceAI): ArtificialIntelligenceInterface {.base, discardable.}
method getName*(this: SequenceAI): string {.discardable.}
method toString*(this: SequenceAI): string {.discardable.}
import org/allbinary/ai/ArtificialIntelligence as ArtificialIntelligenceModule
export ArtificialIntelligenceModule
import org/allbinary/ai/ArtificialIntelligenceTransitionInterface as ArtificialIntelligenceTransitionInterfaceModule
export ArtificialIntelligenceTransitionInterfaceModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var SequenceAI_SEQUENCE_AIValue: string
var SequenceAI_SEQUENCE_AISet = false
proc SEQUENCE_AIStatic*(t: typedesc[SequenceAI]): string =
    if not SequenceAI_SEQUENCE_AISet:
        SequenceAI_SEQUENCE_AISet = true
        SequenceAI_SEQUENCE_AIValue = "Sequence AI"
    SequenceAI_SEQUENCE_AIValue

# Java field initializers run after the base initializer
proc initFieldsSequenceAI(this: SequenceAI) =
    this.index = 0
    discard

proc initSequenceAI*(this: SequenceAI, artificialIntelligenceInterfaceArray: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initArrayAI(this, artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        this.initFieldsSequenceAI()

proc newSequenceAI*(artificialIntelligenceInterfaceArray: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): SequenceAI =
    result = SequenceAI()
    initSequenceAI(result, artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)

method processAI*(this: SequenceAI, allBinaryLayerManager: AllBinaryLayerManager) =
        this.getArtificialIntelligenceInterface()[this.index].processAI(allBinaryLayerManager)

method next*(this: SequenceAI) {.base.} =
        this.index = this.index +% 1
        let artificialIntelligenceInterface: ArtificialIntelligenceInterface = this.getSelectedArtificialIntelligenceInterface()
        if artificialIntelligenceInterface.getId() == ArtificialIntelligence.AI_ID:
            let artificialIntelligenceTransitionInterface: ArtificialIntelligenceTransitionInterface = ArtificialIntelligenceTransitionInterface(JObject(artificialIntelligenceInterface))
            artificialIntelligenceTransitionInterface.transition()

method getIndex*(this: SequenceAI): int32 {.base, discardable.} =
        return this.index

method setIndex*(this: SequenceAI, index: int32) {.base.} =
        this.index = index

method getSelectedArtificialIntelligenceInterface*(this: SequenceAI): ArtificialIntelligenceInterface {.base, discardable.} =
        return this.getArtificialIntelligenceInterface()[this.index]

method getName*(this: SequenceAI): string {.discardable.} =
        return SequenceAI.SEQUENCE_AIStatic

method toString*(this: SequenceAI): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(procCall ArrayAI(this).toString())
        stringBuffer.append(" Selected AI: ")
        stringBuffer.append(StringUtil.getInstance().toString(this.getSelectedArtificialIntelligenceInterface()))
        return stringBuffer.toString()

when declared(newSequenceAIHook3):
    newSequenceAIHook3 = proc (artificialIntelligenceInterfaceArray: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArrayAI = newSequenceAI(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)

