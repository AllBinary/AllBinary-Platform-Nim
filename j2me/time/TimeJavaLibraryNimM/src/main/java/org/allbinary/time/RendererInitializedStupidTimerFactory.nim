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
import org/allbinary/time/StupidTimer as StupidTimerModule
export StupidTimerModule

type
    RendererInitializedStupidTimerFactory* = ref object of JObject

proc newRendererInitializedStupidTimerFactory*(): RendererInitializedStupidTimerFactory
proc getInstance*(t: typedesc[RendererInitializedStupidTimerFactory]): StupidTimer {.discardable.}

var RendererInitializedStupidTimerFactory_instanceValue: StupidTimer
var RendererInitializedStupidTimerFactory_instanceSet = false
proc instance*(t: typedesc[RendererInitializedStupidTimerFactory]): StupidTimer =
    if not RendererInitializedStupidTimerFactory_instanceSet:
        RendererInitializedStupidTimerFactory_instanceSet = true
        RendererInitializedStupidTimerFactory_instanceValue = newStupidTimer()
    RendererInitializedStupidTimerFactory_instanceValue

proc initRendererInitializedStupidTimerFactory*(this: RendererInitializedStupidTimerFactory) =
    discard

proc newRendererInitializedStupidTimerFactory*(): RendererInitializedStupidTimerFactory =
    result = RendererInitializedStupidTimerFactory()
    initRendererInitializedStupidTimerFactory(result)

proc getInstance*(t: typedesc[RendererInitializedStupidTimerFactory]): StupidTimer {.discardable.} =
        return RendererInitializedStupidTimerFactory.instance

