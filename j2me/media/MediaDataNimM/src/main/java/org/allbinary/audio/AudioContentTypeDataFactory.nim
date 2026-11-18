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
# package org.allbinary.audio

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/audio/AudioContentTypeData as AudioContentTypeDataModule
export AudioContentTypeDataModule

type
    AudioContentTypeDataFactory* = ref object of JObject
        MIME_AUDIO_TONE*: AudioContentTypeData
        MIME_AUDIO_AMR*: AudioContentTypeData
        MIME_AUDIO_AMR_WB*: AudioContentTypeData
        MIME_AUDIO_WAV*: AudioContentTypeData
        MIME_AUDIO_MIDI*: AudioContentTypeData
        MIME_AUDIO_SP_MIDI*: AudioContentTypeData

proc newAudioContentTypeDataFactory*(): AudioContentTypeDataFactory
proc initAudioContentTypeDataFactory*(this: AudioContentTypeDataFactory)
proc getInstance*(t: typedesc[AudioContentTypeDataFactory]): AudioContentTypeDataFactory {.discardable.}

var AudioContentTypeDataFactory_instanceValue: AudioContentTypeDataFactory
var AudioContentTypeDataFactory_instanceSet = false
proc instance*(t: typedesc[AudioContentTypeDataFactory]): AudioContentTypeDataFactory =
    if not AudioContentTypeDataFactory_instanceSet:
        AudioContentTypeDataFactory_instanceSet = true
        AudioContentTypeDataFactory_instanceValue = newAudioContentTypeDataFactory()
    AudioContentTypeDataFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAudioContentTypeDataFactory(this: AudioContentTypeDataFactory) =
    this.MIME_AUDIO_TONE = newAudioContentTypeData("audio/x-tone-seq")
    this.MIME_AUDIO_AMR = newAudioContentTypeData("audio/amr")
    this.MIME_AUDIO_AMR_WB = newAudioContentTypeData("audio/amr-wb")
    this.MIME_AUDIO_WAV = newAudioContentTypeData("audio/x-wav")
    this.MIME_AUDIO_MIDI = newAudioContentTypeData("audio/midi")
    this.MIME_AUDIO_SP_MIDI = newAudioContentTypeData("audio/sp-midi")
    discard

proc getInstance*(t: typedesc[AudioContentTypeDataFactory]): AudioContentTypeDataFactory {.discardable.} =
        return AudioContentTypeDataFactory.instance

proc initAudioContentTypeDataFactory*(this: AudioContentTypeDataFactory) =
        this.initFieldsAudioContentTypeDataFactory()
        discard

proc newAudioContentTypeDataFactory*(): AudioContentTypeDataFactory =
    result = AudioContentTypeDataFactory()
    initAudioContentTypeDataFactory(result)

