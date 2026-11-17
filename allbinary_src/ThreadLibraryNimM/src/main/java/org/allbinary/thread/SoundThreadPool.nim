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
# package org.allbinary.thread

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/thread/ThreadPool as ThreadPoolModule
export ThreadPoolModule

type
    SoundThreadPool* = ref object of JObject

proc newSoundThreadPool*(): SoundThreadPool
proc getInstance*(t: typedesc[SoundThreadPool]): ThreadPool {.discardable.}

var SoundThreadPool_instanceValue: ThreadPool
var SoundThreadPool_instanceSet = false
proc instance*(t: typedesc[SoundThreadPool]): ThreadPool =
    if not SoundThreadPool_instanceSet:
        SoundThreadPool_instanceSet = true
        SoundThreadPool_instanceValue = newThreadPool("Sound", 1, ThreadPool.NORMAL_PRIORITY)
    SoundThreadPool_instanceValue

proc initSoundThreadPool*(this: SoundThreadPool) =
    discard

proc newSoundThreadPool*(): SoundThreadPool =
    result = SoundThreadPool()
    initSoundThreadPool(result)

proc getInstance*(t: typedesc[SoundThreadPool]): ThreadPool {.discardable.} =
        return SoundThreadPool.instance

