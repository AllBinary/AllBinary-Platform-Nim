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
import org/allbinary/game/score/HighScoresResultsListener as HighScoresResultsListenerModule
export HighScoresResultsListenerModule
import org/allbinary/game/score/HighScoresHelperBaseInterface as HighScoresHelperBaseInterfaceModule
export HighScoresHelperBaseInterfaceModule

type
    HighScoresFactoryInterface* = ref object of JObject


method fetchHighScores*(this: HighScoresFactoryInterface, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener) {.base.} =
        raise newJException("AbstractMethodError", "fetchHighScores")

method fetchHighScoresPreload*(this: HighScoresFactoryInterface, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener, preload: bool) {.base.} =
        raise newJException("AbstractMethodError", "fetchHighScoresPreload")

method createHighScoresHelper*(this: HighScoresFactoryInterface): HighScoresHelperBaseInterface {.base, discardable.} =
        raise newJException("AbstractMethodError", "createHighScoresHelper")

