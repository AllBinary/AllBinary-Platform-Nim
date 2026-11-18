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
# package org.allbinary.game.layer.behavior

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GameLayerBehavior* = ref object of JObject

proc newGameLayerBehavior*(): GameLayerBehavior


proc initGameLayerBehavior*(this: GameLayerBehavior) =
    discard

proc newGameLayerBehavior*(): GameLayerBehavior =
    result = GameLayerBehavior()
    initGameLayerBehavior(result)

