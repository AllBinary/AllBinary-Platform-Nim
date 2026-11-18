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
# package org.allbinary.game.layer.resources

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory as BaseResourceAnimationInterfaceFactoryInterfaceFactoryModule
export BaseResourceAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory as GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactoryModule
export GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactoryModule
import org/allbinary/game/layer/LayerPlacementInterfaceBasicArrayListFactoryInterface as LayerPlacementInterfaceBasicArrayListFactoryInterfaceModule
export LayerPlacementInterfaceBasicArrayListFactoryInterfaceModule
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule
import org/allbinary/game/layer/resources/OnDemandResourcesFactory as OnDemandResourcesFactoryModule
export OnDemandResourcesFactoryModule

type
    OnDemandLoader* = ref object of JObject
        onDemandResourcesFactory*: OnDemandResourcesFactory
        gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory*: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        resourceAnimationInterfaceFactoryInterfaceFactory*: BaseResourceAnimationInterfaceFactoryInterfaceFactory

proc newOnDemandLoader*(onDemandResourcesFactory: OnDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory): OnDemandLoader
proc initOnDemandLoader*(this: OnDemandLoader, onDemandResourcesFactory: OnDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory)
method init*(this: OnDemandLoader, imageCache: ImageCache, level: int32, loadingString: string) {.base.}
method initAll*(this: OnDemandLoader, imageCache: ImageCache, loadingString: string) {.base.}
method initLevel*(this: OnDemandLoader, layerPlacementInterfaceBasicArrayListFactoryInterface: LayerPlacementInterfaceBasicArrayListFactoryInterface, imageCache: ImageCache, level: int32, loadingString: string) {.base.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/layer/resources/OnDemandResources as OnDemandResourcesModule
export OnDemandResourcesModule


# Java field initializers run after the base initializer
proc initFieldsOnDemandLoader(this: OnDemandLoader) =
    
    
    
    discard

proc initOnDemandLoader*(this: OnDemandLoader, onDemandResourcesFactory: OnDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory) =
        this.initFieldsOnDemandLoader()
        this.onDemandResourcesFactory = onDemandResourcesFactory
        this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        this.resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory

proc newOnDemandLoader*(onDemandResourcesFactory: OnDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory): OnDemandLoader =
    result = OnDemandLoader()
    initOnDemandLoader(result, onDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory)

method init*(this: OnDemandLoader, imageCache: ImageCache, level: int32, loadingString: string) {.base.} =
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if Features.getInstance().isFeature(MainFeatureFactory.getInstance().LOAD_ALL):
            if this.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized():
                return
            this.initAll(imageCache, loadingString)
        elif level != resourceLoadingLevelFactory.LOAD_ALL.getLevel():
            let layerPlacementInterfaceBasicArrayListFactoryInterface: LayerPlacementInterfaceBasicArrayListFactoryInterface = this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance(level)
            this.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString)

method initAll*(this: OnDemandLoader, imageCache: ImageCache, loadingString: string) {.base.} =
        var index: int32 = 0
        let portion: int32 = 120
        var onDemandResources: OnDemandResources = nil
        block:
            var onDemandIndex: int32 = this.onDemandResourcesFactory.size()
            while jPreDecrement(onDemandIndex) >= 0:
                onDemandResources = this.onDemandResourcesFactory.remove(onDemandIndex)
                if onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES:
                    index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)

method initLevel*(this: OnDemandLoader, layerPlacementInterfaceBasicArrayListFactoryInterface: LayerPlacementInterfaceBasicArrayListFactoryInterface, imageCache: ImageCache, level: int32, loadingString: string) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        let portion: int32 = 120
        var index: int32 = 0
        let onDemandArray: JArray[int32] = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources()
        PreLogUtil.put(newStringMaker().append(commonStrings.START).appendint(onDemandArray.length).toString(), this, "initLevel")
        var onDemandResources: OnDemandResources = nil
        block:
            var onDemandIndex: int32 = onDemandArray.length
            while jPreDecrement(onDemandIndex) >= 0:
                onDemandResources = this.onDemandResourcesFactory.remove(onDemandArray[onDemandIndex])
                if onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES:
                    index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)

