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
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    BasicProbabilityAIDataFactory* = ref object of JObject

proc newBasicProbabilityAIDataFactory*(): BasicProbabilityAIDataFactory
method getInstance*(this: BasicProbabilityAIDataFactory): ABHashtable {.base, discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/time/NoTimeDelayHelper as NoTimeDelayHelperModule
export NoTimeDelayHelperModule
import org/allbinary/game/ag/ai/InputProbability as InputProbabilityModule
export InputProbabilityModule


proc initBasicProbabilityAIDataFactory*(this: BasicProbabilityAIDataFactory) =
    discard

proc newBasicProbabilityAIDataFactory*(): BasicProbabilityAIDataFactory =
    result = BasicProbabilityAIDataFactory()
    initBasicProbabilityAIDataFactory(result)

method getInstance*(this: BasicProbabilityAIDataFactory): ABHashtable {.base, discardable.} =
        let likelyhoodIntegerArray: JArray[JArray[int32]] = newJArrayOf[JArray[int32]](Canvas.KEY_NUM9 +% 1, proc (): JArray[int32] = newJArray[int32](2, default(int32)))
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        likelyhoodIntegerArray[Canvas.UP][0] = smallIntegerSingletonFactory.getAt(0)
        likelyhoodIntegerArray[Canvas.UP][1] = smallIntegerSingletonFactory.getAt(10)
        likelyhoodIntegerArray[Canvas.DOWN][0] = smallIntegerSingletonFactory.getAt(10)
        likelyhoodIntegerArray[Canvas.DOWN][1] = smallIntegerSingletonFactory.getAt(14)
        likelyhoodIntegerArray[Canvas.LEFT][0] = smallIntegerSingletonFactory.getAt(14)
        likelyhoodIntegerArray[Canvas.LEFT][1] = smallIntegerSingletonFactory.getAt(18)
        likelyhoodIntegerArray[Canvas.RIGHT][0] = smallIntegerSingletonFactory.getAt(18)
        likelyhoodIntegerArray[Canvas.RIGHT][1] = smallIntegerSingletonFactory.getAt(22)
        likelyhoodIntegerArray[Canvas.KEY_NUM7][0] = smallIntegerSingletonFactory.getAt(22)
        likelyhoodIntegerArray[Canvas.KEY_NUM7][1] = smallIntegerSingletonFactory.getAt(26)
        likelyhoodIntegerArray[Canvas.KEY_NUM9][0] = smallIntegerSingletonFactory.getAt(26)
        likelyhoodIntegerArray[Canvas.KEY_NUM9][1] = smallIntegerSingletonFactory.getAt(30)
        likelyhoodIntegerArray[Canvas.KEY_NUM1][0] = smallIntegerSingletonFactory.getAt(30)
        likelyhoodIntegerArray[Canvas.KEY_NUM1][1] = smallIntegerSingletonFactory.getAt(40)
        let repeatLikelyhoodIntegerArray: JArray[int32] = newJArray[int32](Canvas.KEY_NUM9 +% 1, default(int32))
        repeatLikelyhoodIntegerArray[Canvas.UP] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas.DOWN] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas.LEFT] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas.RIGHT] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas.KEY_NUM7] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas.KEY_NUM9] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas.KEY_NUM1] = smallIntegerSingletonFactory.getAt(10)
        let inputProbability: InputProbability = newInputProbability(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, NoTimeDelayHelper.SINGLETON)
        return inputProbability.toHashtable()

