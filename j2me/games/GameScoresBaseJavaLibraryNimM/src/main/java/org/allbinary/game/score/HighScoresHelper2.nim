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
    HighScoresHelper2* = ref object of HighScoresHelperBase
        circularIndexUtil*: CircularIndexUtil
        selectedHighScores*: HighScores

proc newHighScoresHelper2*(): HighScoresHelper2
method setSelectedHighScores*(this: HighScoresHelper2, selectedHighScores: HighScores)
method getSelectedHighScores*(this: HighScoresHelper2): HighScores {.discardable.}
method setHighScoresArray*(this: HighScoresHelper2, highScoresArrayP: JArray[HighScores])
method selectHighScores*(this: HighScoresHelper2)
import org/allbinary/game/score/NullHighScoresSingletonFactory as NullHighScoresSingletonFactoryModule
export NullHighScoresSingletonFactoryModule


# Java field initializers run after the base initializer
proc initFieldsHighScoresHelper2(this: HighScoresHelper2) =
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
    this.selectedHighScores = NullHighScoresSingletonFactory.getInstance()
    discard

proc initHighScoresHelper2*(this: HighScoresHelper2) =
    initHighScoresHelperBase(this)
    this.initFieldsHighScoresHelper2()

proc newHighScoresHelper2*(): HighScoresHelper2 =
    result = HighScoresHelper2()
    initHighScoresHelper2(result)

method setSelectedHighScores*(this: HighScoresHelper2, selectedHighScores: HighScores) =
        this.selectedHighScores = selectedHighScores

method getSelectedHighScores*(this: HighScoresHelper2): HighScores {.discardable.} =
        return this.selectedHighScores

method setHighScoresArray*(this: HighScoresHelper2, highScoresArrayP: JArray[HighScores]) =
        procCall HighScoresHelperBase(this).setHighScoresArray(highScoresArrayP)
        this.circularIndexUtil.setSize(this.highScoresArrayP.length)
        this.selectHighScores()

method selectHighScores*(this: HighScoresHelper2) =
        if this.highScoresArrayP.length == 0:
            this.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
            return
        this.circularIndexUtil.next()
        var highScores: HighScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()]
        var index: int32 = 0
        while highScores.getTotal() < 1 and index < this.highScoresArrayP.length:
            highScores = this.highScoresArrayP[this.circularIndexUtil.next()]
            index = index +% 1
        this.setSelectedHighScores(highScores)

when declared(newHighScoresHelper2Hook0):
    newHighScoresHelper2Hook0 = proc (): HighScoresHelperBase = newHighScoresHelper2()

