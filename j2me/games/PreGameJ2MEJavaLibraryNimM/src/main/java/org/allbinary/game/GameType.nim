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
    GameType* = ref object of JObject
        name*: string

proc newGameType*(name: string): GameType
proc initGameType*(this: GameType, name: string)
method toString*(this: GameType): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsGameType(this: GameType) =
    
    discard

proc initGameType*(this: GameType, name: string) =
        this.initFieldsGameType()
        this.name = name

proc newGameType*(name: string): GameType =
    result = GameType()
    initGameType(result, name)

method toString*(this: GameType): string {.discardable.} =
        return this.name

