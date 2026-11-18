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
# package org.allbinary.game.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/ai/ArtificialIntelligence as ArtificialIntelligenceModule
export ArtificialIntelligenceModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/game/input/GameKeyEventSourceInterface as GameKeyEventSourceInterfaceModule
export GameKeyEventSourceInterfaceModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    BasicAI* = ref object of ArtificialIntelligence
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        gameKeyEventFactory*: GameKeyEventFactory
        ownerLayerInterface*: AllBinaryLayer
        gameInput*: GameInput
        lastKey*: int32

converter jAsGameKeyEventSourceInterface*(value: BasicAI): GameKeyEventSourceInterface = cast[GameKeyEventSourceInterface](value)
proc newBasicAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI
proc initBasicAI*(this: BasicAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: BasicAI, allBinaryLayerManager: AllBinaryLayerManager)
method processKeyAI*(this: BasicAI, key: int32) {.base.}
method setLastKey*(this: BasicAI, lastKey: int32) {.base.}
method getLastKey*(this: BasicAI): int32 {.base, discardable.}
method getOwnerLayerInterface*(this: BasicAI): AllBinaryLayer {.base, discardable.}
method getGameInput*(this: BasicAI): GameInput {.base, discardable.}
method getName*(this: BasicAI): string {.base, discardable.}
method toString*(this: BasicAI): string {.discardable.}
method getSourceId*(this: BasicAI): int32 {.discardable.}
import org/allbinary/game/displayable/canvas/CanvasUtil as CanvasUtilModule
export CanvasUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var BasicAI_AI_VISITORValue: int32
var BasicAI_AI_VISITORSet = false
proc AI_VISITOR*(t: typedesc[BasicAI]): int32 =
    if not BasicAI_AI_VISITORSet:
        BasicAI_AI_VISITORSet = true
        BasicAI_AI_VISITORValue = SmallIntegerSingletonFactory.getInstance().getAt(2)
    BasicAI_AI_VISITORValue
var BasicAI_IDValue: int32
var BasicAI_IDSet = false
proc ID*(t: typedesc[BasicAI]): int32 =
    if not BasicAI_IDSet:
        BasicAI_IDSet = true
        BasicAI_IDValue = SmallIntegerSingletonFactory.getInstance().getAt(1)
    BasicAI_IDValue

# Java field initializers run after the base initializer
proc initFieldsBasicAI(this: BasicAI) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    
    
    this.lastKey = -1
    discard

proc initBasicAI*(this: BasicAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initArtificialIntelligence(this)
        this.initFieldsBasicAI()
        this.ownerLayerInterface = ownerLayerInterface
        this.gameInput = gameInput

proc newBasicAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI =
    result = BasicAI()
    initBasicAI(result, ownerLayerInterface, gameInput)

method processAI*(this: BasicAI, allBinaryLayerManager: AllBinaryLayerManager) =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method processKeyAI*(this: BasicAI, key: int32) {.base.} =
        if key != -1:
            this.gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key))

method setLastKey*(this: BasicAI, lastKey: int32) {.base.} =
        this.lastKey = lastKey

method getLastKey*(this: BasicAI): int32 {.base, discardable.} =
        return this.lastKey

method getOwnerLayerInterface*(this: BasicAI): AllBinaryLayer {.base, discardable.} =
        return this.ownerLayerInterface

method getGameInput*(this: BasicAI): GameInput {.base, discardable.} =
        return this.gameInput

method getName*(this: BasicAI): string {.base, discardable.} =
        return jClassName(this)

method toString*(this: BasicAI): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(this.getName())
        stringBuffer.append(" LastKey: ")
        stringBuffer.append(CanvasUtil.getKeyName(this.getLastKey()))
        return stringBuffer.toString()

method getSourceId*(this: BasicAI): int32 {.discardable.} =
        return 1

when declared(newBasicAIHook2):
    newBasicAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligence = newBasicAI(ownerLayerInterface, gameInput)

