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
import org/allbinary/media/audio/BaseSoundsFactory as BaseSoundsFactoryModule
export BaseSoundsFactoryModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule

type
    EarlySoundsFactory* = ref object of BaseSoundsFactory

proc newEarlySoundsFactory*(): EarlySoundsFactory
method getSoundInterfaceArray*(this: EarlySoundsFactory): JArray[Sound] {.discardable.}
proc getInstance*(t: typedesc[EarlySoundsFactory]): EarlySoundsFactory {.discardable.}
import org/allbinary/media/audio/SelectSound as SelectSoundModule
export SelectSoundModule
import org/allbinary/media/audio/ErrorSound as ErrorSoundModule
export ErrorSoundModule

var EarlySoundsFactory_instanceValue: EarlySoundsFactory
var EarlySoundsFactory_instanceSet = false
proc instance*(t: typedesc[EarlySoundsFactory]): EarlySoundsFactory =
    if not EarlySoundsFactory_instanceSet:
        EarlySoundsFactory_instanceSet = true
        EarlySoundsFactory_instanceValue = newEarlySoundsFactory()
    EarlySoundsFactory_instanceValue

proc initEarlySoundsFactory*(this: EarlySoundsFactory) =
    initBaseSoundsFactory(this)

proc newEarlySoundsFactory*(): EarlySoundsFactory =
    result = EarlySoundsFactory()
    initEarlySoundsFactory(result)

method getSoundInterfaceArray*(this: EarlySoundsFactory): JArray[Sound] {.discardable.} =
        var soundInterfaceArray: JArray[Sound] = newJArray[Sound](2, default(Sound))
        var index: int32 = 0
        soundInterfaceArray[jPostIncrement(index)] = SelectSound.getInstance()
        soundInterfaceArray[jPostIncrement(index)] = ErrorSound.getInstance()
        return soundInterfaceArray

proc getInstance*(t: typedesc[EarlySoundsFactory]): EarlySoundsFactory {.discardable.} =
        return EarlySoundsFactory.instance

when declared(newEarlySoundsFactoryHook0):
    newEarlySoundsFactoryHook0 = proc (): BaseSoundsFactory = newEarlySoundsFactory()

