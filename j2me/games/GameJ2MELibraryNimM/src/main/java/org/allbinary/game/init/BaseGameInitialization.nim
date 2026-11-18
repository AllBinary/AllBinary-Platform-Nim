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
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/game/resource/ResourceInitialization as ResourceInitializationModule
export ResourceInitializationModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/init/GameInitializationInterface as GameInitializationInterfaceModule
export GameInitializationInterfaceModule

type
    BaseGameInitialization* = ref object of GameInitializationInterface
        resourceInitializationArray*: JArray[ResourceInitialization]
        portion*: int32
        initialized*: bool
        EARLY_RESOURCES*: int32
        GAME_RESOURCES*: int32
        EARLY_CHANGABLE_RESOURCES*: int32
        GAME_CHANGABLE_RESOURCES*: int32
        gameInitialized*: bool
        allLoaded*: bool

proc newBaseGameInitialization*(resourceInitializationArray: JArray[ResourceInitialization], portion: int32): BaseGameInitialization
proc initBaseGameInitialization*(this: BaseGameInitialization, resourceInitializationArray: JArray[ResourceInitialization], portion: int32)
method initKey*(this: BaseGameInitialization, portion: int32) {.base.}
method initKeyMapping*(this: BaseGameInitialization, abeClientInformation: AbeClientInformationInterface, portion: int32) {.base.}
method init*(this: BaseGameInitialization, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, level: int32)
method resourceInitialization*(this: BaseGameInitialization, level: int32) {.base.}
method resourceAnimationChange*(this: BaseGameInitialization): bool {.base, discardable.}
method clearResources*(this: BaseGameInitialization) {.base.}
method setGameInitialized*(this: BaseGameInitialization, gameInitialized: bool) {.base.}
method isGameInitialized*(this: BaseGameInitialization): bool {.base, discardable.}
method getPortion*(this: BaseGameInitialization): int32 {.base, discardable.}
method setInitialized*(this: BaseGameInitialization, initialized: bool) {.base.}
method isInitialized*(this: BaseGameInitialization): bool {.base, discardable.}
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/game/configuration/event/ChangedGameFeatureListener as ChangedGameFeatureListenerModule
export ChangedGameFeatureListenerModule
import org/allbinary/game/configuration/feature/InputFeatureFactory as InputFeatureFactoryModule
export InputFeatureFactoryModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory as FeaturedResourceRelativeRelationshipFactoryModule
export FeaturedResourceRelativeRelationshipFactoryModule
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/image/GameFeatureImageCacheFactory as GameFeatureImageCacheFactoryModule
export GameFeatureImageCacheFactoryModule
import org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput as CompleteMotionGestureInputToGameMotionGestureInputModule
export CompleteMotionGestureInputToGameMotionGestureInputModule
import org/allbinary/input/motion/button/BasicTouchInputFactory as BasicTouchInputFactoryModule
export BasicTouchInputFactoryModule
import org/allbinary/input/motion/button/CancelTouchButtonInputFactory as CancelTouchButtonInputFactoryModule
export CancelTouchButtonInputFactoryModule

var BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONValue: BaseGameInitialization
var BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONSet = false
proc NULL_BASE_GAME_INITIALIZATION*(t: typedesc[BaseGameInitialization]): BaseGameInitialization =
    if not BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONSet:
        BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONSet = true
        BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONValue = newBaseGameInitialization(newJArray[ResourceInitialization](0, default(ResourceInitialization)), 0)
    BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONValue

# Java field initializers run after the base initializer
proc initFieldsBaseGameInitialization(this: BaseGameInitialization) =
    
    
    this.initialized = false
    this.EARLY_RESOURCES = 0
    this.GAME_RESOURCES = 1
    this.EARLY_CHANGABLE_RESOURCES = 2
    this.GAME_CHANGABLE_RESOURCES = 3
    this.gameInitialized = false
    this.allLoaded = false
    discard

