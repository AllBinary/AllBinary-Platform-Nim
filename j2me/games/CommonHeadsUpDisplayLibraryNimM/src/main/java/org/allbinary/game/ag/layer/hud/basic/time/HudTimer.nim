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
# package org.allbinary.game.ag.layer.hud.basic.time

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/math/PrimitiveLongUtil as PrimitiveLongUtilModule
export PrimitiveLongUtilModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule

type
    HudTimer* = ref object of JObject
        startTime*: int64
        hundredthTime*: int64
        maxTime*: int64
        modifier*: int64
        hundrethsString*: JArray[uint16]
        totalDigits*: int32
        primitiveLongUtil*: PrimitiveLongUtil
        MAX*: JArray[uint16]
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper

proc newHudTimer*(maxTime: int32): HudTimer
proc initHudTimer*(this: HudTimer, maxTime: int32)
method start*(this: HudTimer) {.base.}
method get*(this: HudTimer): int64 {.base, discardable.}
method update*(this: HudTimer) {.base.}
method reduce*(this: HudTimer, value: int32) {.base.}
method add*(this: HudTimer, value: int32) {.base.}
method getTimeChars*(this: HudTimer): JArray[uint16] {.base, discardable.}
method getCurrentTotalDigits*(this: HudTimer): int32 {.base, discardable.}
import org/allbinary/logic/math/PrimitiveLongSingleton as PrimitiveLongSingletonModule
export PrimitiveLongSingletonModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsHudTimer(this: HudTimer) =
    this.startTime = int64(-1)
    this.hundredthTime = 0
    
    this.modifier = 0
    this.hundrethsString = PrimitiveLongSingleton.getInstance().ZERO
    this.totalDigits = 1
    
    this.MAX = newJArrayFrom[uint16]([uint16(ord('L')), uint16(ord('O')), uint16(ord('L'))])
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    discard

proc initHudTimer*(this: HudTimer, maxTime: int32) =
        this.initFieldsHudTimer()
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(maxTime)
        this.maxTime = int64(maxTime)

proc newHudTimer*(maxTime: int32): HudTimer =
    result = HudTimer()
    initHudTimer(result, maxTime)

method start*(this: HudTimer) {.base.} =
        this.hundredthTime = 0'i64
        this.startTime = this.gameTickTimeDelayHelper.startTime

method get*(this: HudTimer): int64 {.base, discardable.} =
        return this.hundredthTime

method update*(this: HudTimer) {.base.} =
        var lastLowerTime: int64 = this.hundredthTime
        var currentTime: int64 = ((this.modifier +% this.gameTickTimeDelayHelper.startTime) -% this.startTime)
        if currentTime < 0'i64:
            currentTime = 0'i64
        this.hundredthTime = currentTime div 100'i64
        if this.hundredthTime >= this.maxTime:
            if this.startTime > 0'i64:
                this.hundrethsString = this.MAX
        elif lastLowerTime != this.hundredthTime:
            this.hundrethsString = this.primitiveLongUtil.getCharArray(jToInt32(this.hundredthTime))
            this.totalDigits = this.primitiveLongUtil.getCurrentTotalDigits()

method reduce*(this: HudTimer, value: int32) {.base.} =
        this.modifier = this.modifier -% int64(value)

method add*(this: HudTimer, value: int32) {.base.} =
        this.modifier = this.modifier +% int64(value)

method getTimeChars*(this: HudTimer): JArray[uint16] {.base, discardable.} =
        return this.hundrethsString

method getCurrentTotalDigits*(this: HudTimer): int32 {.base, discardable.} =
        return this.totalDigits

