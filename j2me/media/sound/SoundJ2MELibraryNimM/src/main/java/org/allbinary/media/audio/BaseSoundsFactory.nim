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
import org/allbinary/media/audio/SoundsFactoryInterface as SoundsFactoryInterfaceModule
export SoundsFactoryInterfaceModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule

type
    BaseSoundsFactory* = ref object of SoundsFactoryInterface
        initialized*: bool

proc newBaseSoundsFactory*(): BaseSoundsFactory
method init*(this: BaseSoundsFactory)
method getSoundInterfaceArray*(this: BaseSoundsFactory): JArray[Sound] {.discardable.}
method setInitialized*(this: BaseSoundsFactory, initialized: bool)
method isInitialized*(this: BaseSoundsFactory): bool {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsBaseSoundsFactory(this: BaseSoundsFactory) =
    this.initialized = false
    discard

proc initBaseSoundsFactory*(this: BaseSoundsFactory) =
    this.initFieldsBaseSoundsFactory()

proc newBaseSoundsFactory*(): BaseSoundsFactory =
    result = BaseSoundsFactory()
    initBaseSoundsFactory(result)

method init*(this: BaseSoundsFactory) =
        discard

method getSoundInterfaceArray*(this: BaseSoundsFactory): JArray[Sound] {.discardable.} =
        return newJArray[Sound](0, default(Sound))

method setInitialized*(this: BaseSoundsFactory, initialized: bool) =
        this.initialized = initialized

method isInitialized*(this: BaseSoundsFactory): bool {.discardable.} =
        return this.initialized

