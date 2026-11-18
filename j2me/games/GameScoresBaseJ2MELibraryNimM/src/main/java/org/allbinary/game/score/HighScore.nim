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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Long as LongModule
export LongModule
import java/io/ByteArrayOutputStream as ByteArrayOutputStreamModule
export ByteArrayOutputStreamModule
import java/io/DataOutputStream as DataOutputStreamModule
export DataOutputStreamModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule

type
    HighScore* = ref object of JObject
        id*: int32
        name*: string
        gameInfo*: GameInfo
        score*: int64
        scoreString*: string

proc newHighScore*(id: int32, name: string, gameInfo: GameInfo, score: int64): HighScore
proc initHighScore*(this: HighScore, id: int32, name: string, gameInfo: GameInfo, score: int64)
method getId*(this: HighScore): int32 {.base, discardable.}
method getName*(this: HighScore): string {.base, discardable.}
method getScore*(this: HighScore): int64 {.base, discardable.}
method getAsBytes*(this: HighScore): JArray[int8] {.base, discardable.}
method getGameInfo*(this: HighScore): GameInfo {.base, discardable.}
method getScoreString*(this: HighScore): string {.base, discardable.}
method setName*(this: HighScore, name: string) {.base.}
method toString*(this: HighScore): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsHighScore(this: HighScore) =
    
    
    
    
    
    discard

proc initHighScore*(this: HighScore, id: int32, name: string, gameInfo: GameInfo, score: int64) =
        this.initFieldsHighScore()
        this.id = id
        this.name = name
        this.gameInfo = gameInfo
        this.score = score
        this.scoreString = jstr(this.score)

proc newHighScore*(id: int32, name: string, gameInfo: GameInfo, score: int64): HighScore =
    result = HighScore()
    initHighScore(result, id, name, gameInfo, score)

method getId*(this: HighScore): int32 {.base, discardable.} =
        return this.id

method getName*(this: HighScore): string {.base, discardable.} =
        return this.name

method getScore*(this: HighScore): int64 {.base, discardable.} =
        return this.score

method getAsBytes*(this: HighScore): JArray[int8] {.base, discardable.} =
        let byteArrayOutputStream: ByteArrayOutputStream = newByteArrayOutputStream()
        let outputStream: DataOutputStream = newDataOutputStream(byteArrayOutputStream)
        outputStream.writeUTF(this.getName())
        outputStream.writeLong(this.getScore())
        return byteArrayOutputStream.toByteArray()

method getGameInfo*(this: HighScore): GameInfo {.base, discardable.} =
        return this.gameInfo

method getScoreString*(this: HighScore): string {.base, discardable.} =
        return this.scoreString

method setName*(this: HighScore, name: string) {.base.} =
        this.name = name

method toString*(this: HighScore): string {.discardable.} =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        return newStringMaker().append(this.name).append(commonSeps.COLON).appendlong(this.score).append(commonSeps.FORWARD_SLASH).append(this.scoreString).toString()

