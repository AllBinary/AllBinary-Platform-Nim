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
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule

type
    PlayerQueue* = ref object of JObject
        commonStrings*: CommonStrings
        list*: BasicArrayList
        max*: int32

proc newPlayerQueue*(max: int32): PlayerQueue
proc initPlayerQueue*(this: PlayerQueue, max: int32)
method add*(this: PlayerQueue, sound: Sound) {.base.}
method process*(this: PlayerQueue): bool {.base, discardable.}
method clear*(this: PlayerQueue) {.base.}
method toString*(this: PlayerQueue): string {.discardable.}
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/media/audio/NoSound as NoSoundModule
export NoSoundModule

var PlayerQueue_TOTALValue: string
var PlayerQueue_TOTALSet = false
proc TOTAL*(t: typedesc[PlayerQueue]): string =
    if not PlayerQueue_TOTALSet:
        PlayerQueue_TOTALSet = true
        PlayerQueue_TOTALValue = "Sounds In Queue: "
    PlayerQueue_TOTALValue

# Java field initializers run after the base initializer
proc initFieldsPlayerQueue(this: PlayerQueue) =
    this.commonStrings = CommonStrings.getInstance()
    this.list = newBasicArrayListD()
    
    discard

proc initPlayerQueue*(this: PlayerQueue, max: int32) =
        this.initFieldsPlayerQueue()
        this.max = max

proc newPlayerQueue*(max: int32): PlayerQueue =
    result = PlayerQueue()
    initPlayerQueue(result, max)

method add*(this: PlayerQueue, sound: Sound) {.base.} =
        try:
            if (not this.list.contains(sound)):
                this.list.add(sound)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD)

method process*(this: PlayerQueue): bool {.base, discardable.} =
        var sound: Sound = NoSound.getInstance()
        try:
            var played: bool = false
            if this.list.size() > 0:
                sound = Sound(JObject(this.list.removeAt(0)))
                if (not jIsNil(sound)):
                    sound.getPlayerP().start()
                while this.list.size() > this.max:
                    this.list.removeAt(0)
                played = true
            return played
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            var resource: string = StringUtil.getInstance().EMPTY_STRING
            if (not jIsNil(sound)):
                resource = sound.getResource()
            PreLogUtil.put(newStringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(resource).toString(), this, this.commonStrings.PROCESS)
            return false

method clear*(this: PlayerQueue) {.base.} =
        this.list.clear()

method toString*(this: PlayerQueue): string {.discardable.} =
        return newStringMaker().append(PlayerQueue.TOTAL).appendint(this.list.size()).toString()

