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
import java/lang/Runnable as RunnableModule
export RunnableModule
import javax/microedition/media/Player as PlayerModule
export PlayerModule
import org/allbinary/media/audio/SoundInterface as SoundInterfaceModule
export SoundInterfaceModule

type
    Sound* = ref object of SoundInterface
        resource*: string
        player*: Player

proc newSound*(resource: string): Sound
proc initSound*(this: Sound, resource: string)
method getResource*(this: Sound): string {.discardable.}
method getPlayerP*(this: Sound): Player {.discardable.}
method setPlayerP*(this: Sound, player: Player) {.base.}
method init*(this: Sound)
method getDuration*(this: Sound): int32 {.base, discardable.}
method run*(this: Sound)
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/media/audio/NoPlayer as NoPlayerModule
export NoPlayerModule


# Java field initializers run after the base initializer
proc initFieldsSound(this: Sound) =
    
    this.player = NoPlayer.NO_PLAYERStatic
    discard

proc initSound*(this: Sound, resource: string) =
        this.initFieldsSound()
        this.resource = resource

proc newSound*(resource: string): Sound =
    result = Sound()
    initSound(result, resource)

method getResource*(this: Sound): string {.discardable.} =
        return this.resource

method getPlayerP*(this: Sound): Player {.discardable.} =
        return this.player

method setPlayerP*(this: Sound, player: Player) {.base.} =
        this.player = player

method init*(this: Sound) =
        discard

method getDuration*(this: Sound): int32 {.base, discardable.} =
        return -1

method run*(this: Sound) =
        try:
            this.player.start()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            PreLogUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN)

