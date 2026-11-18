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
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    NumberOnOwnGroupSequenceAIFactory* = ref object of JObject
        logUtil*: LogUtil

proc newNumberOnOwnGroupSequenceAIFactory*(): NumberOnOwnGroupSequenceAIFactory
method getInstance*(this: NumberOnOwnGroupSequenceAIFactory, hashtable: ABHashtable, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/ag/ai/NumberInSameGroupSequence as NumberInSameGroupSequenceModule
export NumberInSameGroupSequenceModule
import org/allbinary/game/ag/ai/NumberOnOwnGroupSequenceAI as NumberOnOwnGroupSequenceAIModule
export NumberOnOwnGroupSequenceAIModule


# Java field initializers run after the base initializer
proc initFieldsNumberOnOwnGroupSequenceAIFactory(this: NumberOnOwnGroupSequenceAIFactory) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initNumberOnOwnGroupSequenceAIFactory*(this: NumberOnOwnGroupSequenceAIFactory) =
    this.initFieldsNumberOnOwnGroupSequenceAIFactory()

proc newNumberOnOwnGroupSequenceAIFactory*(): NumberOnOwnGroupSequenceAIFactory =
    result = NumberOnOwnGroupSequenceAIFactory()
    initNumberOnOwnGroupSequenceAIFactory(result)

method getInstance*(this: NumberOnOwnGroupSequenceAIFactory, hashtable: ABHashtable, artificialIntelligenceInterface: JArray[ArtificialIntelligenceInterface], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.base, discardable.} =
        let integerArray: JArray[int32] = NumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE
        let list: BasicArrayList = newBasicArrayListD()
        block:
            var index: int32 = 0
            while index < integerArray.length:
                defer: index = index +% 1
                var integerCanBeNull: JObject = hashtable.get(JObject(JObject(integerArray[index])))
                if (jIsNil(integerCanBeNull)):
                    break
                list.add(integerCanBeNull)
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Total AI Properties: ")
        stringBuffer.appendint(list.size())
        stringBuffer.append(" == Total AI: ")
        stringBuffer.appendint(artificialIntelligenceInterface.length)
        stringBuffer.append(" + 1")
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE)
        if artificialIntelligenceInterface.length -% 1 > list.size():
            raise newJException("Exception", "Not enough AI properties.")
        if artificialIntelligenceInterface.length -% 1 < list.size():
            raise newJException("Exception", "Too Many AI properties.")
        var numberOnSameTeam: JArray[int32] = newJArray[int32](list.size(), default(int32))
        block:
            var index: int32 = 0
            while index < numberOnSameTeam.length:
                defer: index = index +% 1
                numberOnSameTeam[index] = jUnboxInteger(list.objectArray[index])
        return newNumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)

