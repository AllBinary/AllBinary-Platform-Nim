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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/resource/FeaturedResourceFactory as FeaturedResourceFactoryModule
export FeaturedResourceFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterfaceModule
export ProceduralAnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/BasicAnimationInterfaceFactoryInterface as BasicAnimationInterfaceFactoryInterfaceModule
export BasicAnimationInterfaceFactoryInterfaceModule

type
    FeaturedAnimationInterfaceFactoryInterfaceFactory* = ref object of FeaturedResourceFactory

proc newFeaturedAnimationInterfaceFactoryInterfaceFactory*(): FeaturedAnimationInterfaceFactoryInterfaceFactory
proc initFeaturedAnimationInterfaceFactoryInterfaceFactory*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory)
proc getInstance*(t: typedesc[FeaturedAnimationInterfaceFactoryInterfaceFactory]): FeaturedAnimationInterfaceFactoryInterfaceFactory {.discardable.}
method getRectangle*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string): Rectangle {.base, discardable.}
method getRectangleXY*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string, x: int32, y: int32): Rectangle {.base, discardable.}
method getProcedural*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string): ProceduralAnimationInterfaceFactoryInterface {.base, discardable.}
method get*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string): AnimationInterfaceFactoryInterface {.base, discardable.}
method getBasicAnimationInterfaceFactoryInstance*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string): BasicAnimationInterfaceFactoryInterface {.base, discardable.}
import org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface as FeatureResourceAnimationInterfaceFactoryInterfaceModule
export FeatureResourceAnimationInterfaceFactoryInterfaceModule
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule

var FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCEValue: FeaturedAnimationInterfaceFactoryInterfaceFactory
var FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCESet = false
proc INSTANCE*(t: typedesc[FeaturedAnimationInterfaceFactoryInterfaceFactory]): FeaturedAnimationInterfaceFactoryInterfaceFactory =
    if not FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCESet:
        FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCESet = true
        FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCEValue = newFeaturedAnimationInterfaceFactoryInterfaceFactory()
    FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCEValue
proc `INSTANCE=`*(t: typedesc[FeaturedAnimationInterfaceFactoryInterfaceFactory], value: FeaturedAnimationInterfaceFactoryInterfaceFactory) =
    FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCESet = true
    FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCEValue = value

proc initFeaturedAnimationInterfaceFactoryInterfaceFactory*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory) =
        initFeaturedResourceFactory(this)
        discard

proc newFeaturedAnimationInterfaceFactoryInterfaceFactory*(): FeaturedAnimationInterfaceFactoryInterfaceFactory =
    result = FeaturedAnimationInterfaceFactoryInterfaceFactory()
    initFeaturedAnimationInterfaceFactoryInterfaceFactory(result)

proc getInstance*(t: typedesc[FeaturedAnimationInterfaceFactoryInterfaceFactory]): FeaturedAnimationInterfaceFactoryInterfaceFactory {.discardable.} =
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE

method getRectangle*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string): Rectangle {.base, discardable.} =
        return this.getRectangleXY(resource, 0, 0)

method getRectangleXY*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string, x: int32, y: int32): Rectangle {.base, discardable.} =
        let pointFactory: PointFactory = PointFactory.getInstance()
        let list: BasicArrayList = this.getList()
        let scale: int32 = GameConfigurationCentral.getInstance().SCALE.getValue().intValue()
        let size: int32 = this.getList().size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                let featureInterface: FeatureResourceAnimationInterfaceFactoryInterface = FeatureResourceAnimationInterfaceFactoryInterface(JObject(list.objectArray[index]))
                if featureInterface.isFeature():
                    let rectangle: Rectangle = featureInterface.getRectangle(resource)
                    if rectangle != RectangleFactory.SINGLETON:
                        return newRectangle(pointFactory.createXY(x, y), (ashr((rectangle.getWidth() *% scale), 1)), (ashr((rectangle.getHeight() *% scale), 1)))
        raise newJException("Exception", newStringMaker().append("No rectangle available for current feature selection or Resource: ").append(resource).toString())

