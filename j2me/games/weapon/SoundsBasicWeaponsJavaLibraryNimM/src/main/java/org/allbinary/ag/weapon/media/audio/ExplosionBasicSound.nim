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
    ExplosionBasicSound* = ref object of CompositeSound

proc newExplosionBasicSound*(): ExplosionBasicSound
proc initExplosionBasicSound*(this: ExplosionBasicSound)
proc getInstance*(t: typedesc[ExplosionBasicSound]): Sound {.discardable.}

var ExplosionBasicSound_soundInterfaceValue: Sound
var ExplosionBasicSound_soundInterfaceSet = false
proc soundInterface*(t: typedesc[ExplosionBasicSound]): Sound =
    if not ExplosionBasicSound_soundInterfaceSet:
        ExplosionBasicSound_soundInterfaceSet = true
        ExplosionBasicSound_soundInterfaceValue = newExplosionBasicSound()
    ExplosionBasicSound_soundInterfaceValue
proc `soundInterface=`*(t: typedesc[ExplosionBasicSound], value: Sound) =
    ExplosionBasicSound_soundInterfaceSet = true
    ExplosionBasicSound_soundInterfaceValue = value

proc initExplosionBasicSound*(this: ExplosionBasicSound) =
        initCompositeSound(this, "resource:/wav/explosion.wav")

proc newExplosionBasicSound*(): ExplosionBasicSound =
    result = ExplosionBasicSound()
    initExplosionBasicSound(result)

proc getInstance*(t: typedesc[ExplosionBasicSound]): Sound {.discardable.} =
        return ExplosionBasicSound.soundInterface

when declared(newExplosionBasicSoundHook0):
    newExplosionBasicSoundHook0 = proc (): CompositeSound = newExplosionBasicSound()

