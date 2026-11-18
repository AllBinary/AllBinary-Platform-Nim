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
import org/allbinary/game/score/Scoreable as ScoreableModule
export ScoreableModule

type
    ScoreableInterfaceCompositeInterface* = ref object of JObject


method getScoreableInterface*(this: ScoreableInterfaceCompositeInterface): Scoreable {.base, discardable.} =
        raise newJException("AbstractMethodError", "getScoreableInterface")

