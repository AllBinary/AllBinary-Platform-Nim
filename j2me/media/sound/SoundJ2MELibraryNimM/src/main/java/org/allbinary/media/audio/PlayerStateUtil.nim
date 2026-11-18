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
# package org.allbinary.media.audio

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    PlayerStateUtil* = ref object of JObject
        commonStrings*: CommonStrings
        UNREALIZED*: string
        REALIZED*: string
        PREFETCHED*: string
        STARTED*: string
        CLOSED*: string

proc newPlayerStateUtil*(): PlayerStateUtil
proc getInstance*(t: typedesc[PlayerStateUtil]): PlayerStateUtil {.discardable.}
method convert*(this: PlayerStateUtil, state: int32): string {.base, discardable.}
import javax/microedition/media/Player as PlayerModule
export PlayerModule

var PlayerStateUtil_instanceValue: PlayerStateUtil
var PlayerStateUtil_instanceSet = false
proc instance*(t: typedesc[PlayerStateUtil]): PlayerStateUtil =
    if not PlayerStateUtil_instanceSet:
        PlayerStateUtil_instanceSet = true
        PlayerStateUtil_instanceValue = newPlayerStateUtil()
    PlayerStateUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPlayerStateUtil(this: PlayerStateUtil) =
    this.commonStrings = CommonStrings.getInstance()
    this.UNREALIZED = "UNREALIZED"
    this.REALIZED = "REALIZED"
    this.PREFETCHED = "PREFETCHED"
    this.STARTED = "STARTED"
    this.CLOSED = "CLOSED"
    discard

proc initPlayerStateUtil*(this: PlayerStateUtil) =
    this.initFieldsPlayerStateUtil()

proc newPlayerStateUtil*(): PlayerStateUtil =
    result = PlayerStateUtil()
    initPlayerStateUtil(result)

proc getInstance*(t: typedesc[PlayerStateUtil]): PlayerStateUtil {.discardable.} =
        return PlayerStateUtil.instance

method convert*(this: PlayerStateUtil, state: int32): string {.base, discardable.} =
        if state == Player.UNREALIZED:
            return this.UNREALIZED
        elif state == Player.REALIZED:
            return this.REALIZED
        elif state == Player.PREFETCHED:
            return this.PREFETCHED
        elif state == Player.STARTED:
            return this.STARTED
        elif state == Player.CLOSED:
            return this.CLOSED
        return this.commonStrings.UNKNOWN

