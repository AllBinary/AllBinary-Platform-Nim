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
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule

type
    NullHighScoresSingletonFactory* = ref object of JObject

proc newNullHighScoresSingletonFactory*(): NullHighScoresSingletonFactory
proc getInstance*(t: typedesc[NullHighScoresSingletonFactory]): HighScores {.discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var NullHighScoresSingletonFactory_SINGLETONValue: HighScores
var NullHighScoresSingletonFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NullHighScoresSingletonFactory]): HighScores =
    if not NullHighScoresSingletonFactory_SINGLETONSet:
        NullHighScoresSingletonFactory_SINGLETONSet = true
        NullHighScoresSingletonFactory_SINGLETONValue = newHighScores(CommonStrings.getInstance().LOADING, "High Scores Not Loaded", CommonStrings.getInstance().PERIODS)
    NullHighScoresSingletonFactory_SINGLETONValue

proc initNullHighScoresSingletonFactory*(this: NullHighScoresSingletonFactory) =
    discard

proc newNullHighScoresSingletonFactory*(): NullHighScoresSingletonFactory =
    result = NullHighScoresSingletonFactory()
    initNullHighScoresSingletonFactory(result)

proc getInstance*(t: typedesc[NullHighScoresSingletonFactory]): HighScores {.discardable.} =
        return NullHighScoresSingletonFactory.SINGLETON

