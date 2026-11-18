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
    PlayerType* = ref object of JObject
        id*: int32
        name*: string

proc newPlayerType*(name: string, value: int32): PlayerType
proc initPlayerType*(this: PlayerType, name: string, value: int32)
method getId*(this: PlayerType): int32 {.base, discardable.}
method getName*(this: PlayerType): string {.base, discardable.}
method toString*(this: PlayerType): string {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsPlayerType(this: PlayerType) =
    
    this.name = StringUtil.getInstance().EMPTY_STRING
    discard

proc initPlayerType*(this: PlayerType, name: string, value: int32) =
        this.initFieldsPlayerType()
        this.name = name
        this.id = value

proc newPlayerType*(name: string, value: int32): PlayerType =
    result = PlayerType()
    initPlayerType(result, name, value)

method getId*(this: PlayerType): int32 {.base, discardable.} =
        return this.id

method getName*(this: PlayerType): string {.base, discardable.} =
        return this.name

method toString*(this: PlayerType): string {.discardable.} =
        return this.getName()

