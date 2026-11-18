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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule

type
    Scoreable* = ref object of ScoreableInterface
        points*: int32

proc newScoreable*(points: int32): Scoreable
proc initScoreable*(this: Scoreable, points: int32)
method addPoints*(this: Scoreable, points: int32)
method removePoints*(this: Scoreable, points: int32)
method setPoints*(this: Scoreable, points: int32) {.base.}
method getPoints*(this: Scoreable): int32 {.discardable.}
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule

var Scoreable_IDValue: int32
var Scoreable_IDSet = false
proc ID*(t: typedesc[Scoreable]): int32 =
    if not Scoreable_IDSet:
        Scoreable_IDSet = true
        Scoreable_IDValue = SmallIntegerSingletonFactory.getInstance().getAt(3)
    Scoreable_IDValue
proc `ID=`*(t: typedesc[Scoreable], value: int32) =
    Scoreable_IDSet = true
    Scoreable_IDValue = value

# Java field initializers run after the base initializer
proc initFieldsScoreable(this: Scoreable) =
    
    discard

proc initScoreable*(this: Scoreable, points: int32) =
        this.initFieldsScoreable()
        this.points = points

proc newScoreable*(points: int32): Scoreable =
    result = Scoreable()
    initScoreable(result, points)

method addPoints*(this: Scoreable, points: int32) =
        this.points = this.points +% points

method removePoints*(this: Scoreable, points: int32) =
        this.points = this.points -% points

method setPoints*(this: Scoreable, points: int32) {.base.} =
        this.points = points

method getPoints*(this: Scoreable): int32 {.discardable.} =
        return this.points

