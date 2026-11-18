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
# package org.allbinary.game.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/GameFeatureControlledInterface as GameFeatureControlledInterfaceModule
export GameFeatureControlledInterfaceModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    FeaturedResourceFactory* = ref object of JObject
        logUtil*: LogUtil
        list*: BasicArrayList
        commonStrings*: CommonStrings
        ANIMATION_FEATURES*: string
        IMAGE_LABEL*: string
        IMAGE_GRAPHICS_ARRAY*: string
        IMAGE_GRAPHICS_ROTATION*: string
        SPRITE_QUARTER*: string
        SPRITE_FULL*: string
        IS_LOADING_LEVEL_LABEL*: string
        IS_FEATURE*: string
        GAME_FEATURE_CONTROLLED*: string

proc newFeaturedResourceFactory*(): FeaturedResourceFactory
proc initFeaturedResourceFactory*(this: FeaturedResourceFactory)
method init*(this: FeaturedResourceFactory, level: int32) {.base.}
method clear*(this: FeaturedResourceFactory) {.base.}
method add*(this: FeaturedResourceFactory, featureInterface: GameFeatureControlledInterface) {.base.}
method getList*(this: FeaturedResourceFactory): BasicArrayList {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GraphicsFeatureFactory as GraphicsFeatureFactoryModule
export GraphicsFeatureFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule


# Java field initializers run after the base initializer
proc initFieldsFeaturedResourceFactory(this: FeaturedResourceFactory) =
    this.logUtil = LogUtil.getInstance()
    this.list = newBasicArrayListD()
    this.commonStrings = CommonStrings.getInstance()
    this.ANIMATION_FEATURES = "Animation Features: Vector: "
    this.IMAGE_LABEL = " Image: "
    this.IMAGE_GRAPHICS_ARRAY = "Image Array: "
    this.IMAGE_GRAPHICS_ROTATION = "Image Rotate: "
    this.SPRITE_QUARTER = " Sprite Quarter: "
    this.SPRITE_FULL = " Sprite Full: "
    this.IS_LOADING_LEVEL_LABEL = " isLoadingLevel "
    this.IS_FEATURE = " isFeature: "
    this.GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: "
    discard

proc initFeaturedResourceFactory*(this: FeaturedResourceFactory) =
        this.initFieldsFeaturedResourceFactory()
        discard

proc newFeaturedResourceFactory*(): FeaturedResourceFactory =
    result = FeaturedResourceFactory()
    initFeaturedResourceFactory(result)

method init*(this: FeaturedResourceFactory, level: int32) {.base.} =
        var size: int32 = this.list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var featureInterface: GameFeatureControlledInterface = GameFeatureControlledInterface(JObject(this.list.objectArray[index]))
                var isLoadingLevel: bool = featureInterface.isLoadingLevel(level)
                var isFeature: bool = featureInterface.isFeature()
                this.logUtil.putF(newStringMaker().append(this.GAME_FEATURE_CONTROLLED).append(featureInterface.toString()).append(this.IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(CommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(this.IS_FEATURE).appendboolean(isFeature).toString(), this, this.commonStrings.INIT)
                if isLoadingLevel and isFeature:
                    featureInterface.init(level)
        var features: Features = Features.getInstance()
        var graphicsFeatureFactory: GraphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(this.ANIMATION_FEATURES)
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS))
        stringBuffer.append(this.IMAGE_LABEL)
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS))
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT)
        if features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS):
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(this.IMAGE_GRAPHICS_ARRAY)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.append(this.IMAGE_GRAPHICS_ROTATION)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.append(this.SPRITE_QUARTER)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS))
            stringBuffer.append(this.SPRITE_FULL)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS))
            this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT)

method clear*(this: FeaturedResourceFactory) {.base.} =
        this.list.clear()

method add*(this: FeaturedResourceFactory, featureInterface: GameFeatureControlledInterface) {.base.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(featureInterface)).toString(), this, this.commonStrings.ADD)
        this.list.add(featureInterface)

method getList*(this: FeaturedResourceFactory): BasicArrayList {.base, discardable.} =
        return this.list

