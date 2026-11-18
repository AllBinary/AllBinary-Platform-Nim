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
# package org.allbinary.game.configuration.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule
import org/allbinary/game/configuration/feature/GameFeatureUtil as GameFeatureUtilModule
export GameFeatureUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/configuration/event/GameFeatureListenerInterface as GameFeatureListenerInterfaceModule
export GameFeatureListenerInterfaceModule
import org/allbinary/game/configuration/event/GameFeatureEvent as GameFeatureEventModule
export GameFeatureEventModule

type
    BaseChangedGameFeatureListener* = ref object of GameFeatureListenerInterface
        logUtil*: LogUtil
        gameFeatureUtil*: GameFeatureUtil
        list*: BasicArrayList
        changed*: bool

proc newBaseChangedGameFeatureListener*(): BaseChangedGameFeatureListener
method onEvent*(this: BaseChangedGameFeatureListener, eventObject: AllBinaryEventObject)
method onGameFeatureChange*(this: BaseChangedGameFeatureListener, gameFeatureEvent: GameFeatureEvent)
method add*(this: BaseChangedGameFeatureListener, gameFeature: Feature) {.base.}
method remove*(this: BaseChangedGameFeatureListener, gameFeature: Feature) {.base.}
method setChanged*(this: BaseChangedGameFeatureListener, initialized: bool) {.base.}
method isChangedFeature*(this: BaseChangedGameFeatureListener, gameFeature: Feature): bool {.base, discardable.}
method isChanged*(this: BaseChangedGameFeatureListener): bool {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsBaseChangedGameFeatureListener(this: BaseChangedGameFeatureListener) =
    this.logUtil = LogUtil.getInstance()
    this.gameFeatureUtil = GameFeatureUtil.getInstance()
    this.list = newBasicArrayListD()
    this.changed = true
    discard

proc initBaseChangedGameFeatureListener*(this: BaseChangedGameFeatureListener) =
    this.initFieldsBaseChangedGameFeatureListener()

proc newBaseChangedGameFeatureListener*(): BaseChangedGameFeatureListener =
    result = BaseChangedGameFeatureListener()
    initBaseChangedGameFeatureListener(result)

method onEvent*(this: BaseChangedGameFeatureListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(CommonStrings.getInstance().NOT_IMPLEMENTED, this)

method onGameFeatureChange*(this: BaseChangedGameFeatureListener, gameFeatureEvent: GameFeatureEvent) =
        this.logUtil.putF(newStringMaker().append(this.gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent.getWhatChanged()).toString(), this, this.gameFeatureUtil.ON_GAME_FEATURE_CHANGE)
        this.list.add(gameFeatureEvent.getGameOption())
        this.setChanged(true)

method add*(this: BaseChangedGameFeatureListener, gameFeature: Feature) {.base.} =
        this.list.add(gameFeature)

method remove*(this: BaseChangedGameFeatureListener, gameFeature: Feature) {.base.} =
        this.list.remove(gameFeature)

method setChanged*(this: BaseChangedGameFeatureListener, initialized: bool) {.base.} =
        this.changed = initialized
        if (not this.isChanged()):
            this.list.clear()

method isChangedFeature*(this: BaseChangedGameFeatureListener, gameFeature: Feature): bool {.base, discardable.} =
        let isChanged: bool = this.list.contains(gameFeature)
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("GameFeature: ")
        stringBuffer.append(StringUtil.getInstance().toString(gameFeature))
        stringBuffer.append(" isFeature: ")
        stringBuffer.appendboolean(Features.getInstance().isFeature(gameFeature))
        stringBuffer.append(" isChanged: ")
        stringBuffer.appendboolean(isChanged)
        this.logUtil.putF(stringBuffer.toString(), this, "isChanged")
        return isChanged

method isChanged*(this: BaseChangedGameFeatureListener): bool {.base, discardable.} =
        return this.changed

