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
    GameYouLoseSound* = ref object of CompositeSound

proc newGameYouLoseSound*(): GameYouLoseSound
proc initGameYouLoseSound*(this: GameYouLoseSound)
proc getInstance*(t: typedesc[GameYouLoseSound]): Sound {.discardable.}

var GameYouLoseSound_soundInterfaceValue: Sound
var GameYouLoseSound_soundInterfaceSet = false
proc soundInterface*(t: typedesc[GameYouLoseSound]): Sound =
    if not GameYouLoseSound_soundInterfaceSet:
        GameYouLoseSound_soundInterfaceSet = true
        GameYouLoseSound_soundInterfaceValue = newGameYouLoseSound()
    GameYouLoseSound_soundInterfaceValue
proc `soundInterface=`*(t: typedesc[GameYouLoseSound], value: Sound) =
    GameYouLoseSound_soundInterfaceSet = true
    GameYouLoseSound_soundInterfaceValue = value

proc initGameYouLoseSound*(this: GameYouLoseSound) =
        initCompositeSound(this, "resource:/wav/youlose.wav")

proc newGameYouLoseSound*(): GameYouLoseSound =
    result = GameYouLoseSound()
    initGameYouLoseSound(result)

proc getInstance*(t: typedesc[GameYouLoseSound]): Sound {.discardable.} =
        return GameYouLoseSound.soundInterface

when declared(newGameYouLoseSoundHook0):
    newGameYouLoseSoundHook0 = proc (): CompositeSound = newGameYouLoseSound()

