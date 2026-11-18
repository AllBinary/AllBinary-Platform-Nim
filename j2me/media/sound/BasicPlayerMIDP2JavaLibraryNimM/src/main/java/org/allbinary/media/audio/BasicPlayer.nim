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
import javax/microedition/media/Player as PlayerModule
export PlayerModule
import javax/microedition/media/PlayerListener as PlayerListenerModule
export PlayerListenerModule
import javax/microedition/media/TimeBase as TimeBaseModule
export TimeBaseModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/media/audio/TimeBaseInterface as TimeBaseInterfaceModule
export TimeBaseInterfaceModule
import org/allbinary/media/audio/Controllable2 as Controllable2Module
export Controllable2Module

#BasicPlayerMIDP2JavaLibrary
type
    BasicPlayer* = ref object of Player
        listenersList*: BasicArrayList
        timeBase*: TimeBase
        stateP*: int32
        loopCountP*: int32

converter jAsTimeBaseInterface*(value: BasicPlayer): TimeBaseInterface = cast[TimeBaseInterface](value)
converter jAsControllable2*(value: BasicPlayer): Controllable2 = cast[Controllable2](value)
proc newBasicPlayer*(): BasicPlayer
proc initBasicPlayer*(this: BasicPlayer)
method getContentType*(this: BasicPlayer): string {.discardable.}
method getControl*(this: BasicPlayer, controlType: string): Control {.discardable.}
method getControls*(this: BasicPlayer): JArray[Control] {.discardable.}
method close*(this: BasicPlayer)
method addPlayerListener*(this: BasicPlayer, playerListener: PlayerListener)
method removePlayerListener*(this: BasicPlayer, playerListener: PlayerListener)
method getState*(this: BasicPlayer): int32 {.discardable.}
method setState*(this: BasicPlayer, state: int32) {.base.}
method getDuration*(this: BasicPlayer): int64 {.discardable.}
method getMediaTime*(this: BasicPlayer): int64 {.discardable.}
method getTimeBase*(this: BasicPlayer): TimeBase {.base, discardable.}
method setTimeBase*(this: BasicPlayer, timeBase: TimeBase) {.base.}
method deallocate*(this: BasicPlayer)
method prefetch*(this: BasicPlayer)
method realize*(this: BasicPlayer)
method setLoopCount*(this: BasicPlayer, count: int32)
method getLoopCount*(this: BasicPlayer): int32 {.base, discardable.}
method setMediaTime*(this: BasicPlayer, now: int64): int64 {.discardable.}
method start*(this: BasicPlayer)
method stop*(this: BasicPlayer)
method setVolume*(this: BasicPlayer, leftVolume: int32, rightVolume: int32) {.base.}
import javax/microedition/media/MediaException as MediaExceptionModule
export MediaExceptionModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/media/audio/NullControl as NullControlModule
export NullControlModule

var BasicPlayer_CONTROL_TYPEValue: string
var BasicPlayer_CONTROL_TYPESet = false
proc CONTROL_TYPE*(t: typedesc[BasicPlayer]): string =
    if not BasicPlayer_CONTROL_TYPESet:
        BasicPlayer_CONTROL_TYPESet = true
        BasicPlayer_CONTROL_TYPEValue = "ToneControl"
    BasicPlayer_CONTROL_TYPEValue
proc `CONTROL_TYPE=`*(t: typedesc[BasicPlayer], value: string) =
    BasicPlayer_CONTROL_TYPESet = true
    BasicPlayer_CONTROL_TYPEValue = value

# Java field initializers run after the base initializer
proc initFieldsBasicPlayer(this: BasicPlayer) =
    this.listenersList = newBasicArrayListD()
    
    this.stateP = 0
    this.loopCountP = 0
    discard

proc initBasicPlayer*(this: BasicPlayer) =
        this.initFieldsBasicPlayer()
        this.setLoopCount(0)
        this.setState(Player.UNREALIZED)

proc newBasicPlayer*(): BasicPlayer =
    result = BasicPlayer()
    initBasicPlayer(result)

method getContentType*(this: BasicPlayer): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method getControl*(this: BasicPlayer, controlType: string): Control {.discardable.} =
        return newNullControl()

method getControls*(this: BasicPlayer): JArray[Control] {.discardable.} =
        return newJArray[Control](0, default(Control))

method close*(this: BasicPlayer) =
        discard

method addPlayerListener*(this: BasicPlayer, playerListener: PlayerListener) =
        if (not this.listenersList.contains(playerListener)):
            this.listenersList.add(playerListener)

method removePlayerListener*(this: BasicPlayer, playerListener: PlayerListener) =
        this.listenersList.remove(playerListener)

method getState*(this: BasicPlayer): int32 {.discardable.} =
        return this.stateP

method setState*(this: BasicPlayer, state: int32) {.base.} =
        this.stateP = state

method getDuration*(this: BasicPlayer): int64 {.discardable.} =
        return 0'i64

method getMediaTime*(this: BasicPlayer): int64 {.discardable.} =
        return 0'i64

method getTimeBase*(this: BasicPlayer): TimeBase {.base, discardable.} =
        return this.timeBase

method setTimeBase*(this: BasicPlayer, timeBase: TimeBase) {.base.} =
        this.timeBase = timeBase

method deallocate*(this: BasicPlayer) =
        discard

method prefetch*(this: BasicPlayer) =
        discard

method realize*(this: BasicPlayer) =
        discard

method setLoopCount*(this: BasicPlayer, count: int32) =
        this.loopCountP = count

method getLoopCount*(this: BasicPlayer): int32 {.base, discardable.} =
        return this.loopCountP

method setMediaTime*(this: BasicPlayer, now: int64): int64 {.discardable.} =
        return 0'i64

method start*(this: BasicPlayer) =
        this.setState(Player.STARTED)

method stop*(this: BasicPlayer) =
        this.setState(Player.PREFETCHED)

method setVolume*(this: BasicPlayer, leftVolume: int32, rightVolume: int32) {.base.} =
        discard

