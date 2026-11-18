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
# package org.allbinary.game.multiplayer.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/multiplayer/layer/MultiplayerBehavior as MultiplayerBehaviorModule
export MultiplayerBehaviorModule

type
    MultiPlayerGameLayerInterface* = ref object of JObject


method getMultiplayerBehavior*(this: MultiPlayerGameLayerInterface): MultiplayerBehavior {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMultiplayerBehavior")

