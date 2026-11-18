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
import org/allbinary/game/midlet/DemoGameMidletState as DemoGameMidletStateModule
export DemoGameMidletStateModule

type
    DemoGameMidletStateFactory* = ref object of JObject
        NONE*: DemoGameMidletState
        START_DEMO*: DemoGameMidletState
        START_GAME*: DemoGameMidletState
        START_INPUT_MAPPING*: DemoGameMidletState

proc newDemoGameMidletStateFactory*(): DemoGameMidletStateFactory
proc initDemoGameMidletStateFactory*(this: DemoGameMidletStateFactory)
proc getInstance*(t: typedesc[DemoGameMidletStateFactory]): DemoGameMidletStateFactory {.discardable.}

var DemoGameMidletStateFactory_STATEValue: DemoGameMidletStateFactory
var DemoGameMidletStateFactory_STATESet = false
proc STATE*(t: typedesc[DemoGameMidletStateFactory]): DemoGameMidletStateFactory =
    if not DemoGameMidletStateFactory_STATESet:
        DemoGameMidletStateFactory_STATESet = true
        DemoGameMidletStateFactory_STATEValue = newDemoGameMidletStateFactory()
    DemoGameMidletStateFactory_STATEValue
proc `STATE=`*(t: typedesc[DemoGameMidletStateFactory], value: DemoGameMidletStateFactory) =
    DemoGameMidletStateFactory_STATESet = true
    DemoGameMidletStateFactory_STATEValue = value

# Java field initializers run after the base initializer
proc initFieldsDemoGameMidletStateFactory(this: DemoGameMidletStateFactory) =
    this.NONE = newDemoGameMidletState()
    this.START_DEMO = newDemoGameMidletState()
    this.START_GAME = newDemoGameMidletState()
    this.START_INPUT_MAPPING = newDemoGameMidletState()
    discard

proc initDemoGameMidletStateFactory*(this: DemoGameMidletStateFactory) =
        this.initFieldsDemoGameMidletStateFactory()
        discard

proc newDemoGameMidletStateFactory*(): DemoGameMidletStateFactory =
    result = DemoGameMidletStateFactory()
    initDemoGameMidletStateFactory(result)

proc getInstance*(t: typedesc[DemoGameMidletStateFactory]): DemoGameMidletStateFactory {.discardable.} =
        return DemoGameMidletStateFactory.STATE

