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
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule

type
    NoSound* = ref object of Sound

proc newNoSound*(): NoSound
proc initNoSound*(this: NoSound)
proc getInstance*(t: typedesc[NoSound]): NoSound {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/media/audio/NoPlayer as NoPlayerModule
export NoPlayerModule

var NoSound_instanceValue: NoSound
var NoSound_instanceSet = false
proc instance*(t: typedesc[NoSound]): NoSound =
    if not NoSound_instanceSet:
        NoSound_instanceSet = true
        NoSound_instanceValue = newNoSound()
    NoSound_instanceValue

proc getInstance*(t: typedesc[NoSound]): NoSound {.discardable.} =
        return NoSound.instance

proc initNoSound*(this: NoSound) =
        initSound(this, StringUtil.getInstance().EMPTY_STRING)
        this.setPlayerP(NoPlayer.NO_PLAYERStatic)

proc newNoSound*(): NoSound =
    result = NoSound()
    initNoSound(result)

when declared(newNoSoundHook0):
    newNoSoundHook0 = proc (): Sound = newNoSound()