method getProcedural*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string): ProceduralAnimationInterfaceFactoryInterface {.base, discardable.} =
        return ProceduralAnimationInterfaceFactoryInterface(JObject(this.getBasicAnimationInterfaceFactoryInstance(resource)))

method get*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string): AnimationInterfaceFactoryInterface {.base, discardable.} =
        return AnimationInterfaceFactoryInterface(JObject(this.getBasicAnimationInterfaceFactoryInstance(resource)))

method getBasicAnimationInterfaceFactoryInstance*(this: FeaturedAnimationInterfaceFactoryInterfaceFactory, resource: string): BasicAnimationInterfaceFactoryInterface {.base, discardable.} =
        let list: BasicArrayList = this.getList()
        let resourceTypeAvailableList: BasicArrayList = newBasicArrayListD()
        var size: int32 = this.getList().size()
        var featureInterface: FeatureResourceAnimationInterfaceFactoryInterface = nil
        var animationInterfaceFactoryInterface: BasicAnimationInterfaceFactoryInterface = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                featureInterface = FeatureResourceAnimationInterfaceFactoryInterface(JObject(list.objectArray[index]))
                if featureInterface.isFeature():
                    resourceTypeAvailableList.add(featureInterface)
                    animationInterfaceFactoryInterface = featureInterface.getBasicAnimationInterfaceFactoryInstance(resource)
                    if animationInterfaceFactoryInterface != NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY:
                        return animationInterfaceFactoryInterface
        if resourceTypeAvailableList.size() > 0:
            let NO_ANIMATION_AVAILABLE_FROM: string = "No animation available from: "
            let FOR_FACTORIES: string = " factories: "
            let FOR_RESOURCE: string = " for Resource: "
            let HAS_KEY: string = " has: "
            let RESOURCES_LABEL: string = " resources "
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(NO_ANIMATION_AVAILABLE_FROM)
            stringBuffer.appendint(resourceTypeAvailableList.size())
            stringBuffer.append(CommonSeps.getInstance().FORWARD_SLASH)
            stringBuffer.appendint(size)
            stringBuffer.append(FOR_FACTORIES)
            let size2: int32 = resourceTypeAvailableList.size()
            block:
                var index: int32 = 0
                while index < size2:
                    defer: index = index +% 1
                    stringBuffer.append(resourceTypeAvailableList.get(index).toString())
                    stringBuffer.append(CommonSeps.getInstance().COMMA_SEP)
            stringBuffer.append(FOR_RESOURCE)
            stringBuffer.append(resource)
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
                    featureInterface = FeatureResourceAnimationInterfaceFactoryInterface(JObject(list.objectArray[index]))
                    if featureInterface.isFeature():
                        stringBuffer.append(StringUtil.getInstance().toString(featureInterface))
                        stringBuffer.append(HAS_KEY)
                        stringBuffer.appendint(featureInterface.getHashtable().size())
                        stringBuffer.append(RESOURCES_LABEL)
            raise newJException("Exception", stringBuffer.toString())
        else:
            let stringBuffer: StringMaker = newStringMaker()
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    featureInterface = FeatureResourceAnimationInterfaceFactoryInterface(JObject(list.objectArray[index]))
                    stringBuffer.append(featureInterface.toString())
                    stringBuffer.append(CommonSeps.getInstance().SPACE)
            let `result`: string = stringBuffer.toString()
            stringBuffer.delete(0, stringBuffer.length())
            raise newJException("Exception", stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(`result`).toString())

when declared(newFeaturedAnimationInterfaceFactoryInterfaceFactoryHook0):
    newFeaturedAnimationInterfaceFactoryInterfaceFactoryHook0 = proc (): FeaturedResourceFactory = newFeaturedAnimationInterfaceFactoryInterfaceFactory()

