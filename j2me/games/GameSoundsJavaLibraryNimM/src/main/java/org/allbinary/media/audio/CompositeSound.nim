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
    CompositeSound* = ref object of Sound

proc newCompositeSound*(resource: string): CompositeSound
proc initCompositeSound*(this: CompositeSound, resource: string)
method init*(this: CompositeSound)
import org/allbinary/media/audio/PlayerComposite as PlayerCompositeModule
export PlayerCompositeModule
import org/allbinary/media/audio/AllBinaryMediaManager as AllBinaryMediaManagerModule
export AllBinaryMediaManagerModule


proc initCompositeSound*(this: CompositeSound, resource: string) =
        initSound(this, resource)

proc newCompositeSound*(resource: string): CompositeSound =
    result = CompositeSound()
    initCompositeSound(result, resource)

method init*(this: CompositeSound) =
        this.setPlayerP(newPlayerComposite(AllBinaryMediaManager.createPlayer(this.getResource()), 570))

when declared(newCompositeSoundHook1):
    newCompositeSoundHook1 = proc (resource: string): Sound = newCompositeSound(resource)

