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
# package org.allbinary.business.advertisement

{.warning[UnusedImport]: off.}
import allbinary_java

type
    BottomLimiter* = ref object of JObject
        bottom*: int32
        deltaY*: int32
        lower*: int32
        higher*: int32

proc newBottomLimiter*(): BottomLimiter
proc initBottomLimiter*(this: BottomLimiter)
proc getInstance*(t: typedesc[BottomLimiter]): BottomLimiter {.discardable.}
method init*(this: BottomLimiter, lower: int32, higher: int32) {.base.}
method update*(this: BottomLimiter) {.base.}
method getDeltaY*(this: BottomLimiter): int32 {.base, discardable.}
method getBottom*(this: BottomLimiter): int32 {.base, discardable.}
import org/allbinary/game/GameAdState as GameAdStateModule
export GameAdStateModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/business/advertisement/GameAdStateFactory as GameAdStateFactoryModule
export GameAdStateFactoryModule

var BottomLimiter_instanceValue: BottomLimiter
var BottomLimiter_instanceSet = false
proc instance*(t: typedesc[BottomLimiter]): BottomLimiter =
    if not BottomLimiter_instanceSet:
        BottomLimiter_instanceSet = true
        BottomLimiter_instanceValue = newBottomLimiter()
    BottomLimiter_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBottomLimiter(this: BottomLimiter) =
    this.bottom = 0
    this.deltaY = 0
    this.lower = 0
    this.higher = 0
    discard

proc getInstance*(t: typedesc[BottomLimiter]): BottomLimiter {.discardable.} =
        return BottomLimiter.instance

proc initBottomLimiter*(this: BottomLimiter) =
        this.initFieldsBottomLimiter()
        discard

proc newBottomLimiter*(): BottomLimiter =
    result = BottomLimiter()
    initBottomLimiter(result)

method init*(this: BottomLimiter, lower: int32, higher: int32) {.base.} =
        this.lower = lower
        this.higher = higher

method update*(this: BottomLimiter) {.base.} =
        var displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        var gameAdState: GameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
        if gameAdState.isShowingAt():
            this.deltaY = this.higher
        else:
            this.deltaY = this.lower
        this.bottom = displayInfo.getLastHeight() -% this.deltaY

method getDeltaY*(this: BottomLimiter): int32 {.base, discardable.} =
        return this.deltaY

method getBottom*(this: BottomLimiter): int32 {.base, discardable.} =
        return this.bottom

