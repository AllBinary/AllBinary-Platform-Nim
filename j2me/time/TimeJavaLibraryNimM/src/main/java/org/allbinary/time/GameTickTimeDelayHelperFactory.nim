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
# package org.allbinary.time

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule

type
    GameTickTimeDelayHelperFactory* = ref object of JObject

proc newGameTickTimeDelayHelperFactory*(): GameTickTimeDelayHelperFactory
proc initGameTickTimeDelayHelperFactory*(this: GameTickTimeDelayHelperFactory)
proc getInstance*(t: typedesc[GameTickTimeDelayHelperFactory]): GameTickTimeDelayHelper {.discardable.}

var GameTickTimeDelayHelperFactory_instanceValue: GameTickTimeDelayHelper
var GameTickTimeDelayHelperFactory_instanceSet = false
proc instance*(t: typedesc[GameTickTimeDelayHelperFactory]): GameTickTimeDelayHelper =
    if not GameTickTimeDelayHelperFactory_instanceSet:
        GameTickTimeDelayHelperFactory_instanceSet = true
        GameTickTimeDelayHelperFactory_instanceValue = newGameTickTimeDelayHelper(-1)
    GameTickTimeDelayHelperFactory_instanceValue

proc getInstance*(t: typedesc[GameTickTimeDelayHelperFactory]): GameTickTimeDelayHelper {.discardable.} =
        return GameTickTimeDelayHelperFactory.instance

proc initGameTickTimeDelayHelperFactory*(this: GameTickTimeDelayHelperFactory) =
        discard
        discard

proc newGameTickTimeDelayHelperFactory*(): GameTickTimeDelayHelperFactory =
    result = GameTickTimeDelayHelperFactory()
    initGameTickTimeDelayHelperFactory(result)

