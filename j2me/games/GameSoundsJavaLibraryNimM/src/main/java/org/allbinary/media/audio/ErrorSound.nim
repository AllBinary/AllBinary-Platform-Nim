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
import org/allbinary/media/audio/CompositeSound as CompositeSoundModule
export CompositeSoundModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule

type
    ErrorSound* = ref object of CompositeSound

proc newErrorSound*(): ErrorSound
proc initErrorSound*(this: ErrorSound)
proc getInstance*(t: typedesc[ErrorSound]): Sound {.discardable.}

var ErrorSound_soundInterfaceValue: Sound
var ErrorSound_soundInterfaceSet = false
proc soundInterface*(t: typedesc[ErrorSound]): Sound =
    if not ErrorSound_soundInterfaceSet:
        ErrorSound_soundInterfaceSet = true
        ErrorSound_soundInterfaceValue = newErrorSound()
    ErrorSound_soundInterfaceValue
proc `soundInterface=`*(t: typedesc[ErrorSound], value: Sound) =
    ErrorSound_soundInterfaceSet = true
    ErrorSound_soundInterfaceValue = value

proc initErrorSound*(this: ErrorSound) =
        initCompositeSound(this, "resource:/wav/error.wav")

proc newErrorSound*(): ErrorSound =
    result = ErrorSound()
    initErrorSound(result)

proc getInstance*(t: typedesc[ErrorSound]): Sound {.discardable.} =
        return ErrorSound.soundInterface

when declared(newErrorSoundHook0):
    newErrorSoundHook0 = proc (): CompositeSound = newErrorSound()

