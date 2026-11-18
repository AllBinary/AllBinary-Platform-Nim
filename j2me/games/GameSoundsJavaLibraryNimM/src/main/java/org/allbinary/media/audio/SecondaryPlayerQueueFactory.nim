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
    SecondaryPlayerQueueFactory* = ref object of JObject

proc newSecondaryPlayerQueueFactory*(): SecondaryPlayerQueueFactory
proc getInstance*(t: typedesc[SecondaryPlayerQueueFactory]): PlayerQueue {.discardable.}

var SecondaryPlayerQueueFactory_SINGLETONValue: PlayerQueue
var SecondaryPlayerQueueFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[SecondaryPlayerQueueFactory]): PlayerQueue =
    if not SecondaryPlayerQueueFactory_SINGLETONSet:
        SecondaryPlayerQueueFactory_SINGLETONSet = true
        SecondaryPlayerQueueFactory_SINGLETONValue = newPlayerQueue(4)
    SecondaryPlayerQueueFactory_SINGLETONValue

proc initSecondaryPlayerQueueFactory*(this: SecondaryPlayerQueueFactory) =
    discard

proc newSecondaryPlayerQueueFactory*(): SecondaryPlayerQueueFactory =
    result = SecondaryPlayerQueueFactory()
    initSecondaryPlayerQueueFactory(result)

proc getInstance*(t: typedesc[SecondaryPlayerQueueFactory]): PlayerQueue {.discardable.} =
        return SecondaryPlayerQueueFactory.SINGLETON

