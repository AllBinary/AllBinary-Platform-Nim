#[
  
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
]#
# Generated Code Do Not Modify
# package org.allbinary.game.multiplayer.layer

{.warning[UnusedImport]: off.}
import allbinary_java

type
    RemoteInfo* = ref object of JObject

proc newRemoteInfo*(username: string, actorSessionId: int32, playerInputId: int32, id: int32): RemoteInfo
proc initRemoteInfo*(this: RemoteInfo, username: string, actorSessionId: int32, playerInputId: int32, id: int32)
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var RemoteInfo_NEW_PLAYER_IDValue: int32
var RemoteInfo_NEW_PLAYER_IDSet = false
proc NEW_PLAYER_ID*(t: typedesc[RemoteInfo]): int32 =
    if not RemoteInfo_NEW_PLAYER_IDSet:
        RemoteInfo_NEW_PLAYER_IDSet = true
        RemoteInfo_NEW_PLAYER_IDValue = 0
    RemoteInfo_NEW_PLAYER_IDValue
var RemoteInfo_REMOTE_INFOValue: RemoteInfo
var RemoteInfo_REMOTE_INFOSet = false
proc REMOTE_INFOStatic*(t: typedesc[RemoteInfo]): RemoteInfo =
    if not RemoteInfo_REMOTE_INFOSet:
        RemoteInfo_REMOTE_INFOSet = true
        RemoteInfo_REMOTE_INFOValue = newRemoteInfo(StringUtil.getInstance().EMPTY_STRING, -1, -1, RemoteInfo.NEW_PLAYER_ID)
    RemoteInfo_REMOTE_INFOValue

proc initRemoteInfo*(this: RemoteInfo, username: string, actorSessionId: int32, playerInputId: int32, id: int32) =
        discard
        discard

proc newRemoteInfo*(username: string, actorSessionId: int32, playerInputId: int32, id: int32): RemoteInfo =
    result = RemoteInfo()
    initRemoteInfo(result, username, actorSessionId, playerInputId, id)

