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
    TestRemoteHighScoresNotFinished* = ref object of JObject

proc newTestRemoteHighScoresNotFinished*(): TestRemoteHighScoresNotFinished
proc initTestRemoteHighScoresNotFinished*(this: TestRemoteHighScoresNotFinished)
proc main*(t: typedesc[TestRemoteHighScoresNotFinished], args: JArray[string])

var TestRemoteHighScoresNotFinished_PATHValue: string
var TestRemoteHighScoresNotFinished_PATHSet = false
proc PATH*(t: typedesc[TestRemoteHighScoresNotFinished]): string =
    if not TestRemoteHighScoresNotFinished_PATHSet:
        TestRemoteHighScoresNotFinished_PATHSet = true
        TestRemoteHighScoresNotFinished_PATHValue = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"
    TestRemoteHighScoresNotFinished_PATHValue

proc initTestRemoteHighScoresNotFinished*(this: TestRemoteHighScoresNotFinished) =
        discard
        discard

proc newTestRemoteHighScoresNotFinished*(): TestRemoteHighScoresNotFinished =
    result = TestRemoteHighScoresNotFinished()
    initTestRemoteHighScoresNotFinished(result)

proc main*(t: typedesc[TestRemoteHighScoresNotFinished], args: JArray[string]) =
        newTestRemoteHighScoresNotFinished()

