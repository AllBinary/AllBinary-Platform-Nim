#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import org/allbinary/game/GameType as GameTypeModule
export GameTypeModule
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/business/advertisement/AdConfiguration as AdConfigurationModule
export AdConfigurationModule
import org/allbinary/business/advertisement/Advertisements as AdvertisementsModule
export AdvertisementsModule

type
    GameAdStateBase* = ref object of JObject
        adConfigurationP*: AdConfiguration
        advertisementsP*: Advertisements
        okayToShowAdsP*: bool

proc newGameAdStateBase*(adConfiguration: AdConfiguration): GameAdStateBase
proc initGameAdStateBase*(this: GameAdStateBase, adConfiguration: AdConfiguration)
method initViewArray*(this: GameAdStateBase, viewArray: JArray[JObject]) {.base.}
method onStart*(this: GameAdStateBase, anyType: JObject) {.base.}
method init*(this: GameAdStateBase) {.base.}
method isShowingAtLocation*(this: GameAdStateBase, location: int32): bool {.base, discardable.}
method isShowingAt*(this: GameAdStateBase): bool {.base, discardable.}
method show*(this: GameAdStateBase) {.base.}
method hide*(this: GameAdStateBase) {.base.}
method onEvent*(this: GameAdStateBase, eventObject: AllBinaryEventObject) {.base.}
method processAdState*(this: GameAdStateBase, gameState: GameState, gameType: GameType) {.base.}
method processPageAdState*(this: GameAdStateBase) {.base.}
method playingAdState*(this: GameAdStateBase) {.base.}
method playingAdStateWH*(this: GameAdStateBase, width: int32, height: int32) {.base.}
method notPlayingAdState*(this: GameAdStateBase) {.base.}
method setGameIsReady*(this: GameAdStateBase, gameIsReady: bool) {.base.}
method isGameIsReady*(this: GameAdStateBase): bool {.base, discardable.}
method getAdvertisements*(this: GameAdStateBase): Advertisements {.base, discardable.}
method getAdConfiguration*(this: GameAdStateBase): AdConfiguration {.base, discardable.}
method isOkayToShowPageAd*(this: GameAdStateBase): bool {.base, discardable.}
method setOkayToShowAds*(this: GameAdStateBase, okayToShowAds: bool) {.base.}
method isOkayToShowAds*(this: GameAdStateBase): bool {.base, discardable.}
method isEnabled*(this: GameAdStateBase): bool {.base, discardable.}
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule


# Java field initializers run after the base initializer
proc initFieldsGameAdStateBase(this: GameAdStateBase) =
    
    this.advertisementsP = newAdvertisements()
    this.okayToShowAdsP = false
    discard

proc initGameAdStateBase*(this: GameAdStateBase, adConfiguration: AdConfiguration) =
        this.initFieldsGameAdStateBase()
        this.adConfigurationP = adConfiguration

proc newGameAdStateBase*(adConfiguration: AdConfiguration): GameAdStateBase =
    result = GameAdStateBase()
    initGameAdStateBase(result, adConfiguration)

method initViewArray*(this: GameAdStateBase, viewArray: JArray[JObject]) {.base.} =
        discard

method onStart*(this: GameAdStateBase, anyType: JObject) {.base.} =
        this.init()

method init*(this: GameAdStateBase) {.base.} =
        discard

method isShowingAtLocation*(this: GameAdStateBase, location: int32): bool {.base, discardable.} =
        return false

method isShowingAt*(this: GameAdStateBase): bool {.base, discardable.} =
        return false

method show*(this: GameAdStateBase) {.base.} =
        discard

method hide*(this: GameAdStateBase) {.base.} =
        discard

method onEvent*(this: GameAdStateBase, eventObject: AllBinaryEventObject) {.base.} =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method processAdState*(this: GameAdStateBase, gameState: GameState, gameType: GameType) {.base.} =
        discard

method processPageAdState*(this: GameAdStateBase) {.base.} =
        discard

method playingAdState*(this: GameAdStateBase) {.base.} =
        discard

method playingAdStateWH*(this: GameAdStateBase, width: int32, height: int32) {.base.} =
        discard

method notPlayingAdState*(this: GameAdStateBase) {.base.} =
        discard

method setGameIsReady*(this: GameAdStateBase, gameIsReady: bool) {.base.} =
        discard

method isGameIsReady*(this: GameAdStateBase): bool {.base, discardable.} =
        return false

method getAdvertisements*(this: GameAdStateBase): Advertisements {.base, discardable.} =
        return this.advertisementsP

method getAdConfiguration*(this: GameAdStateBase): AdConfiguration {.base, discardable.} =
        return this.adConfigurationP

method isOkayToShowPageAd*(this: GameAdStateBase): bool {.base, discardable.} =
        return false

method setOkayToShowAds*(this: GameAdStateBase, okayToShowAds: bool) {.base.} =
        this.okayToShowAdsP = okayToShowAds

method isOkayToShowAds*(this: GameAdStateBase): bool {.base, discardable.} =
        return this.okayToShowAdsP

method isEnabled*(this: GameAdStateBase): bool {.base, discardable.} =
        return false

