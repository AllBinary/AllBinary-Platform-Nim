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
import org/allbinary/game/score/remote/RemoteHighScoresProcessorInterface as RemoteHighScoresProcessorInterfaceModule
export RemoteHighScoresProcessorInterfaceModule

type
    RemoteHighScoresProcessorFactory* = ref object of JObject

proc newRemoteHighScoresProcessorFactory*(): RemoteHighScoresProcessorFactory
proc getInstance*(t: typedesc[RemoteHighScoresProcessorFactory]): RemoteHighScoresProcessorInterface {.discardable.}
import org/allbinary/game/score/remote/RemoteHighScoresProcessor as RemoteHighScoresProcessorModule
export RemoteHighScoresProcessorModule

var RemoteHighScoresProcessorFactory_SINGLETONValue: RemoteHighScoresProcessorInterface
var RemoteHighScoresProcessorFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[RemoteHighScoresProcessorFactory]): RemoteHighScoresProcessorInterface =
    if not RemoteHighScoresProcessorFactory_SINGLETONSet:
        RemoteHighScoresProcessorFactory_SINGLETONSet = true
        RemoteHighScoresProcessorFactory_SINGLETONValue = newRemoteHighScoresProcessor()
    RemoteHighScoresProcessorFactory_SINGLETONValue

proc initRemoteHighScoresProcessorFactory*(this: RemoteHighScoresProcessorFactory) =
    discard

proc newRemoteHighScoresProcessorFactory*(): RemoteHighScoresProcessorFactory =
    result = RemoteHighScoresProcessorFactory()
    initRemoteHighScoresProcessorFactory(result)

proc getInstance*(t: typedesc[RemoteHighScoresProcessorFactory]): RemoteHighScoresProcessorInterface {.discardable.} =
        return RemoteHighScoresProcessorFactory.SINGLETON

