#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import java/lang/System as SystemModule
export SystemModule
import java/lang/Long as LongModule
export LongModule

type
    GameTickTimeDelayHelper* = ref object of JObject
        timeDelta*: int64
        startTime*: int64
        lastStartTime*: int64

proc newGameTickTimeDelayHelper*(startTime: int64): GameTickTimeDelayHelper
proc initGameTickTimeDelayHelper*(this: GameTickTimeDelayHelper, startTime: int64)
method setStartTime*(this: GameTickTimeDelayHelper): int64 {.base, discardable.}
method loop*(this: GameTickTimeDelayHelper) {.base.}
method getTimeFromStart*(this: GameTickTimeDelayHelper): int64 {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsGameTickTimeDelayHelper(this: GameTickTimeDelayHelper) =
    this.timeDelta = 0
    
    
    discard

proc initGameTickTimeDelayHelper*(this: GameTickTimeDelayHelper, startTime: int64) =
        this.initFieldsGameTickTimeDelayHelper()
        this.startTime = startTime
        this.lastStartTime = 0'i64

proc newGameTickTimeDelayHelper*(startTime: int64): GameTickTimeDelayHelper =
    result = GameTickTimeDelayHelper()
    initGameTickTimeDelayHelper(result, startTime)

method setStartTime*(this: GameTickTimeDelayHelper): int64 {.base, discardable.} =
        this.startTime = jCurrentTimeMillis()
        return this.startTime

method loop*(this: GameTickTimeDelayHelper) {.base.} =
        if this.lastStartTime == Long.MIN_VALUE:
            this.timeDelta = 0'i64
        else:
            this.timeDelta = jCurrentTimeMillis() -% this.lastStartTime

method getTimeFromStart*(this: GameTickTimeDelayHelper): int64 {.base, discardable.} =
        return this.startTime -% this.lastStartTime

