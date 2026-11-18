#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule

type
    LastFetchHighScoresFactory* = ref object of JObject
        highScoresArray*: JArray[HighScores]

proc newLastFetchHighScoresFactory*(): LastFetchHighScoresFactory
proc getInstance*(t: typedesc[LastFetchHighScoresFactory]): LastFetchHighScoresFactory {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/game/score/NoHighScoresFactory as NoHighScoresFactoryModule
export NoHighScoresFactoryModule

var LastFetchHighScoresFactory_instanceValue: JObject
var LastFetchHighScoresFactory_instanceSet = false
proc instance*(t: typedesc[LastFetchHighScoresFactory]): JObject =
    if not LastFetchHighScoresFactory_instanceSet:
        LastFetchHighScoresFactory_instanceSet = true
        LastFetchHighScoresFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    LastFetchHighScoresFactory_instanceValue
proc `instance=`*(t: typedesc[LastFetchHighScoresFactory], value: JObject) =
    LastFetchHighScoresFactory_instanceSet = true
    LastFetchHighScoresFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsLastFetchHighScoresFactory(this: LastFetchHighScoresFactory) =
    this.highScoresArray = NoHighScoresFactory.getInstance().NO_HIGH_SCORES
    discard

proc initLastFetchHighScoresFactory*(this: LastFetchHighScoresFactory) =
    this.initFieldsLastFetchHighScoresFactory()

proc newLastFetchHighScoresFactory*(): LastFetchHighScoresFactory =
    result = LastFetchHighScoresFactory()
    initLastFetchHighScoresFactory(result)

proc getInstance*(t: typedesc[LastFetchHighScoresFactory]): LastFetchHighScoresFactory {.discardable.} =
        if LastFetchHighScoresFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            LastFetchHighScoresFactory.instance = newLastFetchHighScoresFactory()
        return LastFetchHighScoresFactory(JObject(LastFetchHighScoresFactory.instance))

