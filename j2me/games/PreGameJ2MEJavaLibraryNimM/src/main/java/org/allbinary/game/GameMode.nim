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
# package org.allbinary.game

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GameMode* = ref object of JObject
        name*: string

proc newGameMode*(name: string): GameMode
proc initGameMode*(this: GameMode, name: string)
method setName*(this: GameMode, name: string) {.base.}
method getName*(this: GameMode): string {.base, discardable.}
method toString*(this: GameMode): string {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var GameMode_NONEValue: GameMode
var GameMode_NONESet = false
proc NONE*(t: typedesc[GameMode]): GameMode =
    if not GameMode_NONESet:
        GameMode_NONESet = true
        GameMode_NONEValue = newGameMode(StringUtil.getInstance().NULL_STRING)
    GameMode_NONEValue
proc `NONE=`*(t: typedesc[GameMode], value: GameMode) =
    GameMode_NONESet = true
    GameMode_NONEValue = value
var GameMode_SERVERValue: GameMode
var GameMode_SERVERSet = false
proc SERVER*(t: typedesc[GameMode]): GameMode =
    if not GameMode_SERVERSet:
        GameMode_SERVERSet = true
        GameMode_SERVERValue = newGameMode("Server")
    GameMode_SERVERValue
proc `SERVER=`*(t: typedesc[GameMode], value: GameMode) =
    GameMode_SERVERSet = true
    GameMode_SERVERValue = value
var GameMode_CLIENTValue: GameMode
var GameMode_CLIENTSet = false
proc CLIENT*(t: typedesc[GameMode]): GameMode =
    if not GameMode_CLIENTSet:
        GameMode_CLIENTSet = true
        GameMode_CLIENTValue = newGameMode("Client")
    GameMode_CLIENTValue
proc `CLIENT=`*(t: typedesc[GameMode], value: GameMode) =
    GameMode_CLIENTSet = true
    GameMode_CLIENTValue = value

# Java field initializers run after the base initializer
proc initFieldsGameMode(this: GameMode) =
    this.name = StringUtil.getInstance().EMPTY_STRING
    discard

proc initGameMode*(this: GameMode, name: string) =
        this.initFieldsGameMode()
        this.setName(name)

proc newGameMode*(name: string): GameMode =
    result = GameMode()
    initGameMode(result, name)

method setName*(this: GameMode, name: string) {.base.} =
        this.name = name

method getName*(this: GameMode): string {.base, discardable.} =
        return this.name

method toString*(this: GameMode): string {.discardable.} =
        return this.getName()

