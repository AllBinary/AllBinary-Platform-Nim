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
    FireworksSound* = ref object of CompositeSound

proc newFireworksSound*(): FireworksSound
proc initFireworksSound*(this: FireworksSound)
proc getInstance*(t: typedesc[FireworksSound]): Sound {.discardable.}

var FireworksSound_soundInterfaceValue: Sound
var FireworksSound_soundInterfaceSet = false
proc soundInterface*(t: typedesc[FireworksSound]): Sound =
    if not FireworksSound_soundInterfaceSet:
        FireworksSound_soundInterfaceSet = true
        FireworksSound_soundInterfaceValue = newFireworksSound()
    FireworksSound_soundInterfaceValue
proc `soundInterface=`*(t: typedesc[FireworksSound], value: Sound) =
    FireworksSound_soundInterfaceSet = true
    FireworksSound_soundInterfaceValue = value

proc initFireworksSound*(this: FireworksSound) =
        initCompositeSound(this, "resource:/wav/fireworks.wav")

proc newFireworksSound*(): FireworksSound =
    result = FireworksSound()
    initFireworksSound(result)

proc getInstance*(t: typedesc[FireworksSound]): Sound {.discardable.} =
        return FireworksSound.soundInterface

when declared(newFireworksSoundHook0):
    newFireworksSoundHook0 = proc (): CompositeSound = newFireworksSound()

