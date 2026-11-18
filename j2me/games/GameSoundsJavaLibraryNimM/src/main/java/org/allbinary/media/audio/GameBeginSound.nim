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
    GameBeginSound* = ref object of CompositeSound

proc newGameBeginSound*(): GameBeginSound
proc initGameBeginSound*(this: GameBeginSound)
proc getInstance*(t: typedesc[GameBeginSound]): Sound {.discardable.}

var GameBeginSound_soundInterfaceValue: Sound
var GameBeginSound_soundInterfaceSet = false
proc soundInterface*(t: typedesc[GameBeginSound]): Sound =
    if not GameBeginSound_soundInterfaceSet:
        GameBeginSound_soundInterfaceSet = true
        GameBeginSound_soundInterfaceValue = newGameBeginSound()
    GameBeginSound_soundInterfaceValue
proc `soundInterface=`*(t: typedesc[GameBeginSound], value: Sound) =
    GameBeginSound_soundInterfaceSet = true
    GameBeginSound_soundInterfaceValue = value

proc initGameBeginSound*(this: GameBeginSound) =
        initCompositeSound(this, "resource:/wav/begin.wav")

proc newGameBeginSound*(): GameBeginSound =
    result = GameBeginSound()
    initGameBeginSound(result)

proc getInstance*(t: typedesc[GameBeginSound]): Sound {.discardable.} =
        return GameBeginSound.soundInterface

when declared(newGameBeginSoundHook0):
    newGameBeginSoundHook0 = proc (): CompositeSound = newGameBeginSound()

