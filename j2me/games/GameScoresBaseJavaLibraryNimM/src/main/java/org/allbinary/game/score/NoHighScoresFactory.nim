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
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/game/score/HighScoresBase as HighScoresBaseModule
export HighScoresBaseModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule
import org/allbinary/game/score/HighScoresResultsListener as HighScoresResultsListenerModule
export HighScoresResultsListenerModule
import org/allbinary/game/score/HighScoresHelperBaseInterface as HighScoresHelperBaseInterfaceModule
export HighScoresHelperBaseInterfaceModule

type
    NoHighScoresFactory* = ref object of HighScoresBase
        logUtil*: LogUtil
        NO_HIGH_SCORES*: JArray[HighScores]

proc newNoHighScoresFactory*(): NoHighScoresFactory
proc initNoHighScoresFactory*(this: NoHighScoresFactory)
proc getInstance*(t: typedesc[NoHighScoresFactory]): NoHighScoresFactory {.discardable.}
method fetchHighScores*(this: NoHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener)
method createHighScoresHelper*(this: NoHighScoresFactory): HighScoresHelperBaseInterface {.discardable.}
import org/allbinary/game/score/HighScoresHelperBase as HighScoresHelperBaseModule
export HighScoresHelperBaseModule

var NoHighScoresFactory_instanceValue: NoHighScoresFactory
var NoHighScoresFactory_instanceSet = false
proc instance*(t: typedesc[NoHighScoresFactory]): NoHighScoresFactory =
    if not NoHighScoresFactory_instanceSet:
        NoHighScoresFactory_instanceSet = true
        NoHighScoresFactory_instanceValue = newNoHighScoresFactory()
    NoHighScoresFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsNoHighScoresFactory(this: NoHighScoresFactory) =
    this.logUtil = LogUtil.getInstance()
    this.NO_HIGH_SCORES = newJArray[HighScores](0, default(HighScores))
    discard

proc getInstance*(t: typedesc[NoHighScoresFactory]): NoHighScoresFactory {.discardable.} =
        return NoHighScoresFactory.instance

proc initNoHighScoresFactory*(this: NoHighScoresFactory) =
        initHighScoresBase(this)
        this.initFieldsNoHighScoresFactory()
        discard

proc newNoHighScoresFactory*(): NoHighScoresFactory =
    result = NoHighScoresFactory()
    initNoHighScoresFactory(result)

method fetchHighScores*(this: NoHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener) =
        this.logUtil.putF("Getting No HighScores", this, "fetchHighScores")
        highScoresResultsListener.setHighScoresArray(this.NO_HIGH_SCORES)

method createHighScoresHelper*(this: NoHighScoresFactory): HighScoresHelperBaseInterface {.discardable.} =
        return newHighScoresHelperBase()

when declared(newNoHighScoresFactoryHook0):
    newNoHighScoresFactoryHook0 = proc (): HighScoresBase = newNoHighScoresFactory()

