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
# package org.allbinary.business.advertisement

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule

type
    AdConfiguration* = ref object of JObject
        INNERACTIVE*: string
        LEADBOLT*: string
        ADMOB*: string

proc newAdConfiguration*(advertIdArray: JArray[JObject]): AdConfiguration
proc initAdConfiguration*(this: AdConfiguration, advertIdArray: JArray[JObject])
method getValidAdSpots*(this: AdConfiguration): JArray[Direction] {.base, discardable.}
method process*(this: AdConfiguration, gameState: GameState) {.base.}
method processDemo*(this: AdConfiguration, state: int32) {.base.}
method setShowAds*(this: AdConfiguration) {.base.}
method setToggleAds*(this: AdConfiguration, showAds: bool) {.base.}
method isShowAds*(this: AdConfiguration): bool {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsAdConfiguration(this: AdConfiguration) =
    
    
    
    discard

proc initAdConfiguration*(this: AdConfiguration, advertIdArray: JArray[JObject]) =
        this.initFieldsAdConfiguration()
        this.INNERACTIVE = jstr(advertIdArray[0])
        this.ADMOB = jstr(advertIdArray[1])
        this.LEADBOLT = jstr(advertIdArray[2])

proc newAdConfiguration*(advertIdArray: JArray[JObject]): AdConfiguration =
    result = AdConfiguration()
    initAdConfiguration(result, advertIdArray)

method getValidAdSpots*(this: AdConfiguration): JArray[Direction] {.base, discardable.} =
        return newJArray[Direction](0, default(Direction))

method process*(this: AdConfiguration, gameState: GameState) {.base.} =
        discard

method processDemo*(this: AdConfiguration, state: int32) {.base.} =
        discard

method setShowAds*(this: AdConfiguration) {.base.} =
        discard

method setToggleAds*(this: AdConfiguration, showAds: bool) {.base.} =
        discard

method isShowAds*(this: AdConfiguration): bool {.base, discardable.} =
        return true

