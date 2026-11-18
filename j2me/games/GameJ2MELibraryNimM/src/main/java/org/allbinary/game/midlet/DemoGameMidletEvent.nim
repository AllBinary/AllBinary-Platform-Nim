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
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/game/midlet/DemoGameMidletState as DemoGameMidletStateModule
export DemoGameMidletStateModule

type
    DemoGameMidletEvent* = ref object of AllBinaryEventObject
        demoGameMidletState*: DemoGameMidletState

proc newDemoGameMidletEvent*(anyType: JObject, demoGameMidletState: DemoGameMidletState): DemoGameMidletEvent
proc initDemoGameMidletEvent*(this: DemoGameMidletEvent, anyType: JObject, demoGameMidletState: DemoGameMidletState)
method init*(this: DemoGameMidletEvent, anyType: JObject) {.base.}
method setDemoGameMidletState*(this: DemoGameMidletEvent, demoGameMidletState: DemoGameMidletState) {.base.}
method getDemoGameMidletState*(this: DemoGameMidletEvent): DemoGameMidletState {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsDemoGameMidletEvent(this: DemoGameMidletEvent) =
    
    discard

proc initDemoGameMidletEvent*(this: DemoGameMidletEvent, anyType: JObject, demoGameMidletState: DemoGameMidletState) =
        initAllBinaryEventObject(this, anyType)
        this.initFieldsDemoGameMidletEvent()
        this.demoGameMidletState = demoGameMidletState

proc newDemoGameMidletEvent*(anyType: JObject, demoGameMidletState: DemoGameMidletState): DemoGameMidletEvent =
    result = DemoGameMidletEvent()
    initDemoGameMidletEvent(result, anyType, demoGameMidletState)

method init*(this: DemoGameMidletEvent, anyType: JObject) {.base.} =
        this.setSource(anyType)

method setDemoGameMidletState*(this: DemoGameMidletEvent, demoGameMidletState: DemoGameMidletState) {.base.} =
        this.demoGameMidletState = demoGameMidletState

method getDemoGameMidletState*(this: DemoGameMidletEvent): DemoGameMidletState {.base, discardable.} =
        return this.demoGameMidletState

when declared(newDemoGameMidletEventHook2):
    newDemoGameMidletEventHook2 = proc (anyType: JObject, demoGameMidletState: DemoGameMidletState): AllBinaryEventObject = newDemoGameMidletEvent(anyType, demoGameMidletState)

