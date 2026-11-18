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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/ag/ai/InputProbability as InputProbabilityModule
export InputProbabilityModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule

type
    BasicRandomAI* = ref object of BasicAI
        i_random*: int32
        inputProbability*: InputProbability
        visitor*: Visitor
        keyArray*: JArray[int32]
        myRandomFactory*: MyRandomFactory

proc newBasicRandomAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, inputProbability: InputProbability, visitor: Visitor): BasicRandomAI
proc initBasicRandomAI*(this: BasicRandomAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, inputProbability: InputProbability, visitor: Visitor)
method processAI*(this: BasicRandomAI, allBinaryLayerManager: AllBinaryLayerManager)
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsBasicRandomAI(this: BasicRandomAI) =
    this.i_random = 0
    
    
    this.keyArray = newJArrayFrom[int32]([Canvas.UP, Canvas.DOWN, Canvas.LEFT, Canvas.RIGHT, Canvas.KEY_NUM1, Canvas.KEY_NUM7, Canvas.KEY_NUM9])
    this.myRandomFactory = MyRandomFactory.getInstance()
    discard

proc initBasicRandomAI*(this: BasicRandomAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, inputProbability: InputProbability, visitor: Visitor) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsBasicRandomAI()
        this.inputProbability = inputProbability
        this.visitor = visitor

proc newBasicRandomAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, inputProbability: InputProbability, visitor: Visitor): BasicRandomAI =
    result = BasicRandomAI()
    initBasicRandomAI(result, ownerLayerInterface, gameInput, inputProbability, visitor)

method processAI*(this: BasicRandomAI, allBinaryLayerManager: AllBinaryLayerManager) =
        if this.inputProbability.getTimeDelayHelper().isTime(GameTickTimeDelayHelperFactory.getInstance().startTime):
            this.i_random = this.myRandomFactory.getAbsoluteNextInt(this.inputProbability.getMax())
            var repeat: bool = false
            var repeatLikelyhoodIntegerArray: JArray[int32] = this.inputProbability.getRepeatLikelyhoodIntegerArray()
            if this.getLastKey() != -1 and repeatLikelyhoodIntegerArray[this.getLastKey()].intValue() >= this.i_random:
                repeat = true
            if (not repeat):
                var likelyhoodIntegerArray: JArray[JArray[int32]] = this.inputProbability.getLikelyhoodIntegerArray()
                this.i_random = this.myRandomFactory.getAbsoluteNextInt(this.inputProbability.getMax())
                var size: int32 = this.keyArray.length
                var likelyhoodIntegerKeyArray: JArray[int32] = nil
                block:
                    var index: int32 = 0
                    while index < size:
                        defer: index = index +% 1
                        var key: int32 = this.keyArray[index]
                        likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key]
                        if likelyhoodIntegerArray.length >= key and (not jIsNil(likelyhoodIntegerKeyArray[0])):
                            if this.i_random >= likelyhoodIntegerKeyArray[0].intValue() and this.i_random < likelyhoodIntegerKeyArray[1].intValue():
                                this.setLastKey(key)
                                break
            this.visitor.visit(this)

when declared(newBasicRandomAIHook4):
    newBasicRandomAIHook4 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, inputProbability: InputProbability, visitor: Visitor): BasicAI = newBasicRandomAI(ownerLayerInterface, gameInput, inputProbability, visitor)

