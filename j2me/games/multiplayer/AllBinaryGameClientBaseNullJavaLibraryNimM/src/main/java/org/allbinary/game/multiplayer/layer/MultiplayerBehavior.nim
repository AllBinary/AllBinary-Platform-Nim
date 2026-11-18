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
# package org.allbinary.game.multiplayer.layer

{.warning[UnusedImport]: off.}
import allbinary_java

type
    MultiplayerBehavior* = ref object of JObject

proc newMultiplayerBehavior*(username: string): MultiplayerBehavior
proc initMultiplayerBehavior*(this: MultiplayerBehavior, username: string)
method startTick*(this: MultiplayerBehavior) {.base.}
method endTick*(this: MultiplayerBehavior) {.base.}
method getApproximateElapsed*(this: MultiplayerBehavior): int64 {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORValue: MultiplayerBehavior
var MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORSet = false
proc NULL_MULTIPLAYER_BEHAVIOR*(t: typedesc[MultiplayerBehavior]): MultiplayerBehavior =
    if not MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORSet:
        MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORSet = true
        MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORValue = newMultiplayerBehavior(StringUtil.getInstance().EMPTY_STRING)
    MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORValue

proc initMultiplayerBehavior*(this: MultiplayerBehavior, username: string) =
        discard
        discard

proc newMultiplayerBehavior*(username: string): MultiplayerBehavior =
    result = MultiplayerBehavior()
    initMultiplayerBehavior(result, username)

method startTick*(this: MultiplayerBehavior) {.base.} =
        discard

method endTick*(this: MultiplayerBehavior) {.base.} =
        discard

method getApproximateElapsed*(this: MultiplayerBehavior): int64 {.base, discardable.} =
        return 0'i64

