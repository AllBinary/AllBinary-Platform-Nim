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
# package org.allbinary.game.init

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/event/GameInitializedEvent as GameInitializedEventModule
export GameInitializedEventModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/init/BasicBuildGameInitializerFactory as BasicBuildGameInitializerFactoryModule
export BasicBuildGameInitializerFactoryModule

type
    GameInitializationUtil* = ref object of JObject
        EVENT*: GameInitializedEvent

proc newGameInitializationUtil*(): GameInitializationUtil
method initDemo*(this: GameInitializationUtil, abeClientInformation: AbeClientInformationInterface, canvas: MyCanvas, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory) {.base.}
method initGame*(this: GameInitializationUtil, abeClientInformation: AbeClientInformationInterface, canvas: MyCanvas, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory) {.base.}
proc getInstance*(t: typedesc[GameInitializationUtil]): GameInitializationUtil {.discardable.}
import org/allbinary/game/configuration/event/ChangedGameFeatureListener as ChangedGameFeatureListenerModule
export ChangedGameFeatureListenerModule
import org/allbinary/game/configuration/event/GameInitializedEventHandler as GameInitializedEventHandlerModule
export GameInitializedEventHandlerModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule
import org/allbinary/game/init/GameInitializationInterface as GameInitializationInterfaceModule
export GameInitializationInterfaceModule

var GameInitializationUtil_instanceValue: GameInitializationUtil
var GameInitializationUtil_instanceSet = false
proc instance*(t: typedesc[GameInitializationUtil]): GameInitializationUtil =
    if not GameInitializationUtil_instanceSet:
        GameInitializationUtil_instanceSet = true
        GameInitializationUtil_instanceValue = newGameInitializationUtil()
    GameInitializationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameInitializationUtil(this: GameInitializationUtil) =
    this.EVENT = newGameInitializedEvent(this)
    discard

proc initGameInitializationUtil*(this: GameInitializationUtil) =
    this.initFieldsGameInitializationUtil()

proc newGameInitializationUtil*(): GameInitializationUtil =
    result = GameInitializationUtil()
    initGameInitializationUtil(result)

method initDemo*(this: GameInitializationUtil, abeClientInformation: AbeClientInformationInterface, canvas: MyCanvas, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory) {.base.} =
        let mainFeatureFactory: MainFeatureFactory = MainFeatureFactory.getInstance()
        if ChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory.STATIC):
            var gameInitializationInterface: GameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance()
            var features: Features = Features.getInstance()
            if features.isFeature(mainFeatureFactory.LOAD_ALL):
                this.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
            elif features.isFeature(mainFeatureFactory.LOAD_ONDEMAND):
                var resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
                gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel())
                this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY)
            else:
                raise newJException("Exception", "No Loading Feature Available")
            GameInitializedEventHandler.getInstance().fireEvent(this.EVENT)

method initGame*(this: GameInitializationUtil, abeClientInformation: AbeClientInformationInterface, canvas: MyCanvas, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory) {.base.} =
        if ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC):
            var gameInitializationInterface: GameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance()
            var resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
            gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel())
            this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL)
            GameInitializedEventHandler.getInstance().fireEvent(this.EVENT)
            ChangedGameFeatureListener.getInstance().remove(MainFeatureFactory.getInstance().STATIC)

proc getInstance*(t: typedesc[GameInitializationUtil]): GameInitializationUtil {.discardable.} =
        return GameInitializationUtil.instance

