#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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

type
    SoundStrings* = ref object of JObject
        STOP_ALL*: string
        CLOSE_ALL*: string
        SOUND*: string
        INIT_SOUND*: string
        STOPPING_SOUND*: string
        CLOSING_SOUND*: string

proc newSoundStrings*(): SoundStrings
proc getInstance*(t: typedesc[SoundStrings]): SoundStrings {.discardable.}

var SoundStrings_instanceValue: SoundStrings
var SoundStrings_instanceSet = false
proc instance*(t: typedesc[SoundStrings]): SoundStrings =
    if not SoundStrings_instanceSet:
        SoundStrings_instanceSet = true
        SoundStrings_instanceValue = newSoundStrings()
    SoundStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSoundStrings(this: SoundStrings) =
    this.STOP_ALL = "stopAll"
    this.CLOSE_ALL = "closeAll"
    this.SOUND = " Sound: "
    this.INIT_SOUND = "Initializing Sound: "
    this.STOPPING_SOUND = "Stopping Sound: "
    this.CLOSING_SOUND = "Closing Sound: "
    discard

proc initSoundStrings*(this: SoundStrings) =
    this.initFieldsSoundStrings()

proc newSoundStrings*(): SoundStrings =
    result = SoundStrings()
    initSoundStrings(result)

proc getInstance*(t: typedesc[SoundStrings]): SoundStrings {.discardable.} =
        return SoundStrings.instance

