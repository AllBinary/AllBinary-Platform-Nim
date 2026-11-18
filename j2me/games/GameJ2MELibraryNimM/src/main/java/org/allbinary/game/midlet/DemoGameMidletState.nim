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
# package org.allbinary.game.midlet

{.warning[UnusedImport]: off.}
import allbinary_java

type
    DemoGameMidletState* = ref object of JObject

proc newDemoGameMidletState*(): DemoGameMidletState
proc initDemoGameMidletState*(this: DemoGameMidletState)


proc initDemoGameMidletState*(this: DemoGameMidletState) =
        discard
        discard

proc newDemoGameMidletState*(): DemoGameMidletState =
    result = DemoGameMidletState()
    initDemoGameMidletState(result)