proc initBaseGameInitialization*(this: BaseGameInitialization, resourceInitializationArray: JArray[ResourceInitialization], portion: int32) =
        this.initFieldsBaseGameInitialization()
        this.resourceInitializationArray = resourceInitializationArray
        this.portion = portion

proc newBaseGameInitialization*(resourceInitializationArray: JArray[ResourceInitialization], portion: int32): BaseGameInitialization =
    result = BaseGameInitialization()
    initBaseGameInitialization(result, resourceInitializationArray, portion)

method initKey*(this: BaseGameInitialization, portion: int32) {.base.} =
        discard

method initKeyMapping*(this: BaseGameInitialization, abeClientInformation: AbeClientInformationInterface, portion: int32) {.base.} =
        if ChangedGameFeatureListener.getInstance().isChangedFeature(InputFeatureFactory.getInstance().INPUT_MAPPING):
            PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().init(abeClientInformation)
            ProgressCanvasFactory.getInstance().addNormalPortion(50, "Game Keys")
            ChangedGameFeatureListener.getInstance().remove(InputFeatureFactory.getInstance().INPUT_MAPPING)

method init*(this: BaseGameInitialization, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, level: int32) =
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if (not this.isInitialized()) and (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel() or level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()):
            var localPortion: int32 = 40
            if level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel():
                localPortion = 8
            this.setInitialized(true)
            this.initKey(this.getPortion())
            this.initKeyMapping(abeClientInformation, this.getPortion())
            GameKeyEventFactory.getInstance().init()
            let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Game Key Events")
            BasicTouchInputFactory.getInstance().init(PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
            CancelTouchButtonInputFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Touch Input")
            CompleteMotionGestureInputToGameMotionGestureInput.getInstance().init()
            progressCanvas.addNormalPortion(localPortion, "Motion Input")
            GameFeatureImageCacheFactory.init()
            progressCanvas.addNormalPortion(localPortion, "Image Cache")
            this.resourceInitializationArray[this.EARLY_RESOURCES].init()

method resourceInitialization*(this: BaseGameInitialization, level: int32) {.base.} =
        var resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if this.resourceAnimationChange() and level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel():
            this.clearResources()
            this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES].init()
        if this.resourceAnimationChange() and level == resourceLoadingLevelFactory.LOAD_ALL.getLevel():
            if this.allLoaded:
                this.clearResources()
            if FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size() == 0:
                this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES].init()
            this.resourceInitializationArray[this.GAME_CHANGABLE_RESOURCES].init()
            this.allLoaded = true

method resourceAnimationChange*(this: BaseGameInitialization): bool {.base, discardable.} =
        var changedGameFeatureListener: ChangedGameFeatureListener = ChangedGameFeatureListener.getInstance()
        var gameConfigurationCentral: GameConfigurationCentral = GameConfigurationCentral.getInstance()
        if changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE):
            return true
        if ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC):
            return true
        return false

method clearResources*(this: BaseGameInitialization) {.base.} =
        this.allLoaded = false
        GameFeatureImageCacheFactory.releaseAll()
        var featuredAnimationInterfaceFactoryInterfaceFactory: FeaturedAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredAnimationInterfaceFactoryInterfaceFactory.clear()
        FeaturedResourceRelativeRelationshipFactory.getInstance().clear()

method setGameInitialized*(this: BaseGameInitialization, gameInitialized: bool) {.base.} =
        this.gameInitialized = gameInitialized

method isGameInitialized*(this: BaseGameInitialization): bool {.base, discardable.} =
        return this.gameInitialized

method getPortion*(this: BaseGameInitialization): int32 {.base, discardable.} =
        return this.portion

method setInitialized*(this: BaseGameInitialization, initialized: bool) {.base.} =
        this.initialized = initialized

method isInitialized*(this: BaseGameInitialization): bool {.base, discardable.} =
        return this.initialized

