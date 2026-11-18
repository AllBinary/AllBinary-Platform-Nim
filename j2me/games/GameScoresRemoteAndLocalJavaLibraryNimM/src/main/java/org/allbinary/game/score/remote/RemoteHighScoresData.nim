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
# package org.allbinary.game.score.remote

{.warning[UnusedImport]: off.}
import allbinary_java

type
    RemoteHighScoresData* = ref object of JObject
        HIGH_SCORES*: string
        CUSTOMER_USER_NAME*: string
        DISPLAY_NAME*: string
        SCORE*: string
        GAME_INFO*: string
        GAME_CONFIGURATION*: string

proc newRemoteHighScoresData*(): RemoteHighScoresData
proc getInstance*(t: typedesc[RemoteHighScoresData]): RemoteHighScoresData {.discardable.}

var RemoteHighScoresData_SINGLETONValue: RemoteHighScoresData
var RemoteHighScoresData_SINGLETONSet = false
proc SINGLETON*(t: typedesc[RemoteHighScoresData]): RemoteHighScoresData =
    if not RemoteHighScoresData_SINGLETONSet:
        RemoteHighScoresData_SINGLETONSet = true
        RemoteHighScoresData_SINGLETONValue = newRemoteHighScoresData()
    RemoteHighScoresData_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsRemoteHighScoresData(this: RemoteHighScoresData) =
    this.HIGH_SCORES = "HIGH_SCORES"
    this.CUSTOMER_USER_NAME = "CUSTOMER_USER_NAME"
    this.DISPLAY_NAME = "DISPLAY_NAME"
    this.SCORE = "SCORE"
    this.GAME_INFO = "GAME_INFO"
    this.GAME_CONFIGURATION = "GAME_CONFIGURATION"
    discard

proc initRemoteHighScoresData*(this: RemoteHighScoresData) =
    this.initFieldsRemoteHighScoresData()

proc newRemoteHighScoresData*(): RemoteHighScoresData =
    result = RemoteHighScoresData()
    initRemoteHighScoresData(result)

proc getInstance*(t: typedesc[RemoteHighScoresData]): RemoteHighScoresData {.discardable.} =
        return RemoteHighScoresData.SINGLETON

