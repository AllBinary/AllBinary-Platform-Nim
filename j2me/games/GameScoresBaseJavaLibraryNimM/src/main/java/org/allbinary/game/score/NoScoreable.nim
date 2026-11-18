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
import org/allbinary/game/score/Scoreable as ScoreableModule
export ScoreableModule

type
    NoScoreable* = ref object of Scoreable

proc newNoScoreable*(): NoScoreable
proc initNoScoreable*(this: NoScoreable)
proc getInstance*(t: typedesc[NoScoreable]): NoScoreable {.discardable.}
method addPoints*(this: NoScoreable, points: int32)
method removePoints*(this: NoScoreable, points: int32)

var NoScoreable_SINGLETONValue: NoScoreable
var NoScoreable_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NoScoreable]): NoScoreable =
    if not NoScoreable_SINGLETONSet:
        NoScoreable_SINGLETONSet = true
        NoScoreable_SINGLETONValue = newNoScoreable()
    NoScoreable_SINGLETONValue

proc getInstance*(t: typedesc[NoScoreable]): NoScoreable {.discardable.} =
        return NoScoreable.SINGLETON

proc initNoScoreable*(this: NoScoreable) =
        initScoreable(this, 0)

proc newNoScoreable*(): NoScoreable =
    result = NoScoreable()
    initNoScoreable(result)

method addPoints*(this: NoScoreable, points: int32) =
        discard

method removePoints*(this: NoScoreable, points: int32) =
        discard

when declared(newNoScoreableHook0):
    newNoScoreableHook0 = proc (): Scoreable = newNoScoreable()

