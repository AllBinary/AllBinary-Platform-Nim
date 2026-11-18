#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import org/allbinary/game/score/HighScoresResultsListener as HighScoresResultsListenerModule
export HighScoresResultsListenerModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule

type
    HighScoresHelperBaseInterface* = ref object of HighScoresResultsListener


method setSelectedHighScores*(this: HighScoresHelperBaseInterface, selectedHighScores: HighScores) {.base.} =
        raise newJException("AbstractMethodError", "setSelectedHighScores")

method getHighScoresArray*(this: HighScoresHelperBaseInterface): JArray[HighScores] {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHighScoresArray")

method getSelectedHighScores*(this: HighScoresHelperBaseInterface): HighScores {.base, discardable.} =
        raise newJException("AbstractMethodError", "getSelectedHighScores")

