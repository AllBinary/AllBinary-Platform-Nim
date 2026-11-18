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
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule

type
    SoundsFactoryInterface* = ref object of JObject


method init*(this: SoundsFactoryInterface) {.base.} =
        raise newJException("AbstractMethodError", "init")

method getSoundInterfaceArray*(this: SoundsFactoryInterface): JArray[Sound] {.base, discardable.} =
        raise newJException("AbstractMethodError", "getSoundInterfaceArray")

method setInitialized*(this: SoundsFactoryInterface, initialized: bool) {.base.} =
        raise newJException("AbstractMethodError", "setInitialized")

method isInitialized*(this: SoundsFactoryInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isInitialized")

