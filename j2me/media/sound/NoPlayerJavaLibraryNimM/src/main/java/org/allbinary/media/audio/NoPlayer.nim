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
import org/allbinary/media/audio/BasicPlayer as BasicPlayerModule
export BasicPlayerModule

type
    NoPlayer* = ref object of BasicPlayer

proc newNoPlayer*(): NoPlayer
proc initNoPlayer*(this: NoPlayer)
method close*(this: NoPlayer)
method getContentType*(this: NoPlayer): string {.discardable.}
method getControl*(this: NoPlayer, controlType: string): Control {.discardable.}
method getControls*(this: NoPlayer): JArray[Control] {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/media/audio/NullControl as NullControlModule
export NullControlModule

var NoPlayer_NO_PLAYERValue: NoPlayer
var NoPlayer_NO_PLAYERSet = false
proc NO_PLAYERStatic*(t: typedesc[NoPlayer]): NoPlayer =
    if not NoPlayer_NO_PLAYERSet:
        NoPlayer_NO_PLAYERSet = true
        NoPlayer_NO_PLAYERValue = newNoPlayer()
    NoPlayer_NO_PLAYERValue

proc initNoPlayer*(this: NoPlayer) =
        initBasicPlayer(this)
        discard

proc newNoPlayer*(): NoPlayer =
    result = NoPlayer()
    initNoPlayer(result)

method close*(this: NoPlayer) =
        discard

method getContentType*(this: NoPlayer): string {.discardable.} =
        return StringUtil.getInstance().NULL_STRING

method getControl*(this: NoPlayer, controlType: string): Control {.discardable.} =
        return newNullControl()

method getControls*(this: NoPlayer): JArray[Control] {.discardable.} =
        return newJArray[Control](0, default(Control))

when declared(newNoPlayerHook0):
    newNoPlayerHook0 = proc (): BasicPlayer = newNoPlayer()

