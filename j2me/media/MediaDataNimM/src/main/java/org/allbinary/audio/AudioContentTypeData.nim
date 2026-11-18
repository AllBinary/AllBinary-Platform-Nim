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

type
    AudioContentTypeData* = ref object of JObject
        name*: string

proc newAudioContentTypeData*(name: string): AudioContentTypeData
proc initAudioContentTypeData*(this: AudioContentTypeData, name: string)
method getName*(this: AudioContentTypeData): string {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsAudioContentTypeData(this: AudioContentTypeData) =
    
    discard

proc initAudioContentTypeData*(this: AudioContentTypeData, name: string) =
        this.initFieldsAudioContentTypeData()
        this.name = name

proc newAudioContentTypeData*(name: string): AudioContentTypeData =
    result = AudioContentTypeData()
    initAudioContentTypeData(result, name)

method getName*(this: AudioContentTypeData): string {.base, discardable.} =
        return this.name

