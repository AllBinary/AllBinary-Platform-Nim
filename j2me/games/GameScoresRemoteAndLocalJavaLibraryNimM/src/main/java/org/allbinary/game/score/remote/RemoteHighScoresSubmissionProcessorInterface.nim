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
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/score/remote/RemoteHighScores as RemoteHighScoresModule
export RemoteHighScoresModule

type
    RemoteHighScoresSubmissionProcessorInterface* = ref object of JObject


method process*(this: RemoteHighScoresSubmissionProcessorInterface, remoteHighScores: RemoteHighScores, abeClientInformation: AbeClientInformationInterface, highScore: HighScore) {.base.} =
        raise newJException("AbstractMethodError", "process")

