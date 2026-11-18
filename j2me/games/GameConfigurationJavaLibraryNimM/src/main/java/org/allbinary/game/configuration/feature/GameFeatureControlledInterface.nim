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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GameFeatureControlledInterface* = ref object of JObject


method init*(this: GameFeatureControlledInterface, level: int32) {.base.} =
        raise newJException("AbstractMethodError", "init")

method isFeature*(this: GameFeatureControlledInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isFeature")

method isLoadingLevel*(this: GameFeatureControlledInterface, level: int32): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isLoadingLevel")

