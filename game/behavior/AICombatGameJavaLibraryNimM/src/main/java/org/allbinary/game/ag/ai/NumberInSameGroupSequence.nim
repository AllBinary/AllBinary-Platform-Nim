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

type
    NumberInSameGroupSequence* = ref object of JObject
        NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_ONE*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_TWO*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_THREE*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_SIX*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE_NINE*: int32
        NUMBER_ON_SAME_TEAM_SEQUENCE*: JArray[int32]

proc newNumberInSameGroupSequence*(): NumberInSameGroupSequence
proc initNumberInSameGroupSequence*(this: NumberInSameGroupSequence)
proc getInstance*(t: typedesc[NumberInSameGroupSequence]): NumberInSameGroupSequence {.discardable.}
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule


# Java field initializers run after the base initializer
proc initFieldsNumberInSameGroupSequence(this: NumberInSameGroupSequence) =
    
    
    
    
    
    
    
    
    
    
    
    discard

proc getInstance*(t: typedesc[NumberInSameGroupSequence]): NumberInSameGroupSequence {.discardable.} =
        return newNumberInSameGroupSequence()

proc initNumberInSameGroupSequence*(this: NumberInSameGroupSequence) =
        this.initFieldsNumberInSameGroupSequence()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = smallIntegerSingletonFactory.getAt(100)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = smallIntegerSingletonFactory.getAt(101)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = smallIntegerSingletonFactory.getAt(102)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = smallIntegerSingletonFactory.getAt(103)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = smallIntegerSingletonFactory.getAt(104)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = smallIntegerSingletonFactory.getAt(105)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = smallIntegerSingletonFactory.getAt(106)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = smallIntegerSingletonFactory.getAt(107)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = smallIntegerSingletonFactory.getAt(108)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = smallIntegerSingletonFactory.getAt(109)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE = newJArrayFromRefs[int32](this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE)

proc newNumberInSameGroupSequence*(): NumberInSameGroupSequence =
    result = NumberInSameGroupSequence()
    initNumberInSameGroupSequence(result)

