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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule

type
    Features* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        list*: BasicArrayList
        defaultList*: BasicArrayList

proc newFeatures*(): Features
proc initFeatures*(this: Features)
proc getInstance*(t: typedesc[Features]): Features {.discardable.}
method addDefault*(this: Features, gameFeature: Feature) {.base.}
method add*(this: Features, gameFeature: Feature) {.base.}
method removeDefault*(this: Features, gameFeature: Feature) {.base.}
method remove*(this: Features, gameFeature: Feature) {.base.}
method init*(this: Features) {.base.}
method isDefault*(this: Features, gameFeature: Feature): bool {.base, discardable.}
method isFeature*(this: Features, gameFeature: Feature): bool {.base, discardable.}
method toggle*(this: Features, gameFeature: Feature) {.base.}
import org/allbinary/game/configuration/event/GameFeatureEvent as GameFeatureEventModule
export GameFeatureEventModule
import org/allbinary/game/configuration/event/GameFeatureEventHandler as GameFeatureEventHandlerModule
export GameFeatureEventHandlerModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule
import org/allbinary/logic/system/os/OperatingSystemFactory as OperatingSystemFactoryModule
export OperatingSystemFactoryModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/game/configuration/feature/InputFeatureFactory as InputFeatureFactoryModule
export InputFeatureFactoryModule
import org/allbinary/game/configuration/feature/SensorFeatureFactory as SensorFeatureFactoryModule
export SensorFeatureFactoryModule
import org/allbinary/game/configuration/feature/TouchFeatureFactory as TouchFeatureFactoryModule
export TouchFeatureFactoryModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule

var Features_SINGLETONValue: JObject
var Features_SINGLETONSet = false
proc SINGLETON*(t: typedesc[Features]): JObject =
    if not Features_SINGLETONSet:
        Features_SINGLETONSet = true
        Features_SINGLETONValue = NullUtil.getInstance().NULL_OBJECT
    Features_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[Features], value: JObject) =
    Features_SINGLETONSet = true
    Features_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsFeatures(this: Features) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    discard

proc getInstance*(t: typedesc[Features]): Features {.discardable.} =
        if Features.SINGLETON == NullUtil.getInstance().NULL_OBJECT:
            Features.SINGLETON = newFeatures()
        return Features(JObject(Features.SINGLETON))

proc initFeatures*(this: Features) =
        this.initFieldsFeatures()
        this.list = newBasicArrayListD()
        this.defaultList = newBasicArrayListD()
        this.init()

proc newFeatures*(): Features =
    result = Features()
    initFeatures(result)

method addDefault*(this: Features, gameFeature: Feature) {.base.} =
        this.add(gameFeature)
        if (not this.defaultList.contains(gameFeature)):
            this.defaultList.add(gameFeature)

method add*(this: Features, gameFeature: Feature) {.base.} =
        if (not this.list.contains(gameFeature)):
            this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, this.commonStrings.ADD)
            this.list.add(gameFeature)
            GameFeatureEventHandler.getInstance().fireEvent(newGameFeatureEvent(gameFeature, gameFeature.toString()))

method removeDefault*(this: Features, gameFeature: Feature) {.base.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, "removeDefault")
        this.remove(gameFeature)
        this.defaultList.remove(gameFeature)

method remove*(this: Features, gameFeature: Feature) {.base.} =
        if this.list.contains(gameFeature):
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.REMOVE)
            this.list.remove(gameFeature)
            GameFeatureEventHandler.getInstance().fireEvent(newGameFeatureEvent(gameFeature, gameFeature.toString()))

method init*(this: Features) {.base.} =
        try:
            let gameFeatureFactory: GameFeatureFactory = GameFeatureFactory.getInstance()
            let inputFeatureFactory: InputFeatureFactory = InputFeatureFactory.getInstance()
            let sensorFeatureFactory: SensorFeatureFactory = SensorFeatureFactory.getInstance()
            let touchFeatureFactory: TouchFeatureFactory = TouchFeatureFactory.getInstance()
            this.addDefault(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
            this.addDefault(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
            this.addDefault(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
            this.addDefault(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
            this.addDefault(inputFeatureFactory.MULTI_KEY_PRESS)
            this.addDefault(inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES)
            this.addDefault(gameFeatureFactory.SCREEN_SHAKE)
            this.addDefault(gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            let operatingSystemInterface: GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
            if operatingSystemInterface.isOverScan():
                this.addDefault(sensorFeatureFactory.NO_ORIENTATION)
                this.addDefault(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            else:
                this.addDefault(sensorFeatureFactory.ORIENTATION_SENSORS)
                this.addDefault(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            this.addDefault(touchFeatureFactory.TOUCH_ENABLED)
            this.addDefault(MainFeatureFactory.getInstance().FULL_SCREEN)
            this.addDefault(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e)

method isDefault*(this: Features, gameFeature: Feature): bool {.base, discardable.} =
        return this.defaultList.contains(gameFeature)

method isFeature*(this: Features, gameFeature: Feature): bool {.base, discardable.} =
        return this.list.contains(gameFeature)

method toggle*(this: Features, gameFeature: Feature) {.base.} =
        if this.isFeature(gameFeature):
            this.remove(gameFeature)
        else:
            this.add(gameFeature)

