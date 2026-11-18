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
# package org.allbinary.game.configuration

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/init/Init as InitModule
export InitModule

type
    InGameFeatures* = ref object of Init

proc newInGameFeatures*(): InGameFeatures
method init*(this: InGameFeatures)
method addToInGameMenu*(this: InGameFeatures) {.base.}
method isAny*(this: InGameFeatures): bool {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureChoiceGroups as GameFeatureChoiceGroupsModule
export GameFeatureChoiceGroupsModule
import org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups as InGameFeatureChoiceGroupsModule
export InGameFeatureChoiceGroupsModule
import org/allbinary/game/configuration/feature/SensorFeatureFactory as SensorFeatureFactoryModule
export SensorFeatureFactoryModule
import org/allbinary/game/configuration/feature/TouchFeatureFactory as TouchFeatureFactoryModule
export TouchFeatureFactoryModule
import org/allbinary/input/gyro/OrientationData as OrientationDataModule
export OrientationDataModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


proc initInGameFeatures*(this: InGameFeatures) =
    initInit(this)

proc newInGameFeatures*(): InGameFeatures =
    result = InGameFeatures()
    initInGameFeatures(result)

method init*(this: InGameFeatures) =
        let LABEL: string = "Screen Buttons"
        let orientationData: OrientationData = OrientationData.getInstance()
        let exclusiveOrientationSensorVector: BasicArrayList = BasicArrayList(JObject(GameFeatureChoiceGroups.getExclusiveInstance().get().get(JObject(JObject(orientationData.ORIENTATION_SENSOR_INPUT)))))
        let inGameFeatureChoiceGroups: InGameFeatureChoiceGroups = InGameFeatureChoiceGroups.getExclusiveInstance()
        if (not jIsNil(exclusiveOrientationSensorVector)):
            let inGameExclusiveOrientationSensorVectorCanBeNull: JObject = inGameFeatureChoiceGroups.get().get(JObject(JObject(orientationData.ORIENTATION_SENSOR_INPUT)))
            if (jIsNil(inGameExclusiveOrientationSensorVectorCanBeNull)):
                this.addToInGameMenu()
            else:
                let inGameExclusiveOrientationSensorVector: BasicArrayList = BasicArrayList(JObject(inGameExclusiveOrientationSensorVectorCanBeNull))
                if inGameExclusiveOrientationSensorVector.size() == 0:
                    this.addToInGameMenu()
        let features: Features = Features.getInstance()
        if features.isFeature(TouchFeatureFactory.getInstance().SHOW_SCREEN_BUTTONS) or features.isFeature(TouchFeatureFactory.getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS) or features.isFeature(TouchFeatureFactory.getInstance().HIDE_SCREEN_BUTTONS):
            let exclusiveScreenButtonsVector: BasicArrayList = newBasicArrayListD()
            let touchFeatureFactory: TouchFeatureFactory = TouchFeatureFactory.getInstance()
            exclusiveScreenButtonsVector.add(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            inGameFeatureChoiceGroups.add(LABEL, exclusiveScreenButtonsVector)

method addToInGameMenu*(this: InGameFeatures) {.base.} =
        let orientationData: OrientationData = OrientationData.getInstance()
        let inGameExclusiveOrientationSensorVector: BasicArrayList = newBasicArrayListD()
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().ORIENTATION_SENSORS)
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().NO_ORIENTATION)
        InGameFeatureChoiceGroups.getExclusiveInstance().add(orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector)

method isAny*(this: InGameFeatures): bool {.base, discardable.} =
        let features: Features = Features.getInstance()
        let touchFeatureFactory: TouchFeatureFactory = TouchFeatureFactory.getInstance()
        if features.isFeature(touchFeatureFactory.SHOW_SCREEN_BUTTONS) or features.isFeature(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) or features.isFeature(touchFeatureFactory.HIDE_SCREEN_BUTTONS):
            return true
        let exclusiveOrientationSensorVector: BasicArrayList = BasicArrayList(JObject(GameFeatureChoiceGroups.getExclusiveInstance().get().get(JObject(JObject(OrientationData.getInstance().ORIENTATION_SENSOR_INPUT)))))
        if (not jIsNil(exclusiveOrientationSensorVector)):
            return true
        return false

when declared(newInGameFeaturesHook0):
    newInGameFeaturesHook0 = proc (): Init = newInGameFeatures()

