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
# package org.allbinary.media.audio

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/media/audio/PlayerQueue as PlayerQueueModule
export PlayerQueueModule

type
    PrimaryPlayerQueueFactory* = ref object of JObject

proc newPrimaryPlayerQueueFactory*(): PrimaryPlayerQueueFactory
proc getInstance*(t: typedesc[PrimaryPlayerQueueFactory]): PlayerQueue {.discardable.}

var PrimaryPlayerQueueFactory_SINGLETONValue: PlayerQueue
var PrimaryPlayerQueueFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[PrimaryPlayerQueueFactory]): PlayerQueue =
    if not PrimaryPlayerQueueFactory_SINGLETONSet:
        PrimaryPlayerQueueFactory_SINGLETONSet = true
        PrimaryPlayerQueueFactory_SINGLETONValue = newPlayerQueue(4)
    PrimaryPlayerQueueFactory_SINGLETONValue

proc initPrimaryPlayerQueueFactory*(this: PrimaryPlayerQueueFactory) =
    discard

proc newPrimaryPlayerQueueFactory*(): PrimaryPlayerQueueFactory =
    result = PrimaryPlayerQueueFactory()
    initPrimaryPlayerQueueFactory(result)

proc getInstance*(t: typedesc[PrimaryPlayerQueueFactory]): PlayerQueue {.discardable.} =
        return PrimaryPlayerQueueFactory.SINGLETON

