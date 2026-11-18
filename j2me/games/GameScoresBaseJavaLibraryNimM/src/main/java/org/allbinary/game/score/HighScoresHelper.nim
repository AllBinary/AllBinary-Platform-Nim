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
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/game/score/HighScoresHelperBase as HighScoresHelperBaseModule
export HighScoresHelperBaseModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule

type
    HighScoresHelper* = ref object of HighScoresHelperBase
        circularIndexUtil*: CircularIndexUtil
        lastIndex*: int32

proc newHighScoresHelper*(): HighScoresHelper
method setHighScoresArray*(this: HighScoresHelper, highScoresArrayP: JArray[HighScores])
method getNextHighScores*(this: HighScoresHelper): HighScores {.discardable.}
method isAnyHighScores*(this: HighScoresHelper): bool {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsHighScoresHelper(this: HighScoresHelper) =
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
    this.lastIndex = -1
    discard

proc initHighScoresHelper*(this: HighScoresHelper) =
    initHighScoresHelperBase(this)
    this.initFieldsHighScoresHelper()

proc newHighScoresHelper*(): HighScoresHelper =
    result = HighScoresHelper()
    initHighScoresHelper(result)

method setHighScoresArray*(this: HighScoresHelper, highScoresArrayP: JArray[HighScores]) =
        procCall HighScoresHelperBase(this).setHighScoresArray(highScoresArrayP)
        this.circularIndexUtil.setSize(this.highScoresArrayP.length)

method getNextHighScores*(this: HighScoresHelper): HighScores {.discardable.} =
        var highScores: HighScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()]
        var index: int32 = 0
        while (highScores.getTotal() < 1 or this.lastIndex == this.circularIndexUtil.getIndex()) and index < this.highScoresArrayP.length:
            this.circularIndexUtil.next()
            highScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()]
            index = index +% 1
        this.lastIndex = this.circularIndexUtil.getIndex()
        return highScores

method isAnyHighScores*(this: HighScoresHelper): bool {.discardable.} =
        if this.highScoresArrayP.length < 1:
            return false
        var anyScores: bool = false
        var highScores: HighScores = nil
        block:
            var index: int32 = this.highScoresArrayP.length -% 1
            while index >= 0:
                defer: index = index -% 1
                highScores = this.highScoresArrayP[index]
                if highScores.getTotal() > 0:
                    anyScores = true
        return anyScores

when declared(newHighScoresHelperHook0):
    newHighScoresHelperHook0 = proc (): HighScoresHelperBase = newHighScoresHelper()

