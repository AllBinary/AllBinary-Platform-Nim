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

#Use 8hz16bitmono for most J2ME
type
    SelectSound* = ref object of CompositeSound

proc newSelectSound*(): SelectSound
proc initSelectSound*(this: SelectSound)
proc getInstance*(t: typedesc[SelectSound]): Sound {.discardable.}

var SelectSound_soundInterfaceValue: Sound
var SelectSound_soundInterfaceSet = false
proc soundInterface*(t: typedesc[SelectSound]): Sound =
    if not SelectSound_soundInterfaceSet:
        SelectSound_soundInterfaceSet = true
        SelectSound_soundInterfaceValue = newSelectSound()
    SelectSound_soundInterfaceValue
proc `soundInterface=`*(t: typedesc[SelectSound], value: Sound) =
    SelectSound_soundInterfaceSet = true
    SelectSound_soundInterfaceValue = value

proc initSelectSound*(this: SelectSound) =
        initCompositeSound(this, "resource:/wav/select.wav")

proc newSelectSound*(): SelectSound =
    result = SelectSound()
    initSelectSound(result)

proc getInstance*(t: typedesc[SelectSound]): Sound {.discardable.} =
        return SelectSound.soundInterface

when declared(newSelectSoundHook0):
    newSelectSoundHook0 = proc (): CompositeSound = newSelectSound()

