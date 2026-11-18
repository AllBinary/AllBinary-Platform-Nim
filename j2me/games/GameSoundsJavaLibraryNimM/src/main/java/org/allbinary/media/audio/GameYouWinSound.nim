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
    GameYouWinSound* = ref object of CompositeSound

proc newGameYouWinSound*(): GameYouWinSound
proc initGameYouWinSound*(this: GameYouWinSound)
proc getInstance*(t: typedesc[GameYouWinSound]): Sound {.discardable.}

var GameYouWinSound_soundInterfaceValue: Sound
var GameYouWinSound_soundInterfaceSet = false
proc soundInterface*(t: typedesc[GameYouWinSound]): Sound =
    if not GameYouWinSound_soundInterfaceSet:
        GameYouWinSound_soundInterfaceSet = true
        GameYouWinSound_soundInterfaceValue = newGameYouWinSound()
    GameYouWinSound_soundInterfaceValue
proc `soundInterface=`*(t: typedesc[GameYouWinSound], value: Sound) =
    GameYouWinSound_soundInterfaceSet = true
    GameYouWinSound_soundInterfaceValue = value

proc initGameYouWinSound*(this: GameYouWinSound) =
        initCompositeSound(this, "resource:/wav/youwin.wav")

proc newGameYouWinSound*(): GameYouWinSound =
    result = GameYouWinSound()
    initGameYouWinSound(result)

proc getInstance*(t: typedesc[GameYouWinSound]): Sound {.discardable.} =
        return GameYouWinSound.soundInterface

when declared(newGameYouWinSoundHook0):
    newGameYouWinSoundHook0 = proc (): CompositeSound = newGameYouWinSound()

