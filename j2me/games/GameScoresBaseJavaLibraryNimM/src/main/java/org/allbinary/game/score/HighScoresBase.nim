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
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/score/HighScoresFactoryInterface as HighScoresFactoryInterfaceModule
export HighScoresFactoryInterfaceModule
import org/allbinary/game/score/HighScoresResultsListener as HighScoresResultsListenerModule
export HighScoresResultsListenerModule
import org/allbinary/game/score/HighScoresHelperBaseInterface as HighScoresHelperBaseInterfaceModule
export HighScoresHelperBaseInterfaceModule

type
    HighScoresBase* = ref object of HighScoresFactoryInterface
        commonStrings*: CommonStrings

proc newHighScoresBase*(): HighScoresBase
proc initHighScoresBase*(this: HighScoresBase)
method fetchHighScores*(this: HighScoresBase, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener)
method fetchHighScoresPreload*(this: HighScoresBase, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener, preload: bool)
method createHighScoresHelper*(this: HighScoresBase): HighScoresHelperBaseInterface {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsHighScoresBase(this: HighScoresBase) =
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initHighScoresBase*(this: HighScoresBase) =
        this.initFieldsHighScoresBase()
        discard

proc newHighScoresBase*(): HighScoresBase =
    result = HighScoresBase()
    initHighScoresBase(result)

method fetchHighScores*(this: HighScoresBase, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener) =
        raise newJException("RuntimeException", "")

method fetchHighScoresPreload*(this: HighScoresBase, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener, preload: bool) =
        raise newJException("RuntimeException", "")

method createHighScoresHelper*(this: HighScoresBase): HighScoresHelperBaseInterface {.discardable.} =
        raise newJException("RuntimeException", "")

