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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule

type
    HighScoresInterface* = ref object of JObject


method getList*(this: HighScoresInterface): BasicArrayList {.base, discardable.} =
        raise newJException("AbstractMethodError", "getList")

method addHighScore*(this: HighScoresInterface, newHighScore: HighScore) {.base.} =
        raise newJException("AbstractMethodError", "addHighScore")

method getTotal*(this: HighScoresInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getTotal")

method isBestScore*(this: HighScoresInterface, newHighScore: HighScore): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isBestScore")

