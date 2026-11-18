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
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/score/remote/RemoteHighScores as RemoteHighScoresModule
export RemoteHighScoresModule

type
    RemoteHighScoresProcessorInterface* = ref object of JObject


method process*(this: RemoteHighScoresProcessorInterface, remoteHighScores: RemoteHighScores, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo) {.base.} =
        raise newJException("AbstractMethodError", "process")

