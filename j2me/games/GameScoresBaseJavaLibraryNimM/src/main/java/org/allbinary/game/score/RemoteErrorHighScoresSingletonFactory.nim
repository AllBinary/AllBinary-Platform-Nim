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
    RemoteErrorHighScoresSingletonFactory* = ref object of JObject

proc newRemoteErrorHighScoresSingletonFactory*(): RemoteErrorHighScoresSingletonFactory
proc getInstance*(t: typedesc[RemoteErrorHighScoresSingletonFactory]): HighScores {.discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var RemoteErrorHighScoresSingletonFactory_SINGLETONValue: HighScores
var RemoteErrorHighScoresSingletonFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[RemoteErrorHighScoresSingletonFactory]): HighScores =
    if not RemoteErrorHighScoresSingletonFactory_SINGLETONSet:
        RemoteErrorHighScoresSingletonFactory_SINGLETONSet = true
        RemoteErrorHighScoresSingletonFactory_SINGLETONValue = newHighScores(CommonStrings.getInstance().LOADING, "Remote High Scores Did Not Load", CommonStrings.getInstance().PERIODS)
    RemoteErrorHighScoresSingletonFactory_SINGLETONValue

proc initRemoteErrorHighScoresSingletonFactory*(this: RemoteErrorHighScoresSingletonFactory) =
    discard

proc newRemoteErrorHighScoresSingletonFactory*(): RemoteErrorHighScoresSingletonFactory =
    result = RemoteErrorHighScoresSingletonFactory()
    initRemoteErrorHighScoresSingletonFactory(result)

proc getInstance*(t: typedesc[RemoteErrorHighScoresSingletonFactory]): HighScores {.discardable.} =
        return RemoteErrorHighScoresSingletonFactory.SINGLETON

