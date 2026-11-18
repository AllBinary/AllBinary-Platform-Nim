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
import javax/microedition/media/Control as ControlModule
export ControlModule
import javax/microedition/media/Controllable as ControllableModule
export ControllableModule
import javax/microedition/media/Player as PlayerModule
export PlayerModule
import javax/microedition/media/PlayerListener as PlayerListenerModule
export PlayerListenerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

#BasicPlayer
type
    PlayerComposite* = ref object of Controllable
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        player*: Player
        timeElapsedHelper*: TimeDelayHelper
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper

converter jAsPlayer*(value: PlayerComposite): Player = cast[Player](value)
proc newPlayerComposite*(player: Player, repeatTime: int32): PlayerComposite
proc initPlayerComposite*(this: PlayerComposite, player: Player, repeatTime: int32)
method addPlayerListener*(this: PlayerComposite, playerListener: PlayerListener)
method removePlayerListener*(this: PlayerComposite, playerListener: PlayerListener)
method close*(this: PlayerComposite)
method deallocate*(this: PlayerComposite)
method getContentType*(this: PlayerComposite): string {.discardable.}
method getDuration*(this: PlayerComposite): int64 {.discardable.}
method getMediaTime*(this: PlayerComposite): int64 {.discardable.}
method prefetch*(this: PlayerComposite)
method realize*(this: PlayerComposite)
method getState*(this: PlayerComposite): int32 {.discardable.}
method setLoopCount*(this: PlayerComposite, count: int32)
method setMediaTime*(this: PlayerComposite, now: int64): int64 {.discardable.}
method start*(this: PlayerComposite)
method stop*(this: PlayerComposite)
method getControl*(this: PlayerComposite, controlType: string): Control {.discardable.}
method getControls*(this: PlayerComposite): JArray[Control] {.discardable.}
method setVolume*(this: PlayerComposite, leftVolume: int32, rightVolume: int32) {.base.}
method getPlayerP*(this: PlayerComposite): Player {.base, discardable.}
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule
import org/allbinary/media/audio/Controllable2 as Controllable2Module
export Controllable2Module


# Java field initializers run after the base initializer
proc initFieldsPlayerComposite(this: PlayerComposite) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    this.timeElapsedHelper = newTimeDelayHelper(0)
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    discard

proc initPlayerComposite*(this: PlayerComposite, player: Player, repeatTime: int32) =
        this.initFieldsPlayerComposite()
        this.player = player
        this.timeElapsedHelper.delay = repeatTime

proc newPlayerComposite*(player: Player, repeatTime: int32): PlayerComposite =
    result = PlayerComposite()
    initPlayerComposite(result, player, repeatTime)

method addPlayerListener*(this: PlayerComposite, playerListener: PlayerListener) =
        this.player.addPlayerListener(playerListener)

method removePlayerListener*(this: PlayerComposite, playerListener: PlayerListener) =
        this.player.removePlayerListener(playerListener)

method close*(this: PlayerComposite) =
        this.player.close()

method deallocate*(this: PlayerComposite) =
        this.player.deallocate()

method getContentType*(this: PlayerComposite): string {.discardable.} =
        return this.player.getContentType()

method getDuration*(this: PlayerComposite): int64 {.discardable.} =
        return this.player.getDuration()

method getMediaTime*(this: PlayerComposite): int64 {.discardable.} =
        return this.player.getMediaTime()

method prefetch*(this: PlayerComposite) =
        try:
            this.player.prefetch()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "prefetch", e)

method realize*(this: PlayerComposite) =
        try:
            this.player.realize()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "realize", e)

method getState*(this: PlayerComposite): int32 {.discardable.} =
        return this.player.getState()

method setLoopCount*(this: PlayerComposite, count: int32) =
        this.player.setLoopCount(count)

method setMediaTime*(this: PlayerComposite, now: int64): int64 {.discardable.} =
        try:
            return this.player.setMediaTime(now)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "setMediaTime", e)
            return int64(-1)

method start*(this: PlayerComposite) =
        try:
            if this.timeElapsedHelper.isTime(this.gameTickTimeDelayHelper.startTime):
                this.player.start()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.START_METHOD_NAME, e)

method stop*(this: PlayerComposite) =
        try:
            this.player.stop()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "stop", e)

method getControl*(this: PlayerComposite, controlType: string): Control {.discardable.} =
        return this.player.getControl(controlType)

method getControls*(this: PlayerComposite): JArray[Control] {.discardable.} =
        raise newJException("RuntimeException", "")

method setVolume*(this: PlayerComposite, leftVolume: int32, rightVolume: int32) {.base.} =
        let controllable2: Controllable2 = (Controllable2(JObject(this.player)))
        controllable2.setVolume(leftVolume, rightVolume)

method getPlayerP*(this: PlayerComposite): Player {.base, discardable.} =
        return this.player

