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
# package org.allbinary.ag.weapon.media.audio

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/media/audio/CompositeSound as CompositeSoundModule
export CompositeSoundModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule

type
    DropWeaponSound* = ref object of CompositeSound

proc newDropWeaponSound*(): DropWeaponSound
proc initDropWeaponSound*(this: DropWeaponSound)
proc getInstance*(t: typedesc[DropWeaponSound]): Sound {.discardable.}

var DropWeaponSound_soundInterfaceValue: Sound
var DropWeaponSound_soundInterfaceSet = false
proc soundInterface*(t: typedesc[DropWeaponSound]): Sound =
    if not DropWeaponSound_soundInterfaceSet:
        DropWeaponSound_soundInterfaceSet = true
        DropWeaponSound_soundInterfaceValue = newDropWeaponSound()
    DropWeaponSound_soundInterfaceValue
proc `soundInterface=`*(t: typedesc[DropWeaponSound], value: Sound) =
    DropWeaponSound_soundInterfaceSet = true
    DropWeaponSound_soundInterfaceValue = value

proc initDropWeaponSound*(this: DropWeaponSound) =
        initCompositeSound(this, "resource:/wav/mine.wav")

proc newDropWeaponSound*(): DropWeaponSound =
    result = DropWeaponSound()
    initDropWeaponSound(result)

proc getInstance*(t: typedesc[DropWeaponSound]): Sound {.discardable.} =
        return DropWeaponSound.soundInterface

when declared(newDropWeaponSoundHook0):
    newDropWeaponSoundHook0 = proc (): CompositeSound = newDropWeaponSound()

