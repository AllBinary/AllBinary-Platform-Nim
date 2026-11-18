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
# package org.allbinary.game.score.remote

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorInterface as RemoteHighScoresSubmissionProcessorInterfaceModule
export RemoteHighScoresSubmissionProcessorInterfaceModule

type
    RemoteHighScoresSubmissionProcessorFactory* = ref object of JObject

proc newRemoteHighScoresSubmissionProcessorFactory*(): RemoteHighScoresSubmissionProcessorFactory
proc getInstance*(t: typedesc[RemoteHighScoresSubmissionProcessorFactory]): RemoteHighScoresSubmissionProcessorInterface {.discardable.}
import org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessor as RemoteHighScoresSubmissionProcessorModule
export RemoteHighScoresSubmissionProcessorModule

var RemoteHighScoresSubmissionProcessorFactory_SINGLETONValue: RemoteHighScoresSubmissionProcessorInterface
var RemoteHighScoresSubmissionProcessorFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[RemoteHighScoresSubmissionProcessorFactory]): RemoteHighScoresSubmissionProcessorInterface =
    if not RemoteHighScoresSubmissionProcessorFactory_SINGLETONSet:
        RemoteHighScoresSubmissionProcessorFactory_SINGLETONSet = true
        RemoteHighScoresSubmissionProcessorFactory_SINGLETONValue = newRemoteHighScoresSubmissionProcessor()
    RemoteHighScoresSubmissionProcessorFactory_SINGLETONValue

proc initRemoteHighScoresSubmissionProcessorFactory*(this: RemoteHighScoresSubmissionProcessorFactory) =
    discard

proc newRemoteHighScoresSubmissionProcessorFactory*(): RemoteHighScoresSubmissionProcessorFactory =
    result = RemoteHighScoresSubmissionProcessorFactory()
    initRemoteHighScoresSubmissionProcessorFactory(result)

proc getInstance*(t: typedesc[RemoteHighScoresSubmissionProcessorFactory]): RemoteHighScoresSubmissionProcessorInterface {.discardable.} =
        return RemoteHighScoresSubmissionProcessorFactory.SINGLETON

